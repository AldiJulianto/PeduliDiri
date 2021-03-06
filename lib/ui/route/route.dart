import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/form_add_screens/form_add_view.dart';
import 'package:peduli_diri/ui/form_data_screens/SearchView.dart';
import 'package:peduli_diri/ui/form_data_screens/form_data_view.dart';
import 'package:peduli_diri/ui/form_data_screens/testShowData.dart';
import 'package:peduli_diri/utility/route_name.dart';
import '../dasboard_screens/dasboard_view.dart';
import '../landing_screens/landing_view.dart';
import '../login_screens/login_view.dart';
import '../register_screens/register_view.dart';

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
      // case TestRoute:
      //   return MaterialPageRoute(builder: (_) => testCard());
      case FormAddRoute:
        return MaterialPageRoute(builder: (_) => FormAddView());
      case FormDataRoute:
        return MaterialPageRoute(builder: (_) => FormDataView());
      case TestShowRoute:
        return MaterialPageRoute(builder: (_) => SearchData());
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