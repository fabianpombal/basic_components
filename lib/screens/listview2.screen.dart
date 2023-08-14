import 'package:flutter/material.dart';

class ListView2Screen extends StatefulWidget {
  const ListView2Screen({super.key});

  @override
  State<ListView2Screen> createState() => _ListView2ScreenState();
}

class _ListView2ScreenState extends State<ListView2Screen> {
  final opciones = ['Lista1', 'Lista2', 'Lista3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de flutter'),
        elevation: 0,
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemBuilder: (_, int index) {
          return ListTile(
            title: Text(opciones[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => print(opciones[index]),
          );
        },
        itemCount: opciones.length,
        separatorBuilder: (_, __) {
          return const Divider();
        },
      ),
    );
  }
}
