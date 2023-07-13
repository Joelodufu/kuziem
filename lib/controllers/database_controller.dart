import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseController {
  final String? uid;
  DatabaseController({this.uid});

  //Refference to collection
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection("users");

  final CollectionReference coursesCollection =
      FirebaseFirestore.instance.collection("courses");
  //updating userdata

  Future updateUserData(String fullName, String email) async {
    return await userCollection.doc(uid).set({
       'email': email,
          'fullName': fullName,
          'userId':uid,
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
  }
}
