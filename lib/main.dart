import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''), // English, no country code
        const Locale('es', 'MX'), 
        // ... other locales the app supports
      ],
      //home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),

      onGenerateRoute: (RouteSettings settings){  //Éste viene siendo un default para que si no existe la ruta nos mande acá

        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage()
        );

      },

    );
  }
}