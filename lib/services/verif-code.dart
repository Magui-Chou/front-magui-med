import 'package:testflutter/utils/requette-bymagui.dart';

class VerifCodeService {
  Future<String?> verif(String code, String telephone) async{
    return await getResponse(url: '/code?code=$code&telephone=$telephone').then((value){
      print('value.body');
      if(value['status']==200){
        return "Verification Reussie";
      } else{
        return null;
      }
    });
  }
  
}
