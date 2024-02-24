import 'package:flutter/material.dart';

class Treatment extends StatefulWidget {
  const Treatment({super.key});

  @override
  State<Treatment> createState() => _TreatmentState();
}

class _TreatmentState extends State<Treatment> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 410,
                height: 70,
                decoration: ShapeDecoration(
                  color: const Color(0xFF056839),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: const Center(
                  child: Text(
                    "Disease_Name",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w900,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ),
            Stack(
              children: [
                Center(
                  child: Container(
                    width: 350,
                    height: 110,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFF056839)),
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                  ),
                ),
                const Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Scientific name:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF056839),
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w900,
                            height: 0,
                          ),
                        ),
                      ),
                      Text(
                        "data",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF2F7346),
                          fontSize: 20,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w900,
                          height: 2,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Stack(
              children: [
                Center(
                  child: Container(
                    width: 350,
                    height: 110,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFF056839)),
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                  ),
                ),
                const Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Trade name:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF056839),
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w900,
                            height: 0,
                          ),
                        ),
                      ),
                      Text(
                        "data",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF2F7346),
                          fontSize: 20,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w900,
                          height: 2,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Stack(
              children: [
                Center(
                  child: Container(
                    width: 350,
                    height: 208,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFF056839)),
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                  ),
                ),
                const Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'How to use Treatment',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF056839),
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w900,
                            height: 0,
                          ),
                        ),
                      ),
                      Text(
                        "data",
                        style: TextStyle(
                          color: Color(0xFF2F7346),
                          fontSize: 20,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w900,
                          height: 2,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Stack(
              children: [
                Center(
                  child: Container(
                    width: 350,
                    height: 208,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFF056839)),
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                  ),
                ),
                const Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'safety precautions',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF056839),
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w900,
                            height: 0,
                          ),
                        ),
                      ),
                      Text(
                        "data",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF2F7346),
                          fontSize: 20,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w900,
                          height: 2,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
