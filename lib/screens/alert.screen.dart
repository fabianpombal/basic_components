import 'package:flutter/material.dart';

class AlertScreen extends StatefulWidget {
  const AlertScreen({super.key});

  @override
  State<AlertScreen> createState() => _AlertScreenState();
}

class _AlertScreenState extends State<AlertScreen> {
void displayDialog(BuildContext context){
  showDialog(context: context, builder: (context){
    return AlertDialog(
      elevation: 5,
      content:  Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Que quieres hacer'),
          Row(
            children: [
              TextButton(onPressed: (){}, child: const Text('Ok')),
              TextButton(onPressed: (){}, child: const Text('Dismiss')),

            ],
          )
        ],
      ),
    );
  },
  barrierDismissible: true);
}

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: const Center(
        child: Text('Alert Screen')
      ),
      floatingActionButton: FloatingActionButton(onPressed: () => displayDialog(context) ,
      child: const Icon(Icons.close),
      ),
    );
  }
}