import 'dart:io';
import 'dart:math';

import 'package:archive/archive_io.dart';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;
import 'package:reboot_common/common.dart';

const String rebootDownloadUrl =
    "https://nightly.link/Milxnor/Project-Reboot-3.0/workflows/msbuild/main/Release.zip";
final File rebootDllFile = File("${assetsDirectory.path}\\dlls\\reboot.dll");

List<String> createRebootArgs(String username, String password, bool host, String additionalArgs) {
    if(password.isEmpty) {
        username = '${_parseUsername(username, host)}@projectreboot.dev';
    }

    password = password.isNotEmpty ? password : "Rebooted";
    var args = [
        "-epicapp=Fortnite",
        "-epicenv=Prod",
        "-epiclocale=en-us",
        "-epicportal",
        "-skippatchcheck",
        "-nobe",
        "-fromfl=eac",
        "-fltoken=3db3ba5dcbd2e16703f3978d",
        "-caldera=eyJhbGciOiJFUzI1NiIsInR5cCI6IkpXVCJ9.eyJhY2NvdW50X2lkIjoiYmU5ZGE1YzJmYmVhNDQwN2IyZjQwZWJhYWQ4NTlhZDQiLCJnZW5lcmF0ZWQiOjE2Mzg3MTcyNzgsImNhbGRlcmFHdWlkIjoiMzgxMGI4NjMtMmE2NS00NDU3LTliNTgtNGRhYjNiNDgyYTg2IiwiYWNQcm92aWRlciI6IkVhc3lBbnRpQ2hlYXQiLCJub3RlcyI6IiIsImZhbGxiYWNrIjpmYWxzZX0.VAWQB67RTxhiWOxx7DBjnzDnXyyEnX7OljJm-j2d88G_WgwQ9wrE6lwMEHZHjBd1ISJdUO1UVUqkfLdU5nofBQ",
        "-AUTH_LOGIN=$username",
        "-AUTH_PASSWORD=${password.isNotEmpty ? password : "Rebooted"}",
        "-AUTH_TYPE=epic"
    ];

    if(host){
        args.addAll([
            "-nullrhi",
            "-nosplash",
            "-nosound",
        ]);
    }

    if(additionalArgs.isNotEmpty){
        args.addAll(additionalArgs.split(" "));
    }

    return args;
}

String _parseUsername(String username, bool host) {
    if(host) {
        return "Player${Random().nextInt(1000)}";
    }

    if (username.isEmpty) {
        return kDefaultPlayerName;
    }

    username = username.replaceAll(RegExp("[^A-Za-z0-9]"), "").trim();
    if(username.isEmpty){
        return kDefaultPlayerName;
    }

    return username;
}


Future<int> downloadRebootDll(String url, int? lastUpdateMs, {int hours = 24, bool force = false}) async {
    Directory? outputDir;
    var now = DateTime.now();
    try {
        var lastUpdate = await _getLastUpdate(lastUpdateMs);
        var exists = await rebootDllFile.exists();
        if (!force && lastUpdate != null && now.difference(lastUpdate).inHours <= hours && exists) {
            return lastUpdateMs!;
        }

        var response = await http.get(Uri.parse(rebootDownloadUrl));
        outputDir = await installationDirectory.createTemp("reboot_out");
        var tempZip = File("${outputDir.path}\\reboot.zip");
        await tempZip.writeAsBytes(response.bodyBytes);
        await extractFileToDisk(tempZip.path, outputDir.path);
        var rebootDll = File(outputDir.listSync().firstWhere((element) => path.extension(element.path) == ".dll").path);
        if (!exists || sha1.convert(await rebootDllFile.readAsBytes()) != sha1.convert(await rebootDll.readAsBytes())) {
            await rebootDllFile.writeAsBytes(await rebootDll.readAsBytes());
        }

        return now.millisecondsSinceEpoch;
    } finally{
        if(outputDir != null) {
            delete(outputDir);
        }
    }
}

Future<DateTime?> _getLastUpdate(int? lastUpdateMs) async {
  return lastUpdateMs != null
      ? DateTime.fromMillisecondsSinceEpoch(lastUpdateMs)
      : null;
}
