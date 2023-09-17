import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/provider.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,title: const Text('Counter example')),
      body: Center(
        child: Column(
          children: [
            Consumer(
              builder: (context, ref, _) {
                final count = ref.watch(counterProvider);
                return Text('$count');
              },
            ),
            Consumer(
              builder: (context, ref, _) {
                final helloWorld = ref.watch(helloWorldProvider);
                return Text('$helloWorld');
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // The read method is a utility to read a provider without listening to it
        onPressed: () => ref.read(counterProvider.notifier).state++,
        child: const Icon(Icons.add),
      ),
    );
  }
}


