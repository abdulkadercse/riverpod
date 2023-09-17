
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../provider/provider.dart';

class ProviderAndStateProvider extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isRead = ref.watch(isReadProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("ProviderAndStateProvider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              ref.read(selectedButtonProvider.state).state="red";
            }, child: Text("Red")),
            ElevatedButton(onPressed: (){
              ref.read(selectedButtonProvider.state).state="Blue ";
            }, child: Text("Blue")),

            SizedBox(height: 10,),
            
            isRead? Text("Color is Read"):Text("Color is Blue")

          ],
        ),
      ),
    ) ;
  }
}
