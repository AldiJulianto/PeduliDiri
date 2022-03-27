import 'package:flutter/material.dart';
import 'views/dasboard_view.dart';
import 'views/landing_view.dart';
import 'views/login_view.dart';
import 'views/register_view.dart';
import 'package:peduli_diri/utility/constans.dart';

class RouterGenerator {
  static Route <dynamic> generateRoute(RouteSettings settings){
    switch (settings.name) {
      case landingRoute:
        return MaterialPageRoute(builder: (_) => LandingView());
      case loginRoute:
        return MaterialPageRoute(builder: (_) => LoginView());
      case RegisterRoute:
        return MaterialPageRoute(builder: (_) => RegisterView());
      case DasboardRoute:
        return MaterialPageRoute(builder: (_) => DasboardView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No Route Found ${settings.name}'),
            ),
          )
        );
    }
  }
}