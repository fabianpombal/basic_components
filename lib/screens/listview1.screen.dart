import 'package:flutter/material.dart';

class ListView1Screen extends StatefulWidget {
  const ListView1Screen({super.key});

  @override
  State<ListView1Screen> createState() => _ListView1ScreenState();
}

class _ListView1ScreenState extends State<ListView1Screen> {
  final opciones = ['Lista1', 'Lista2', 'Lista3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de flutter'),
      ),
      body: ListView(
        children: [
          ...opciones
              .map((e) => ListTile(
                    title: Text(e),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ))
              .toList(),
          const Divider()
        ],
      ),
    );
  }
}
