//import 'dart:js';
import 'package:flutter/material.dart';
import 'package:playlist_duel/pages/duel.dart';
import 'package:playlist_duel/pages/duelfinal.dart';
import 'package:playlist_duel/pages/generalfinal.dart';
import 'package:playlist_duel/pages/home.dart';
import 'package:playlist_duel/pages/loading.dart';
import 'package:playlist_duel/pages/general.dart';
import 'package:playlist_duel/pages/recommend.dart';
import 'package:playlist_duel/pages/recommendfinal.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
     // '/': (context) => loading(),
      '/home': (context) => Home(),
      '/duel': (context) => duel(),
      '/general': (context) => general(),
      '/recommend': (context) => recommend(),
      '/duelfinal': (context) => duelfinal(),
      '/generalfinal': (context) => generalfinal(),
      '/recommendfinal': (context) => recommendfinal(),
    },
  ));

}

