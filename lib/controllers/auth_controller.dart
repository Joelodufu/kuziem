import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AuthController {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  pickProfileImage(ImageSource source) async {
    final ImagePicker _imagePicker = ImagePicker();
    XFile? _file = await _imagePicker.pickImage(source: source);

    if (_file != null) {
      return await _file.readAsBytes();
    } else {
      print("No Image Picked");
    }
  }

  Future<String> signUpUser(
      String email, String fullName, String password) async {
    String res = "Some error occured";
    try {
      if (email.isNotEmpty && fullName.isNotEmpty && password.isNotEmpty) {
        //create user
        UserCredential cred = await auth.createUserWithEmailAndPassword(
            email: email, password: password);
        await _firestore.collection("users").doc(cred.user!.uid).set({
          'email': email,
          'fullName': fullName,
          'userId': cred.user!.uid,
          'address': '',
          'image': "",
          'phoneNumber': "",
          'facebookProfile': '',
          'instaProfile': '',
          'twitterProfile': '',
          'isATeacher': false,
          'myClasses': [],
          'myCourses': [],
        });
        res = "Account Created Succesfully for. Welcome to Kuziem";
      } else {
        res = "Please Fields must not be empty";
      }
    } catch (error) {
      // Check if the error is an instance of FirebaseAuthException
      if (error is FirebaseAuthException) {
        // Retrieve the error message from the FirebaseAuthException
        res = error.message!;
      } else {
        // Handle other types of errors, if necessary
        res = 'An error occurred during user creation.';
      }
    }
    return res;
  }

  loginUsers(String email, String password) async {
    String res = "Somthing Went Wrong";

    try {
      if (email.isNotEmpty && password.isNotEmpty) {
        UserCredential cred = await auth.signInWithEmailAndPassword(
            email: email, password: password);
        res = "success";
      } else {
        res = "Please Fields Must Not Be Empty.";
      }
    } catch (error) {
      // Check if the error is an instance of FirebaseAuthException
      if (error is FirebaseAuthException) {
        // Retrieve the error message from the FirebaseAuthException
        res = error.message!;
      } else {
        // Handle other types of errors, if necessary
        res = 'An error occurred during user creation.';
      }
    }
    return res;
  }
}
