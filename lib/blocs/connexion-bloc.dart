import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:testflutter/services/connexion-service.dart';
import 'package:testflutter/utils/utils.dart';
import 'package:testflutter/services/verif-code.dart';


class ConnexionBloc with ChangeNotifier {
  ConnexionService connexionService =ConnexionService();
  VerifCodeService verifCodeService = VerifCodeService();

  TextEditingController telephoneC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  TextEditingController codeC = TextEditingController();

  
  String roleC = 'docteur';

   double erreur = 0 ; 

  authentification() async{
    Map<String, dynamic> body={
       'telephone': telephoneC.text,
       'password': passwordC.text,
    };
    if (telephoneC.text.isEmpty || passwordC.text.isEmpty) {
      Fluttertoast.showToast(
        msg: "Veuiller remplir tous les champs",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
      );
      
    } else {
        String? result = await connexionService.auth(body);
        print(result);
        if (result==null) {
          Fluttertoast.showToast(
        msg: "Une erreur service a ete dectectee",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
      );
    notifyListeners();
          
        }else{
          Fluttertoast.showToast(
        msg: "Connexion Reussie",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      );
       page=1;
      notifyListeners();
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
              context.go('/accueil');
        }


     
  
  }
  

 
  int page = 0;
  setPage(int pageNumber){
    page = pageNumber;
    notifyListeners();
  }
}

