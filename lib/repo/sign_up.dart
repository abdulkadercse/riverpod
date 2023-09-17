
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;


class SignUpRepo extends ChangeNotifier {
  String email = '';
  String password = '';

  Future<bool>signUpWithEmail(BuildContext,context)async{
    var url = "";
    var response = await http.post(Uri.parse(url),headers: <String,String>{
      "email":email,
      "password":password
    });

    if(response.statusCode==200){
      return true;
    }else{
      return false;
    }
  }
}