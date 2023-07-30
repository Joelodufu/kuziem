import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseSerice {
  final String? uid;
  DatabaseSerice({this.uid});

  //Refference to collection
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection("users");

  final CollectionReference coursesCollection =
      FirebaseFirestore.instance.collection("courses");

  //Saving userdata
  Future savingUserData(String fullName, String email) async {
    return await userCollection.doc(uid).set({
      'email': email,
      'fullName': fullName,
      'userId': uid,
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

  //getting user data

  Future getUserData(String email) async {
    QuerySnapshot snapsot =
        await userCollection.where("email", isEqualTo: email).get();
    return snapsot;
  }
}
