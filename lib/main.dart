import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // enlever le "debug"
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        primaryColor: Colors.deepOrange,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child:Column(
          children: [
            DrawerHeader(child:Row(
                children: [CircleAvatar
                  (backgroundImage: AssetImage("lib/image/download.jpg"),)], ),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.white,Theme.of(context).primaryColor])
            ),)
          ,ListTile(
              title: Text("Home"),
            )],
        )
      ),
      appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: const Center(
        child: Text(
          "Home Page",
          style: TextStyle(fontSize: 33),
        ),
      ),
    );
  }
}
