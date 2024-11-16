import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:testflutter/services/inscription-service.dart';
import 'package:testflutter/services/verif-code.dart';
import 'package:testflutter/utils/utils.dart';

class InscriptionBloc with ChangeNotifier {
  InscriptionService inscriptionService = InscriptionService();
  VerifCodeService verifCodeService = VerifCodeService();

  TextEditingController nomC = TextEditingController();
  TextEditingController prenomC = TextEditingController();
  TextEditingController telephoneC = TextEditingController();
  TextEditingController adresseC = TextEditingController();
  TextEditingController dateNaissanceC = TextEditingController();
  TextEditingController emailC = TextEditingController();
  TextEditingController fonctionC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  TextEditingController confirmPasswordC = TextEditingController();
  TextEditingController codeC = TextEditingController();

  String roleC = 'docteur';
  double erreur = 0;

  ajouterUser() async {
    Map<String, dynamic> body = {
      'nom': nomC.text,
      'prenom': prenomC.text,
      'telephone': telephoneC.text,
      'adresse': adresseC.text,
      'date_naissance': dateNaissanceC.text,
      'email': emailC.text,
      'fonction': fonctionC.text,
      'role': roleC,
      'password': passwordC.text,
      'confirmPassword': confirmPasswordC.text
    };
    if (nomC.text.isEmpty ||
        prenomC.text.isEmpty ||
        dateNaissanceC.text.isEmpty ||
        telephoneC.text.isEmpty ||
        adresseC.text.isEmpty ||
        emailC.text.isEmpty ||
        fonctionC.text.isEmpty ||
        roleC.isEmpty ||
        passwordC.text.isEmpty ||
        confirmPasswordC.text.isEmpty) {
      Fluttertoast.showToast(
          msg: "Remplir tous les champs",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    } else {
      if (passwordC.text == confirmPasswordC.text) {
        String? result = await inscriptionService.add(body);
        if (result == null) {
          Fluttertoast.showToast(
              msg: "Une erreur service a ete dectectee",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
        } else {
          Fluttertoast.showToast(
              msg: "Vous pouvez continuer",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.green,
              textColor: Colors.white,
              fontSize: 16.0);
        }

        page = 2;
        notifyListeners();
      } else {
        Fluttertoast.showToast(
            msg: "Les mots de passe ne sont pas identiques",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    }
  }

  verifcode(BuildContext context) async {
              String? result = await verifCodeService.verif(codeC.text, telephoneC.text);
              if (result == null) {
          Fluttertoast.showToast(
              msg: "Une erreur service a ete dectectee",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
        } else {
          Fluttertoast.showToast(
              msg: "Valide",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.green,
              textColor: Colors.white,
              fontSize: 16.0);
              context.go('/');
        }


     
  
  }

  setDateInscription(DateTime t) {
    dateNaissanceC.text = showDatebyMgui(t);
    notifyListeners();
  }

  setRole(String role) {
    roleC = role;
    notifyListeners();
  }

  VerifIsEmpty1(){
    if (nomC.text.isEmpty || prenomC.text.isEmpty || adresseC.text.isEmpty || telephoneC.text.isEmpty || dateNaissanceC.text.isEmpty) {
      return false;
      
    }
    else {
      return true;
    }

  }

  int page = 0;
  setPage(int pageNumber) {
    if (pageNumber == 1) {

     if ( VerifIsEmpty1()) {
      page = 1;
          notifyListeners();

       
     }

    }
     else{
      page = pageNumber;
    notifyListeners();
     }
   
  }
}
