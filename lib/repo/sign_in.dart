
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;


class SignInRepo extends ChangeNotifier{
  String email = '';
  String password = '';

  Future<bool>signInWithEmail(BuildContext,context)async{
    var url = "";
    var response = await http.get(Uri.parse(url));

    if(response.statusCode==200){
      return true;
    }else{
      return false;
    }
  }
}

