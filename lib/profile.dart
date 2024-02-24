import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  opacity: 0.3,
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'assets/images/close-up-florist-holding-smartphone.jpg',
                  ),
                ),
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 226,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    ),
                  ),
                  width: double.infinity,
                  height: 460,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'user name',
                          style: TextStyle(
                            color: Color(0xFF2F7346),
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'State',
                          style: TextStyle(
                            color: Color(0xFF2F7346),
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 300,
                        height: 40,
                        color: const Color(0xFF056839),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF056839),
                          ).copyWith(
                            minimumSize:
                                MaterialStateProperty.all(const Size(300, 40)),
                          ),
                          onPressed: () {},
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Profile setting',
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(width: 100),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        width: 300,
                        height: 40,
                        color: const Color(0xFF056839),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF056839),
                          ).copyWith(
                            minimumSize:
                                MaterialStateProperty.all(const Size(300, 40)),
                          ),
                          onPressed: () {},
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Change password',
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(width: 60),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        width: 300,
                        height: 40,
                        color: const Color(0xFF056839),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF056839),
                          ).copyWith(
                            minimumSize:
                                MaterialStateProperty.all(const Size(300, 40)),
                          ),
                          onPressed: () {},
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Profile setting',
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(width: 100),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        width: 300,
                        height: 40,
                        color: const Color(0xFF056839),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF056839),
                          ).copyWith(
                            minimumSize:
                                MaterialStateProperty.all(const Size(300, 40)),
                          ),
                          onPressed: () {},
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'My diagnoses',
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(width: 100),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Positioned(
              top: 50,
              right: 50,
              child: Icon(
                Icons.add_alert_sharp,
                color: Color(0xFF056839),
                size: 30,
              ),
            ),
            Positioned(
              left: 160,
              top: 120,
              child: CircleAvatar(
                radius: 90,
                backgroundColor: Colors.black,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xFF056839),
                      width: 7,
                    ),
                  ),
                  child: Image.asset(
                    'assets/images/Ellipse.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xFF056839),
          child: const Icon(
            Icons.person,
            size: 40,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          height: 60,
          shape: const CircularNotchedRectangle(),
          color: const Color(0xFF056839),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.qr_code_scanner,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.home_filled,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
