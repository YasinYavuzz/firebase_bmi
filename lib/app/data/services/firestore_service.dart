import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_bmi/app/data/services/firebase_service.dart';
import 'package:get/get.dart';

class FirestoreService extends GetxService{
  Future<FirestoreService> init() async{
    return this;
  } 
  addUsers(email, Map<String, dynamic> data){
    FirebaseFirestore.instance.collection('Users').doc(email).set(data);
  }
}