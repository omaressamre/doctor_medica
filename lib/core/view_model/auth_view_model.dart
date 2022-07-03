// ignore_for_file: unnecessary_overrides, prefer_final_fields, avoid_print, unused_import, unnecessary_null_comparison, prefer_if_null_operators, await_only_futures, non_constant_identifier_names, curly_braces_in_flow_control_structures, unnecessary_getters_setters
// ignore_for_file: todo
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../doctor_home.dart';

class AuthViewModel extends GetxController {
  late String _get_name = "NAME";

  String get get_name => _get_name;

  set get_name(String get_name) {
    _get_name = get_name;
  }

  late String email, password, name, phone;

  FirebaseAuth _auth = FirebaseAuth.instance;
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  Rxn<User> _user = Rxn<User>();

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    get_name;
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  String? get user => _user.value?.email;

  void googleSignInMethod() async {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    print(googleUser);
    GoogleSignInAuthentication? googleSignInAuthentication =
        await googleUser?.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      idToken: googleSignInAuthentication?.idToken,
      accessToken: googleSignInAuthentication?.accessToken,
    );
  }

  void signInWithEmailAndPassword() async {
    get_name = "...";
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseFirestore.instance
          .collection('Doctors')
          .doc((await FirebaseAuth.instance.currentUser)?.uid)
          .get()
          .then((ds) {
        get_name = ds.get('name').toString();
        print(get_name);
        Get.offAll(() => patient_home.withuser(get_name = ds.get('name')));
      }).catchError((e) {
        print(e);
      });
    } catch (FirebaseException) {
      print(FirebaseException);
      Get.snackbar(
        'Error login account',
        FirebaseException.toString(),
        colorText: Colors.black,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void createAccountWithEmailAndPassword() async {
    try {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((_user) {
        FirebaseFirestore.instance
            .collection('Doctors')
            .doc(_user.user!.uid)
            .set({
          'uid': _user.user?.uid,
          'email': email,
          'phone': phone,
          'password': password,
          'name': name
        });
      });
      Get.offAll(() => patient_home.withuser(name));
    } catch (firebaseAuthException) {}
  }

/*
  void getCurrentUserData() async {
        final firebaseUser = await FirebaseAuth.instance.currentUser!;
    if (firebaseUser != null)
      await FirebaseFirestore.instance
          .collection('Users')
          .doc(firebaseUser.uid)
          .get()
          .then((ds) {
        get_name = ds.get('name');
        print(get_name);
      }).catchError((e) {
        print(e);
      });
  }
  */
}
