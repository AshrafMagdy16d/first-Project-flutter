import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 142, 72),
        leading: Icon(Icons.menu),
        title: Text("Home Screen"),
        centerTitle: true,
        actions: [
          Icon(Icons.search),
          IconButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("سبح بحمد ربك", style: TextStyle(fontSize: 50)),
            Text("$counter", style: TextStyle(fontSize: 50)),
          ],
        ),
      ),
    );
  }
}
