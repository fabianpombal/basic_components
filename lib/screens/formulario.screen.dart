import 'package:flutter/material.dart';

class FormularioScreen extends StatefulWidget {
  const FormularioScreen({super.key});

  @override
  State<FormularioScreen> createState() => _FormularioScreenState();
}

class _FormularioScreenState extends State<FormularioScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final Map<String, String> formValues = {
    'name': '',
    'password': ''
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulario'),
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const CustomFormField(hintText: 'Nombre de usuario', labelText: 'Nombre',),
                const SizedBox(height: 30,),
                const CustomFormField(hintText: 'password', labelText: 'password',),
                const SizedBox(height: 30,),
                ElevatedButton(onPressed: (){}, child: Text('Enviar'))
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomFormField extends StatelessWidget {
  final String hintText;
  final String labelText;
  const CustomFormField({
    super.key, required this.hintText, required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      validator: (value){
        if(value==null){
          return 'Este campo es requerido';
        }
        return value.length < 2 ? '+ de 2 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: const InputDecoration(
        hintText: 'Nombre de usuario',
        labelText: 'Nombre',
        helperText: 'Solo letras'
      ),
    );
  }
}