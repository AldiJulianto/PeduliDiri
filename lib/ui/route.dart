import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/views/add_data_view.dart';
import 'package:peduli_diri/ui/views/test_card.dart';
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
      case TestRoute:
        return MaterialPageRoute(builder: (_) => testCard());
      case AddRoute:
        return MaterialPageRoute(builder: (_) => AddFormVIew());
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