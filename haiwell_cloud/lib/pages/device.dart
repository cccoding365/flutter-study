import 'package:flutter/material.dart';

class Device extends StatelessWidget {
  const Device({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.search),
        centerTitle: true,
        title: const Text('设备'),
        actions: const [Icon(Icons.add)],
      ),
    );
  }
}
