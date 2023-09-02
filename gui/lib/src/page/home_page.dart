import 'dart:collection';

import 'package:fluent_ui/fluent_ui.dart' hide showDialog;
import 'package:get/get.dart';
import 'package:reboot_launcher/src/page/browse_page.dart';
import 'package:reboot_launcher/src/page/authenticator_page.dart';
import 'package:reboot_launcher/src/page/matchmaker_page.dart';
import 'package:reboot_launcher/src/page/play_page.dart';
import 'package:reboot_launcher/src/page/settings_page.dart';
import 'package:reboot_launcher/src/util/os.dart';
import 'package:reboot_launcher/src/widget/home/pane.dart';
import 'package:reboot_launcher/src/widget/home/profile.dart';

import 'package:reboot_launcher/src/controller/settings_controller.dart';
import 'package:reboot_launcher/src/widget/os/border.dart';
import 'package:reboot_launcher/src/widget/os/title_bar.dart';
import 'package:window_manager/window_manager.dart';
import 'hosting_page.dart';
import 'info_page.dart';

const int pagesLength = 7;
final RxInt pageIndex = RxInt(0);
final Queue<int> _pagesStack = Queue();
final List<GlobalKey> _pageKeys = List.generate(pagesLength, (index) => GlobalKey());
GlobalKey get pageKey => _pageKeys[pageIndex.value];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WindowListener, AutomaticKeepAliveClientMixin {
  static const double _kDefaultPadding = 12.0;

  final SettingsController _settingsController = Get.find<SettingsController>();
  final GlobalKey _searchKey = GlobalKey();
  final FocusNode _searchFocusNode = FocusNode();
  final TextEditingController _searchController = TextEditingController();
  final RxBool _focused = RxBool(true);
  final RxBool _fullScreen = RxBool(false);

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    windowManager.show();
    windowManager.addListener(this);
    _searchController.addListener(_onSearch);
    super.initState();
  }

  void _onSearch() {
    // TODO: Implement
  }

  @override
  void dispose() {
    windowManager.removeListener(this);
    _searchFocusNode.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  void onWindowEnterFullScreen() {
    _fullScreen.value = true;
  }

  @override
  void onWindowLeaveFullScreen() {
    _fullScreen.value = false;
  }

  @override
  void onWindowFocus() {
    _focused.value = true;
  }

  @override
  void onWindowBlur() {
    _focused.value = false;
  }

  @override
  void onWindowResized() {
    _settingsController.saveWindowSize();
    super.onWindowResized();
  }

  @override
  void onWindowMoved() {
    windowManager.getPosition()
        .then((value) => _settingsController.saveWindowOffset(value));
    super.onWindowMoved();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Stack(
        children: [
          Obx(() => NavigationPaneTheme(
              data: NavigationPaneThemeData(
                backgroundColor: FluentTheme.of(context).micaBackgroundColor.withOpacity(0.9),
              ),
              child: NavigationView(
                  paneBodyBuilder: (pane, body) => Padding(
                      padding: const EdgeInsets.all(_kDefaultPadding),
                      child: SizedBox(
                        key: pageKey,
                        child: body
                      )
                  ),
                  appBar: NavigationAppBar(
                    height: 32,
                    title: _draggableArea,
                    actions: WindowTitleBar(focused: _focused()),
                    leading: _backButton,
                    automaticallyImplyLeading: false,
                  ),
                  pane: NavigationPane(
                    selected: pageIndex.value,
                    onChanged: (index) {
                      _pagesStack.add(pageIndex.value);
                      pageIndex.value = index;
                    },
                    menuButton: const SizedBox(),
                    displayMode: PaneDisplayMode.open,
                    items: _items,
                    header: const ProfileWidget(),
                    autoSuggestBox: _autoSuggestBox,
                    autoSuggestBoxReplacement: const Icon(FluentIcons.search),
                  ),
                  contentShape: const RoundedRectangleBorder(),
                  onOpenSearch: () => _searchFocusNode.requestFocus(),
                  transitionBuilder: (child, animation) => child
              )
          )),
          if (isWin11)
            Obx(() => !_fullScreen.value && _focused.value ? const WindowBorder() : const SizedBox())
        ]
    );
  }

  Widget get _backButton => Obx(() {
    pageIndex.value;
    return Button(
      style: ButtonStyle(
          padding: ButtonState.all(const EdgeInsets.only(top: 6.0)),
          backgroundColor: ButtonState.all(Colors.transparent),
          border: ButtonState.all(const BorderSide(color: Colors.transparent))
      ),
      onPressed: _pagesStack.isEmpty ? null : () => pageIndex.value = _pagesStack.removeLast(),
      child: const Icon(FluentIcons.back, size: 12.0),
    );
  });

  GestureDetector get _draggableArea => GestureDetector(
      onDoubleTap: () async => await windowManager.isMaximized() ? await windowManager.restore() : await windowManager.maximize(),
      onHorizontalDragStart: (event) => windowManager.startDragging(),
      onVerticalDragStart: (event) => windowManager.startDragging()
  );

  Widget get _autoSuggestBox => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: TextBox(
        key: _searchKey,
        controller: _searchController,
        placeholder: 'Find a setting',
        focusNode: _searchFocusNode,
        autofocus: true,
        suffix: Button(
            onPressed: null,
            style: ButtonStyle(
                backgroundColor: ButtonState.all(Colors.transparent),
                border: ButtonState.all(const BorderSide(color: Colors.transparent))
            ),
            child: Transform.flip(
              flipX: true,
              child: Icon(
                  FluentIcons.search,
                  size: 12.0,
                  color: FluentTheme.of(context).resources.textFillColorPrimary
              ),
            )
        )
    ),
  );

  List<NavigationPaneItem> get _items => [
    RebootPaneItem(
        title: const Text("Play"),
        icon: SizedBox.square(
            dimension: 24,
            child: Image.asset("assets/images/play.png")
        ),
        body: const PlayPage()
    ),
    RebootPaneItem(
        title: const Text("Host"),
        icon: SizedBox.square(
            dimension: 24,
            child: Image.asset("assets/images/host.png")
        ),
        body: const HostingPage()
    ),
    RebootPaneItem(
        title: const Text("Server Browser"),
        icon: SizedBox.square(
            dimension: 24,
            child: Image.asset("assets/images/browse.png")
        ),
        body: const BrowsePage()
    ),
    RebootPaneItem(
        title: const Text("Authenticator"),
        icon: SizedBox.square(
            dimension: 24,
            child: Image.asset("assets/images/auth.png")
        ),
        body: const AuthenticatorPage()
    ),
    RebootPaneItem(
        title: const Text("Matchmaker"),
        icon: SizedBox.square(
            dimension: 24,
            child: Image.asset("assets/images/matchmaker.png")
        ),
        body: const MatchmakerPage()
    ),
    RebootPaneItem(
        title: const Text("Info"),
        icon: SizedBox.square(
            dimension: 24,
            child: Image.asset("assets/images/info.png")
        ),
        body: const InfoPage()
    ),
    RebootPaneItem(
        title: const Text("Settings"),
        icon: SizedBox.square(
            dimension: 24,
            child: Image.asset("assets/images/settings.png")
        ),
        body: const SettingsPage()
    ),
  ];

  String get searchValue => _searchController.text;
}