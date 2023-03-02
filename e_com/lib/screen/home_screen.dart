import 'package:e_com/widgets/my_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("E-Com"),
      ),
      body: const Center(
        child: Text('Home screen'),
      ),

      drawer: const MyDrawer(),
    );
  }
}
