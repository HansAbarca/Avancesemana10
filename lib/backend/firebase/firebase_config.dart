import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCnKofsyxQFet9VDN0z1uNZlOh36xXaP9A",
            authDomain: "avancesemana10.firebaseapp.com",
            projectId: "avancesemana10",
            storageBucket: "avancesemana10.appspot.com",
            messagingSenderId: "728501138512",
            appId: "1:728501138512:web:68dd0c3d6dc8b748e80d55",
            measurementId: "G-75TWNTV5RK"));
  } else {
    await Firebase.initializeApp();
  }
}
