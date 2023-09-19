import 'package:e_commerce_ui/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              height: 100,
              width: 300,
              color: Colors.black,
            ),
            const Text(
              'Play on Power',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Brand new sneakers and custom kicks made with premium quality',
              style: TextStyle(fontSize: 15),
            ),
            GestureDetector(
              onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage(),)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  width: double.maxFinite,
                  padding: const EdgeInsets.all(17),
                  child: const Text(
                    'Shop now',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
