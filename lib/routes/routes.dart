import 'dart:js';

import '../screens/screens.dart';

class Routes {
  static final routes = {
    'listview1': (context) => const ListView1Screen(),
    'listview2': (context) => const ListView2Screen(),
    'home': (context) => const HomeScreen(),
    'card': (context) => const CardScreen(),
    'alert': (context) => const AlertScreen(),
    'form': (context) => const FormularioScreen()
  };

  static const initialRoute = 'form';
  //TODO: hacer onGenerateRoute
}
