import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reverpod/provider/provider.dart';

class LightAndDarkTheme extends ConsumerWidget {
  const LightAndDarkTheme({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text("Light & Dark Theme"),
      ),
      body: Center(
        child: Center(
          child: Switch(
            value: theme,
            onChanged: (value) {
              ref.read(themeProvider.notifier).state = value;
            },
          ),
        ),
      ),
    );
  }
}
