import 'package:flutter/material.dart';
import 'package:fundamento/widgets/custom_appBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: const [
            //appbar personalizado de la carpeta de widgets
            SizedBox(
              height: 150,
              child: CustomAppBar(),
            ),
          ],
        ),
      ),
    );
  }
}
