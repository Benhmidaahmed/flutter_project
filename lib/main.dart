import 'package:flutter/material.dart';

// Point d'entrée principal de l'application
void main() {
  runApp(const MyApp());
}

// Widget racine de l'application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Enlève le bandeau "debug" en haut à droite
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        primaryColor: Colors.deepOrange,
        useMaterial3: true, // Utilise la version Material Design 3
      ),
      home: const HomePage(), // Définit la page d'accueil
    );
  }
}

// Page d'accueil de l'application
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Menu latéral
      drawer: Drawer(
        child: Column(
          children: [
            // En-tête du Drawer avec deux images en cercle
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.white, Theme.of(context).primaryColor],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("lib/image/download.jpg"),
                    radius: 60,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("lib/image/download.jpg"),
                    radius: 30,
                  ),
                ],
              ),
            ),

            // Liste des éléments de navigation
            ListTile(
              title: const Text("Home"),
              leading: const Icon(Icons.home),
              trailing: const Icon(Icons.arrow_forward),
            ),
            const Divider(color: Colors.red),
            ListTile(
              title: const Text("Counter"),
              leading: const Icon(Icons.calculate),
              trailing: const Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: const Text("Chat"),
              leading: const Icon(Icons.chat),
              trailing: const Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),

      // Barre supérieure de la page
      appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),

      // Contenu principal de la page
      body: const Center(
        child: Text(
          "Home Page",
          style: TextStyle(fontSize: 33),
        ),
      ),
    );
  }
}
