import 'package:flutter/material.dart';
import 'package:testflutter/pages/inscription-ui/inscription-desktop.dart';
import 'package:testflutter/pages/inscription-ui/inscription-phone.dart';
import 'package:testflutter/pages/inscription-ui/inscription-tablet.dart';
import 'package:testflutter/utils/utils.dart';



class InscriptionPage extends StatelessWidget {
  const InscriptionPage({super.key});

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return setTypeScreen(size) == TypeScren.Mobile ? const InscriptionPhone() : setTypeScreen(size) == TypeScren.Tablet ? const InscriptionTablet() :const InscriptionDesktop() ;
  }
}
