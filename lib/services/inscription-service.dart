import 'package:testflutter/utils/requette-bymagui.dart';

class InscriptionService {
  Future<String?> add(Map<String, dynamic> body) async{
    return await postResponse(url: '/user', body: body).then((value){

      if(value['status']==201){
        return "Ajout Reussi";
      } else{
        return null;
      }
    });
  }
  
}