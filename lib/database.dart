import 'package:cloud_firestore/cloud_firestore.dart';


class DatabaseService {

  final String uid;

  DatabaseService({this.uid});

  //Collection reference
  final CollectionReference userInfo = Firestore.instance.collection(
      'userInfo');

  Future updateUserData(String name) async {
    return await userInfo.document(uid).setData({
      'Name':name,
    });
  }
}