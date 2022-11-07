import 'package:flutter/material.dart';
import 'package:fundamento/Screens/home_screen.dart';
import 'package:fundamento/ui/input_decorations.dart';

import '../widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Container(
              height: 500,
              width: double.infinity,
              color: Colors.indigo,
            ),
            Column(
              children: const [
                SizedBox(height: 250),
                Text(
                  'Arduino Security',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const SizedBox(height: 350),
                Form(
                    child: CardContainer(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/logo-arduino.png',
                        scale: 4,
                      ),
                      TextFormField(
                        autocorrect: false,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecorations.authInputDecoration(
                            hintText: 'Pepitoperez12',
                            labelText: 'Usuario',
                            prefixIcon: Icons.person),
                      ),
                      const SizedBox(height: 30),
                      TextFormField(
                        autocorrect: false,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecorations.authInputDecoration(
                            hintText: '**********',
                            labelText: 'Contraseña',
                            prefixIcon: Icons.lock),
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0, backgroundColor: Colors.white),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => HomeScreen())));
                          },
                          child: CardContainer(
                              color: Colors.indigo,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Ingresar',
                                    style: TextStyle(
                                        fontSize: 27,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ))),
                      const SizedBox(height: 50)
                    ],
                  ),
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
