import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kuziem/constants.dart';
import 'package:kuziem/controllers/auth_controller.dart';

class ProfilePic extends StatefulWidget {
  @override
  State<ProfilePic> createState() => _ProfilePicState();
}

class _ProfilePicState extends State<ProfilePic> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final AuthController _authController = AuthController();
  Uint8List? _image;
  List images = [];

  late String fileName;

  getProfilePics() async {
    final documents = await _firestore.collection("profilePics").get();
    documents.docs.forEach((doc) {
      setState(() {
        images.add(doc["image"]);
      });
    });
    print(images);
  }

  selectGalleryImage() async {
    Uint8List im = await _authController.pickProfileImage(ImageSource.gallery);
    setState(() {
      _image = im;
    });
  }

  selectCameraImage() async {
    Uint8List im = await _authController.pickProfileImage(ImageSource.camera);
    setState(() {
      _image = im;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    getProfilePics();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          _image != null
              ? CircleAvatar(
                  backgroundImage: MemoryImage(_image!),
                )
              : CircleAvatar(
                  backgroundColor: Colors.white,
                ),
          Positioned(
              right: -12,
              bottom: 0,
              child: InkWell(
                onTap: () {
                  selectGalleryImage();
                },
                child: Container(
                  padding: const EdgeInsets.all(0),
                  height: 46,
                  width: 46,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 236, 236, 236),
                      borderRadius: BorderRadius.circular(30)),
                  child: const Icon(Icons.edit),
                ),
              ))
        ],
      ),
    );
  }
}
