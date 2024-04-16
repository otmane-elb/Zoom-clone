import 'package:zoom_clone/screens/home_screen.dart';
import 'package:zoom_clone/screens/vedio_call_screen.dart';

import '../screens/login_screen.dart';

var routes = {
  '/login': (context) => const LoginScreen(),
  '/home': (context) => const HomeScreen(),
  '/vedio-call': (context) => const VedioCallScreen(),
};
