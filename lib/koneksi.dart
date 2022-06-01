import 'package:bookinghotel/home.dart';
import 'package:bookinghotel/login_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class KoneksiFirebase {
  final auth = FirebaseAuth.instance;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void masuk(context) async {
    await auth
        .signInWithEmailAndPassword(email: email.text, password: password.text)
        .then((value) async {
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context) => Home()), (route) => false);
    });
  }

  void daftar(context) async {
    await auth
        .createUserWithEmailAndPassword(
            email: email.text, password: password.text)
        .then((value) async {
      Navigator.push(context, MaterialPageRoute(builder: (c) => LoginPage()));
    });
  }

  void keluar(context) async {
    await auth.signOut();
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => LoginPage()), (route) => false);
  }
}
