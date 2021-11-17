import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

final myProvider = Provider((ref) => 0);

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  final int someNumber = 22;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Some number $someNumber'),
        ),
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                print('yo!');
              },
              icon: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
