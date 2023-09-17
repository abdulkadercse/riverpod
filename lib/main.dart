import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reverpod/provider/provider.dart';
import 'package:reverpod/view/product_sort.dart';
import 'package:reverpod/view/home_screen.dart';
import 'package:reverpod/view/light_and_dark_theme.dart';
import 'package:reverpod/view/provider_and_stateProvider.dart';
void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final isLightTheme = ref.watch(themeProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:isLightTheme?ThemeData.light():ThemeData.dark(),
      home: LightAndDarkTheme()
    );
  }
}







