// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  bool _obscurePassword = true;
  bool confrimpass = true;
  String selectedGender = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(children: [
          const Stack1(),
          ListView(
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
                  'Register',
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
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFF056839),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          hintText: 'First Name',
                          hintStyle: const TextStyle(
                            color: Color(0xFF056839),
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w800,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFF056839),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          hintText: 'Last Name',
                          hintStyle: const TextStyle(
                            color: Color(0xFF056839),
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w800,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF056839),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    hintText: 'User name',
                    hintStyle: const TextStyle(
                      color: Color(0xFF056839),
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w800,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFF056839),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          hintText: 'Gender',
                          hintStyle: const TextStyle(
                            color: Color(0xFF056839),
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w800,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        readOnly: true,
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text('Select Gender'),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Radio(
                                      groupValue: selectedGender,
                                      value: 'Male',
                                      onChanged: (value) {
                                        setState(() {
                                          selectedGender = value as String;
                                        });
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                    const Text('Male'),
                                    Radio(
                                      groupValue: selectedGender,
                                      value: 'Female',
                                      onChanged: (value) {
                                        setState(() {
                                          selectedGender = value as String;
                                        });
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                    const Text('Female'),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFF056839),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          hintText: 'Birthday: d/m/y',
                          hintStyle: const TextStyle(
                            color: Color(0xFF056839),
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w800,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFF056839),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        hintText: 'Faculty',
                        hintStyle: const TextStyle(
                          color: Color(0xFF056839),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w800,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    TextField(
                      obscureText: _obscurePassword,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFF056839),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        hintText: 'Password',
                        hintStyle: const TextStyle(
                          color: Color(0xFF056839),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w800,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscurePassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscurePassword = !_obscurePassword;
                            });
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    TextField(
                      obscureText: confrimpass,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFF056839),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        hintText: 'Confirm Password',
                        hintStyle: const TextStyle(
                          color: Color(0xFF056839),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w800,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        suffixIcon: IconButton(
                          icon: Icon(
                            confrimpass
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              confrimpass = !confrimpass;
                            });
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 48.0,
                    ),
                    SizedBox(
                      height: 48,
                      width: 120,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(38),
                          ),
                        ),
                        child: const Text(
                          'Sine up',
                          style: TextStyle(
                            color: Color(0xFF056839),
                            fontSize: 15,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        onPressed: () {
                          if (_passwordController.text ==
                              _confirmPasswordController.text) {
                          } else {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Error'),
                                  content: const Text(
                                      'Password and Confirm Password do not match.'),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text('OK'),
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 40,
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
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
                  ],
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}

class Stack1 extends StatelessWidget {
  const Stack1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          opacity: 0.3,
          fit: BoxFit.fill,
          image: AssetImage(
              'assets/images/close-up-florist-holding-smartphone.jpg'),
        )));
  }
}
