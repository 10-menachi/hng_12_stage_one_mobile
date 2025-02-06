import 'package:flutter/material.dart';
import 'package:hng_12_stage_one_mobile/widgets/encryption.dart';
import 'package:hng_12_stage_one_mobile/widgets/decryption.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Encryption and Decryption',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Cryptographic Tools"),
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.key),
                  text: "Encrypt",
                ),
                Tab(
                  icon: Icon(Icons.lock),
                  text: "Decrypt",
                ),
              ],
            ),
          ),
          body: const TabBarView(children: [
            Encryption(),
            Decryption(),
          ]),
        ),
      ),
    );
  }
}
