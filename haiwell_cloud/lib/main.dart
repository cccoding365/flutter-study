import 'package:flutter/material.dart';
import 'package:haiwell_cloud/pages/home.dart';
import 'package:haiwell_cloud/pages/device.dart';
import 'package:haiwell_cloud/pages/message.dart';
import 'package:haiwell_cloud/pages/person.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      theme: ThemeData(primaryColor: Colors.blue),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const Home(),
    const Device(),
    const Message(),
    const Person(),
  ];

  final List<BottomNavigationBarItem> _bottomNavigationBarItems = [
    const BottomNavigationBarItem(icon: Icon(Icons.museum_sharp), label: '首页'),
    const BottomNavigationBarItem(icon: Icon(Icons.devices_sharp), label: '设备'),
    const BottomNavigationBarItem(icon: Icon(Icons.message_outlined), label: '消息'),
    const BottomNavigationBarItem(icon: Icon(Icons.person_pin_outlined), label: '我的'),
  ];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _clickAction() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: _bottomNavigationBarItems,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onTap,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _clickAction,
        child: const Icon(Icons.add),
      ),
    );
  }
}
