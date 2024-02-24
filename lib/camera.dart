import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:get/get.dart' show GetMaterialApp;

class CameraOrGallery extends StatefulWidget {
  const CameraOrGallery({super.key});

  @override
  State<CameraOrGallery> createState() => _CameraOrGalleryState();
}

class _CameraOrGalleryState extends State<CameraOrGallery> {
  late Future<File> imageFile;
  File? _image;
  String result = '';
  ImagePicker? imagePicker;
  selectPhotoFromGallery() async {
    // ignore: non_constant_identifier_names
    XFile? PickedFile =
        await imagePicker!.pickImage(source: ImageSource.gallery);
    _image = File(PickedFile!.path);
    setState(() {
      _image;
    });
  }

  caputerPhotoFromCamera() async {
    XFile? PickedFile =
        await imagePicker!.pickImage(source: ImageSource.camera);
    _image = (PickedFile!.path) as File?;
    setState(() {
      _image;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    imagePicker = ImagePicker();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          primary: true,
          title: const Text(
            "Select Your method Scan",
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w900,
              height: 0,
            ),
          ),
          backgroundColor: const Color(0xFF056839),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: caputerPhotoFromCamera,
                child: const Icon(
                  Icons.camera_alt,
                  size: 30,
                  color: Color(0xFF204C25),
                ),
              ),
              const Text(
                "Camera",
                style:
                    TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 100,
              ),
              TextButton(
                onPressed: selectPhotoFromGallery,
                child: const Icon(
                  Icons.photo_library,
                  size: 30,
                  color: Color(0xFF204C25),
                ),
              ),
              const Text(
                "Gallery",
                style:
                    TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
