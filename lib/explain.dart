import 'package:flutter/material.dart';
import 'package:leafcare/treatment.dart';

class Explain extends StatefulWidget {
  const Explain({super.key});

  @override
  State<Explain> createState() => _ExplainState();
}

class _ExplainState extends State<Explain> {
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
              child: Center(
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
          Row(
            children: [
              TextButton(
                child: Icon(
                  Icons.play_arrow_rounded,
                  color: Color.fromARGB(255, 70, 138, 73),
                  size: 40,
                ),
                onPressed: () {},
              ),
              const Text(
                "Symptoms ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF056839),
                  fontSize: 22,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w900,
                  height: 0,
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                width: 385,
                height: 255,
                decoration: ShapeDecoration(
                  color: Color(0x00242626),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFF056839)),
                    borderRadius: BorderRadius.circular(46),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text("1.ccccccccccccccccc"),
              )
            ],
          ),
          Row(
            children: [
              TextButton(
                child: Icon(
                  Icons.play_arrow_rounded,
                  color: Color.fromARGB(255, 70, 138, 73),
                  size: 40,
                ),
                onPressed: () {},
              ),
              const Text(
                "Causes ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF056839),
                  fontSize: 22,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w900,
                  height: 0,
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                width: 385,
                height: 255,
                decoration: ShapeDecoration(
                  color: Color(0x00242626),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFF056839)),
                    borderRadius: BorderRadius.circular(46),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text("1.ccccccccccccccccc"),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 180,
            height: 60,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF056839),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(38),
                ),
              ),
              child: const Text(
                'Treatment',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w800,
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Treatment();
                }));
              },
            ),
          ),
        ],
      )),
    );
  }
}
