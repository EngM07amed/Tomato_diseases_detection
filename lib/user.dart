import 'package:flutter/material.dart';

class CheckUsers extends StatelessWidget {
  const CheckUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Text(
              'Select user type',
              style: TextStyle(
                color: Color(0xFF056839),
                fontSize: 30,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w800,
                height: 4,
              ),
            ),
            Center(
              child: InkWell(
                child: CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('assets/images/_61.jpg'),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Student",
              style: TextStyle(
                color: Color(0xFF056839),
                fontSize: 30,
                fontFamily: 'inter',
                fontWeight: FontWeight.w800,
                height: 2,
              ),
            ),
            InkWell(
              child: CircleAvatar(
                radius: 100,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/images/Group.png'),
                ),
              ),
            ),
            Text(
              "Farmer",
              style: TextStyle(
                  color: Color(0xFF056839),
                  fontSize: 30,
                  fontFamily: 'inter',
                  fontWeight: FontWeight.w800,
                  height: 2),
            ),
          ],
        ),
      ),
    );
  }
}
