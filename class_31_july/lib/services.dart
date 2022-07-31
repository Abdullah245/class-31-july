import 'package:class_31_july/model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

getUsers() async {
  String uri = "https://jsonplaceholder.typicode.com/users";
  var response = await http.get(Uri.parse(uri));
  var data = jsonDecode(response.body);
  // var modelData = UserModel.fromJson(data);
  // return modelData;
  List userList = [];
  for (var i in data) {
    userList.add(UserModel.fromJson(i));
  }
  return userList;
}
