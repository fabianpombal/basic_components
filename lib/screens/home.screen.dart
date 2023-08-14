import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de flutter'),
      ),
      body: ListView.separated(
        itemBuilder: (_, __) {
          return ListTile(
            title: const Text('Rutas'),
            trailing: const Icon(Icons.arrow_forward_ios),
            leading: const Icon(Icons.add_home_work_sharp),
            onTap: () {
              // final route = MaterialPageRoute(
              //     builder: (context) => const ListView1Screen());
              // Navigator.push(context, route);
              Navigator.pushNamed(context, 'listview1');
            },
          );
        },
        itemCount: 20,
        separatorBuilder: (_, __) {
          return const Divider();
        },
      ),
    );
  }
}
