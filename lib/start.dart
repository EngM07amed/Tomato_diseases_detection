import 'package:flutter/material.dart';
import 'package:leafcare/user.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                opacity: 0.3,
                fit: BoxFit.fill,
                image: AssetImage(
                    'assets/images/close-up-florist-holding-smartphone.jpg'))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/images/480-[Converted].png',
                width: 250,
                height: 250,
              ),
            ),
            const Center(
              child: Text(
                'Leaf Care',
                style: TextStyle(
                  color: Color(0xFF056839),
                  fontSize: 28,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w800,
                  height: 0,
                ),
              ),
            ),
            const SizedBox(
              height: 150,
            ),
            SizedBox(
              width: 180,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF056839),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(38),
                  ),
                ),
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Inter',
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CheckUsers()));
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
