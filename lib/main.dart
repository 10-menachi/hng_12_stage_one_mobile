import 'package:flutter/material.dart';
import 'package:hng_12_stage_one_mobile/widgets/decryption.dart';
import 'package:hng_12_stage_one_mobile/widgets/encryption.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Cryptographic Tools"),
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.key),
                ),
                Tab(
                  icon: Icon(Icons.lock),
                ),
              ],
            ),
          ),
          body: const TabBarView(children: [
            Decryption(),
            Encryption(),
          ]),
        ),
      ),
    );
  }
}
