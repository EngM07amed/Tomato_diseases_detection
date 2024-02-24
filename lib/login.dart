import 'package:flutter/material.dart';
import 'package:leafcare/register.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  bool pass = true;
  Icon icon = const Icon(Icons.remove_red_eye_outlined, color: Colors.black);
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
            children: [
              Center(
                child: Image.asset(
                  'assets/images/480-[Converted].png',
                  width: 180,
                  height: 180,
                ),
              ),
              const Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Color(0xFF056839),
                    fontSize: 28,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w800,
                    height: 0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18)),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Color(0xFF056839), width: 2),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    hintText: ' User name',
                    hintStyle: const TextStyle(
                      color: Color(0xFF056839),
                      fontSize: 18,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w800,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                child: TextField(
                  obscureText: pass,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Color(0xFF056839), width: 2),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    hintText: ' password',
                    suffixIcon: IconButton(
                      icon: icon,
                      onPressed: () {
                        setState(() {
                          pass = !pass;
                          if (pass == false) {
                            icon = const Icon(Icons.visibility_off,
                                color: Colors.black);
                          } else {
                            icon = const Icon(Icons.remove_red_eye_outlined,
                                color: Colors.black);
                          }
                        });
                      },
                    ),
                    hintStyle: const TextStyle(
                      color: Color(0xFF056839),
                      fontSize: 18,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w800,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 47,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forget password',
                      style: TextStyle(
                        color: Color(0xFF2F7346),
                        fontSize: 11,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 100,
                height: 30,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(38),
                    ),
                  ),
                  child: const Text(
                    'login',
                    style: TextStyle(
                      color: Color(0xFF056839),
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              SizedBox(
                height: 50,
                width: 200,
                child: MaterialButton(
                  onPressed: () {},
                  color: const Color(0xFF157145),
                  height: 50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        ' or login with ',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          'images/download.png',
                          width: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Page3();
                  }));
                },
                child: const Text(
                  'Creat account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
