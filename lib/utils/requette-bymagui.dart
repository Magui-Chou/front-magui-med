import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

// ignore: constant_identifier_names
const String BASE_URL = "http://localhost:4200/v1/api";

const String BASE_URL_ASSET = "http://localhost:4200";



Future getResponse({
  required String url,
}) async {
  var url1 = BASE_URL + url;

  Uri urlFinal = Uri.parse(url1);
  String token = '';

  await SharedPreferences.getInstance().then((prefs) {
    token = prefs.getString("token") ?? '';
  });
  print(urlFinal);
  print(token);
  return http.get(urlFinal, headers: {
    'Content-Type': 'application/json',
    'authorization': "Bearer $token"
  }).then((value) {
    return {"body": json.decode(value.body), "status": value.statusCode};
  });
}

Future deleteResponse({
  required String url,
}) async {
  var url1 = BASE_URL + url;

  Uri urlFinal = Uri.parse(url1);
  String token = '';

  await SharedPreferences.getInstance().then((prefs) {
    token = prefs.getString("token") ?? '';
  });
  print(urlFinal);
  print(token);
  return http.delete(urlFinal, headers: {
    'Content-Type': 'application/json',
    'authorization': "Bearer $token"
  }).then((value) => json.decode(value.body));
}

Future putResponse(
    {required String url, required Map<String, dynamic> body}) async {
  var url1 = BASE_URL + url;
  String token = '';

  await SharedPreferences.getInstance().then((prefs) {
    token = prefs.getString("token") ?? '';
  });
  Uri urlFinal = Uri.parse(url1);
  print(urlFinal);
  return http.put(urlFinal, body: json.encode(body), headers: {
    'Content-Type': 'application/json',
    'authorization': "Bearer $token"
  }).then((value) {
    print(value.statusCode);
    return {"body": json.decode(value.body), "status": value.statusCode};
  });
}

Future postResponse(
    {required String url, required Map<String, dynamic> body}) async {
  var url1 = BASE_URL + url;

  String token = '';

  await SharedPreferences.getInstance().then((prefs) {
    token = prefs.getString("token") ?? '';
  });
  Uri urlFinal = Uri.parse(url1);
  print(urlFinal);
  print(token);
  return http.post(urlFinal, body: json.encode(body), headers: {
    'Content-Type': 'application/json',
    'authorization': "Bearer $token"
  }).then((value) {
    print( value.body);
    return {"body": json.decode(value.body), "status": value.statusCode};
    });
}
