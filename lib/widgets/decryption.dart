import 'package:flutter/material.dart';

class Decryption extends StatefulWidget {
  const Decryption({super.key});

  @override
  State<Decryption> createState() => _DecryptionState();
}

class _DecryptionState extends State<Decryption> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Cipher Text",
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Cipher text is required";
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Key",
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Key is required";
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Decrypting..."),
                      ),
                    );
                  }
                },
                child: const Text("Decrypt"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
