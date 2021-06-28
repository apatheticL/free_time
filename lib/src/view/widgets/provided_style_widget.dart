import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freetime/src/business_logic/helper/constants/route_constant.dart';
import 'package:freetime/src/view/home/home_view.dart';
import 'package:freetime/src/view/notes/add_notes/add_notes_view.dart';
import 'package:freetime/src/view/notes/note_detail_view.dart';
import 'package:freetime/src/view/notification/notification_view.dart';
import 'package:freetime/src/view/reminder/reminder_view.dart';
import 'package:freetime/src/view/setting/setting_main_view.dart';
import 'package:freetime/src/view/widgets/dashboard_view.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class ProvidedStyleExample extends StatefulWidget {
  final BuildContext menuScreenContext;

  const ProvidedStyleExample({Key key, this.menuScreenContext}) : super(key: key);
  @override
  _ProvidedStyleExampleState createState() => _ProvidedStyleExampleState();
}

class _ProvidedStyleExampleState extends State<ProvidedStyleExample> {
  PersistentTabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }
  List<Widget> _buildScreens() {
    return [
      HomeView(),
      ReminderView(),
      AddNoteView(),
      NotificationMainView(),
      SettingMainView()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: "Home",
        activeColorPrimary: Colors.blueAccent,
        inactiveColorPrimary: Colors.grey,
        inactiveColorSecondary: Colors.blueAccent,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: RouteConstant.ROOT,
          routes: {
            RouteConstant.NOTE_DETAIL: (context) => NoteDetailView(),
            RouteConstant.ADD_NEW_NOTE: (context) => AddNoteView(),
          },
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.search),
        title: ("Search"),
        activeColorPrimary: Colors.blueAccent,
        inactiveColorPrimary: Colors.grey,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: RouteConstant.ROOT,
          routes: {
            // RouteConstant.REMINDER: (context) => ReminderView(),
          },
        ),
      ),
      PersistentBottomNavBarItem(
          icon: Icon(Icons.add),
          iconSize: 30,
          activeColorPrimary: Colors.blueAccent,
          activeColorSecondary: Colors.white,
          inactiveColorPrimary: Colors.white,
          routeAndNavigatorSettings: RouteAndNavigatorSettings(
            initialRoute: '/',
            routes: {
              // RouteConstant.ADD_NEW_NOTE: (context) => AddNoteView(),
            },
          ),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.notification_important),
        title: ("Notification"),
        activeColorPrimary: Colors.blueAccent,
        inactiveColorPrimary: Colors.grey,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: '/',
          routes: {
            // RouteConstant.NOTIFICATION_VIEW :(context) => NOtificationMainView()
          },
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.settings),
        title: ("Settings"),
        activeColorPrimary: Colors.blueAccent,
        inactiveColorPrimary: Colors.grey,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: '/',
          routes: {
            // RouteConstant.HOME: (context) => HomeView(),
            // RouteConstant.REMINDER: (context) => ReminderView(),
          },
        ),
      ),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(title: const Text('Navigation Bar Demo')),
        // drawer: Drawer(
        //   child: Center(
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: <Widget>[
        //         const Text('This is the Drawer'),
        //       ],
        //     ),
        //   ),
        // ),
        body: PersistentTabView(
          context,
          controller: _controller,
          screens: _buildScreens(),
          items: _navBarsItems(),
          confineInSafeArea: true,
          backgroundColor: Colors.white,
          handleAndroidBackButtonPress: true,
          resizeToAvoidBottomInset: true,
          stateManagement: true,
          navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0
              ? 0.0
              : kBottomNavigationBarHeight,
          hideNavigationBarWhenKeyboardShows: true,
          margin: EdgeInsets.all(0.0),
          popActionScreens: PopActionScreensType.all,
          bottomScreenMargin: 0.0,
          // onWillPop: (context) async {
          //   await showDialog(
          //     context: context,
          //     useSafeArea: true,
          //     builder: (context) => Container(
          //       height: 50.0,
          //       width: 50.0,
          //       color: Colors.white,
          //       child: ElevatedButton(
          //         child: Text("Close"),
          //         onPressed: () {
          //           Navigator.pop(context);
          //         },
          //       ),
          //     ),
          //   );
          //   return false;
          // },
          selectedTabScreenContext: (context) {

          },
          hideNavigationBar: false,
          decoration: NavBarDecoration(
              colorBehindNavBar: Colors.indigo,
              borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20) )),
          popAllScreensOnTapOfSelectedTab: true,
          itemAnimationProperties: ItemAnimationProperties(
            duration: Duration(milliseconds: 400),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: ScreenTransitionAnimation(
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(milliseconds: 200),
          ),
          navBarStyle:
          NavBarStyle.style15, // Choose the nav bar style with this property
        ),
      ),
    );
  }
}
