import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:testflutter/pages/conexion-ui/conexion-desktop.dart';
import 'package:testflutter/pages/conexion-ui/connexion-phone.dart';
import 'package:testflutter/pages/conexion-ui/connexion-tablet.dart';
import 'package:testflutter/utils/utils.dart';



class ConnexionPage extends StatelessWidget {
  const ConnexionPage({super.key});

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return setTypeScreen(size) == TypeScren.Mobile ? const ConnexionPhone() : setTypeScreen(size) == TypeScren.Tablet ? const ConnexionTablet() :const ConnexionDestop() ;
  }
}
