import 'package:testflutter/utils/requette-bymagui.dart';

class ConnexionService {
  Future<String?> auth(Map<String, dynamic> body) async{
    return await postResponse(url: '/user/authentification', body: body).then((value){
      print('value.body');
      if(value['status']==200){
        return "Authentification Reussie";
      } else{
        return null;
      }
    });
  }
  
}