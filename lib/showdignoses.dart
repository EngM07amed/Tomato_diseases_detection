import 'package:flutter/material.dart';
import 'package:leafcare/explain.dart';
import 'package:leafcare/treatment.dart';

class ShowImage extends StatefulWidget {
  const ShowImage({super.key});

  @override
  State<ShowImage> createState() => _ShowImageState();
}

class _ShowImageState extends State<ShowImage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: 300,
              width: 300,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/085cbe78-1d5c-45eb-877f-f409526032d5___GH_HL Leaf 469.JPG'),
                      fit: BoxFit.fill)),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: BorderSide(color: Color(0xFF056839)),
                ),
                dense: true,
                minVerticalPadding: 60,
                leading: const Text(
                  "Diseases Name:",
                  style: TextStyle(
                    color: Color(0xFF056839),
                    fontSize: 22,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w900,
                    height: 0,
                  ),
                ),
                title: const Text(
                  "healthy",
                  style: TextStyle(
                    color: Color(0xFF056839),
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w900,
                    height: 0,
                  ),
                ),
                trailing: Image.asset('assets/iconm.png'),
              ),
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
                  'Explain',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w800,
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Explain();
                  }));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
