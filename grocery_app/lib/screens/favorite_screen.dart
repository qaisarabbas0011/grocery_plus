import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite Screen"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed("favorite");
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => FavoriteScreen()));
            },
            icon: const Icon(Icons.favorite)),
        ],
      ),
    );
  }
}