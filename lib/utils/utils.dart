import 'dart:ui';

String showDatebyMgui(DateTime t){
  String v = t.toIso8601String().split('T')[0];
  return v.split('-').reversed.join('-').toString();
}

enum TypeScren {Mobile,Tablet,Desktop}

TypeScren setTypeScreen(Size size){
  return size.width < 600 ? TypeScren.Mobile : size.width < 1200 ? TypeScren.Tablet :TypeScren.Desktop;
}














