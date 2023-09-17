
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/provider.dart';



class SignIn extends StatelessWidget {
   SignIn({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Sign In'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Consumer(builder: (_, ref, watch){
          final logIn = ref.watch(logInProvider);
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                TextField(

                  onChanged: (val){
                    logIn.email=val;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      hintText: 'Please Enter Your Email',
                      labelText: 'Email Address',
                      filled: true,
                      fillColor: Colors.white),
                ),

                SizedBox(height: 10,),
                TextField(
                  onChanged: (val){
                    logIn.email=val;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      hintText: 'Please Enter Your Email',
                      labelText: 'Email Address',
                      filled: true,
                      fillColor: Colors.white),
                ),
                GestureDetector(
                  onTap: (){
                    logIn.signInWithEmail(BuildContext, context);
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: const Center(
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                )


              ],
            ),
          );
        }),
      ),
    );
  }
}
