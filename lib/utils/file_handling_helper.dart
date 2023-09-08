import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FileHandlingHelper {
  static final picker = ImagePicker();
  static final storage = FirebaseStorage.instance;
  static final firestore = FirebaseFirestore.instance;

  static Future<Uint8List?> pickAndSaveFile(BuildContext context) async {
    try {
      // Step 1: Pick a file from the gallery
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);

      if (pickedFile == null) {
        // No file selected
        return null;
      }

      // Step 2: Save the file to Firebase Storage
      final fileBytes = await pickedFile.readAsBytes();
      final fileName = DateTime.now().millisecondsSinceEpoch.toString();
      await _uploadFileToStorage(fileBytes, fileName);

      // Step 3: Save the reference to Firestore
      final fileReference = await _getFileReference(fileName);
      await _saveReferenceToFirestore(fileReference);

      // Step 4: Save the reference as a byte file in shared preferences
      await _saveReferenceToSharedPreferences(fileReference.fullPath);

      // Return the Uint8List of the picked file
      return fileBytes;
    } catch (e) {
      print('Error during file handling: $e');
      // Show an error message
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Error uploading file. Please try again.')),
      );
      return null;
    }
  }

  static Future<void> _uploadFileToStorage(
    Uint8List fileBytes,
    String fileName,
  ) async {
    final storageRef = storage.ref().child('profileImages/$fileName');
    await storageRef.putData(fileBytes);
  }

  static Future<Reference> _getFileReference(String fileName) async {
    final storageRef = storage.ref().child('profileImages/$fileName');
    return storageRef;
  }

  static Future<void> _saveReferenceToFirestore(Reference fileReference) async {
    // Implement your Firestore update logic here
    // For example, if you're using the Firebase Firestore package:
   await firestore.collection('users').doc('fileDocId').update({'fileReference': fileReference.fullPath});
  }

  static Future<void> _saveReferenceToSharedPreferences(
    String fileReferencePath,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('fileReference', fileReferencePath);
  }
}
