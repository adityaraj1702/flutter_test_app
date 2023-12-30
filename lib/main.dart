import 'package:flutter/material.dart';
// import 'package:flutter_test_app/on_boarding.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: PersistentTabView(
          context,
          backgroundColor: Colors.blue,
          screens: const [
            Home(),
            Orders(),
            Settings(),
            Profile(),
            Services(),
          ],
          items: [
            PersistentBottomNavBarItem(
              icon: const Icon(Icons.home),
              title: "Home",
              activeColorPrimary: Colors.white,
              activeColorSecondary: Colors.black,
              inactiveColorPrimary: Colors.grey[400],
            ),
            PersistentBottomNavBarItem(
              icon: const Icon(Icons.trolley),
              title: "Orders",
              activeColorPrimary: Colors.white,
              activeColorSecondary: Colors.black,
              inactiveColorPrimary: Colors.grey[400],
            ),
            PersistentBottomNavBarItem(
              icon: const Icon(Icons.settings),
              title: "Settings",
              activeColorPrimary: Colors.white,
              activeColorSecondary: Colors.black,
              inactiveColorPrimary: Colors.grey[400],
            ),
            PersistentBottomNavBarItem(
              icon: const Icon(Icons.person),
              title: "Profile",
              activeColorPrimary: Colors.white,
              activeColorSecondary: Colors.black,
              inactiveColorPrimary: Colors.grey[400],
            ),
            PersistentBottomNavBarItem(
              icon: const Icon(Icons.home_repair_service),
              title: "Services",
              activeColorPrimary: Colors.white,
              activeColorSecondary: Colors.black,
              inactiveColorPrimary: Colors.grey[400],
            ),
          ],
          decoration: NavBarDecoration(
            borderRadius: BorderRadius.circular(10),
            colorBehindNavBar: Colors.white,
          ),
          navBarStyle: NavBarStyle.style15,
          screenTransitionAnimation: const ScreenTransitionAnimation(
            animateTabTransition: true,
            curve: Curves.easeInExpo,
            duration: Duration(milliseconds: 200),
          ),
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
    );
  }
}

class Orders extends StatelessWidget {
  const Orders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Orders"),
      ),
    );
  }
}

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
    );
  }
}

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Services"),
      ),
    );
  }
}
