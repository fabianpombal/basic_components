import '../screens/screens.dart';

class Routes {
  static final routes = {
    'listview1': (context) => const ListView1Screen(),
    'listview2': (context) => const ListView2Screen(),
    'home': (context) => const HomeScreen(),
    'card': (context) => const CardScreen()
  };

  static const initialRoute = 'card';
  //TODO: hacer onGenerateRoute
}
