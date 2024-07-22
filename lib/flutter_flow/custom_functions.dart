import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

double? multiplicacionTotalitems(
  int? cantidad,
  double? precio,
) {
  // do a multiplication between the 2 arguments
  if (cantidad != null && precio != null) {
    return cantidad * precio;
  } else {
    return null;
  }
}

bool? rango30Dias(
  DateTime fechaDeHoy,
  DateTime fechaDeRegistro,
) {
  // if argument 1 and 2 have 0 to 30 days of difference, return yes
  Duration difference = fechaDeHoy.difference(fechaDeRegistro);
  if (difference.inDays <= 30) {
    return true;
  } else {
    return false;
  }
}
