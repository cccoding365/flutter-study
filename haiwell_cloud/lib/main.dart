import 'package:flutter/material.dart';
import 'package:haiwell_cloud/pages/device.dart';
import 'package:haiwell_cloud/pages/home.dart';
import 'package:haiwell_cloud/pages/message.dart';
import 'package:haiwell_cloud/pages/person.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const Home(),
    const Device(),
    const Message(),
    const Person(),
  ];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.search),
        title: const Text('Haiwell Cloud'),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onTap,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.museum_sharp), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.devices_sharp), label: '设备'),
          BottomNavigationBarItem(icon: Icon(Icons.light_sharp), label: '消息'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin_rounded), label: '我的'),
        ],
      ),
    );
  }
}
