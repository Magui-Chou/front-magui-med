import 'package:flutter/material.dart';

class NameBlocs with ChangeNotifier{
  int a = 0;
  String variable= '';
  
  setVariable( String nom){
    variable = nom;
    notifyListeners();
    
  }
  modifierA(int _a){
    a = _a;
    notifyListeners();
  }
  NameBlocs(){

  }
  int pageNumber = 1 ;
  setPageNumber(int page){
    pageNumber = page ;
    notifyListeners();
  }

  TextEditingController nomC = TextEditingController();
}