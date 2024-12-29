import 'dart:developer';


import 'package:bookmytrainer/core/utils/shared_pref_helper.dart';
import 'package:bookmytrainer/domain/auth/i_auth_repository.dart';
import 'package:bookmytrainer/domain/auth/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository extends IAuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Future<bool> createUserWithEmailAndPassword({
    required UserModel user,
    required String password,
  }) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
              email: user.email, password: password);

      String uid = _auth.currentUser!.uid;

      if (userCredential.additionalUserInfo!.isNewUser) {
        UserModel userModel = UserModel(
          id: uid,
          name: user.name,
          email: user.email,
          mobile: user.mobile,
        );

        await _firestore.collection('users').doc(uid).set(userModel.toMap());

        log('User created successfully');
        return true;
      } else {
        log('User already exists');
        return false;
      }
    } on FirebaseAuthException catch (e) {
      log('Error: $e');
      return false;
    }
  }

  @override
  Future<bool> loginWithEmailAndPassword(
      {required UserModel user, required String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(
          email: user.email, password: password);
      log('Login successfully');
      return true;
    } on FirebaseAuthException catch (e) {
      log('Error: $e');
      return false;
      // Handle user creation or Firestore errors
    }
  }

  @override
  Future<bool> deleteUser() {
    // TODO: implement deleteUser
    throw UnimplementedError();
  }

  @override
  Future<bool> logOutUser() async {
    try {
      await _auth.signOut();
      await SharedPreferencesHelper().clear();
      log('Logout successfully');
      return true;
    } on FirebaseAuthException catch (e) {
      log('Error: $e');
      return false;
    }
  }
}
