import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hng_12_stage_one_mobile/utils.dart';

class Decryption extends StatefulWidget {
  const Decryption({super.key});

  @override
  State<Decryption> createState() => _DecryptionState();
}

class _DecryptionState extends State<Decryption> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _cipherTextController = TextEditingController();
  final TextEditingController _keyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  controller: _cipherTextController,
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
                const SizedBox(height: 16.0),
                TextFormField(
                  controller: _keyController,
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
                const SizedBox(height: 24.0),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      String decryptedText = decrypt(
                          _cipherTextController.text, _keyController.text);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Decrypted: $decryptedText"),
                          action: SnackBarAction(
                            label: 'Copy',
                            onPressed: () {
                              Clipboard.setData(
                                  ClipboardData(text: decryptedText));
                            },
                          ),
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
      ),
    );
  }
}
