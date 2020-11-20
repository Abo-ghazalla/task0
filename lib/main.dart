import 'package:Task/screen/home_screen.dart';
import 'package:Task/provider/accounts_to_show.dart';
import 'package:Task/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AccountsToShow(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Task',
        theme: ThemeData(
          primaryColor: Color(0xFF6574CF),
          textTheme: TextTheme(
              headline1: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
              headline2: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              headline3: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              caption: TextStyle(color: Color(0xFF909CB4), fontSize: 15)),
        ),
        home: Builder(builder: (context) {
          SizeConfig().init(context);
          return HomeScreen();
        }),
      ),
    );
  }
}
