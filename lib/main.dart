import 'package:flutter/material.dart';
import 'package:foodzy/login_page.dart';
import 'package:get/get.dart';
import 'package:simple_animations/animation_builder/play_animation_builder.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Image.asset('assets/Restaurant.png'),
              const SizedBox(
                height: 40,
              ),
              const Text(
                textAlign: TextAlign.center,
                'Enjoy the best restuarants or get what you need from neadby stores, delivered',
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 70,
              ),
              PlayAnimationBuilder<double>(
                tween: Tween(begin: 140, end: 400),
                duration: const Duration(seconds: 2),
                builder: (context, value, child) {
                  return InkWell(
                    onTap: () {
                      Get.to(() => const LoginPage());
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFFFE724C),
                          borderRadius: BorderRadius.circular(12)),
                      height: 55,
                      width: value,
                      child: const Center(
                          child: Text(
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                        'Get Started',
                      )),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
