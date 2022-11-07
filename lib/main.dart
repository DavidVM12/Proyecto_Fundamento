import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:fundamento/Screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(color: Colors.indigo, elevation: 0)),
      home: FutureBuilder(
        future: FlutterBluetoothSerial.instance.requestEnable(),
        builder: (context, future) {
          if (future.connectionState == ConnectionState.waiting) {
            return const Scaffold(
              body: SizedBox(
                height: double.infinity,
                child: Center(
                  child: Icon(
                    Icons.bluetooth_disabled,
                    size: 200.0,
                    color: Colors.blue,
                  ),
                ),
              ),
            );
          } else {
            return LoginScreen();
          }
        },
        // child: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
