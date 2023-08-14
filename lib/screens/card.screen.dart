import 'package:flutter/material.dart';
import 'package:important_components/theme/theme.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCard(),
          CustomImageCard(
            image: 'https://i.blogs.es/82d7ef/pokemon/1366_2000.webp',
          )
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            title: Text('Soy un titulo'),
            subtitle: Text(
                'Consectetur nisi enim consequat pariatur consequat minim ad officia dolor sunt. Voluptate magna nulla pariatur fugiat. Deserunt elit deserunt aliquip culpa exercitation eu dolore sunt sunt. Nostrud laborum reprehenderit officia voluptate do.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => print('Boton'),
                  child: Text('Cancel'),
                ),
                TextButton(
                    onPressed: () => print('Boton'), child: const Text('Ok'))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomImageCard extends StatelessWidget {
  final String image;
  const CustomImageCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Image(
            image: NetworkImage(image),
            width: double.infinity,
            height: 960,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
