import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class FirestoreService extends GetxService{
  Future<FirestoreService> init() async{
    return this;
  } 

  FirebaseAuth auth = FirebaseAuth.instance;

  addUsers(email, Map<String, dynamic> data){
    FirebaseFirestore.instance.collection('Users').doc(email).set(data);
  }

  addBMI(Map<String,dynamic> data){
    FirebaseFirestore.instance.collection('Users').doc(auth.currentUser!.email).collection('BMI').add(data);
  }
}