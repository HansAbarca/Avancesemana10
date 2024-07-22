// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

Future<String> manageUser(
  // Parameters
  String emailAddress,
  String password,
  String randomDocGen,
  String rol,
  String empleadoID,
  String name,
) async {
  String returnmsg = 'Success';

  DateTime createdTime = DateTime.now();

  // Verificar si ya existe una instancia de FirebaseApp con el nombre randomDocGen
  FirebaseApp? existingApp;
  try {
    existingApp = Firebase.app(randomDocGen);
  } catch (e) {
    // No existe, entonces podemos inicializar una nueva instancia
    existingApp = null;
  }

  FirebaseApp app;
  if (existingApp == null) {
    app = await Firebase.initializeApp(
      name: randomDocGen,
      options: Firebase.app().options,
    );
  } else {
    app = existingApp;
  }

  try {
    UserCredential userCredential = await FirebaseAuth.instanceFor(app: app)
        .createUserWithEmailAndPassword(
            email: emailAddress, password: password);

    String? uid = userCredential.user?.uid;

    if (uid != null) {
      final CollectionReference<Map<String, dynamic>> usersRef =
          FirebaseFirestore.instance.collection('users');

      await usersRef.doc(uid).set({
        'uid': uid,
        'email': emailAddress,
        'created_time': createdTime,
        'display_name': name,
        'empleadoID': empleadoID,
        'Rol': rol,
      });
      return returnmsg;
    } else {
      return "Error while creating the UID";
    }
  } on FirebaseAuthException catch (e) {
    return e.code;
  }
}
