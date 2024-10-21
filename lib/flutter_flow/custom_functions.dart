import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

String toTitleCase(String frase) {
  // Eliminamos los espacios al principio y al final de la frase
  frase = frase.trim();
  frase = frase.toLowerCase();

  // Convertimos la primera letra de cada palabra en mayúscula
  frase = frase.split(" ").map((palabra) {
    return palabra[0].toUpperCase() + palabra.substring(1);
  }).join(" ");

  // Devolvemos la frase en mayúscula
  return frase;
}

bool buscarTexto(
  String texto,
  String fragmento,
) {
  String textoMinusculas = texto.toLowerCase();
  String fragmentoMinusculas = fragmento.toLowerCase();

  return textoMinusculas.contains(fragmentoMinusculas);
}

String string2AudioPath(String ruta) {
  return ruta;
}

String extraerID(String cadenaTexto) {
  return cadenaTexto
      .substring(cadenaTexto.length - 15 < 0 ? 0 : cadenaTexto.length - 15);
}
