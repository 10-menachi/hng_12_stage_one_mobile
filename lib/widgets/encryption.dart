import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hng_12_stage_one_mobile/utils.dart';

class Encryption extends StatefulWidget {
  const Encryption({super.key});

  @override
  State<Encryption> createState() => _EncryptionState();
}

class _EncryptionState extends State<Encryption> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _plainTextController = TextEditingController();
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
                  controller: _plainTextController,
                  decoration: const InputDecoration(
                    labelText: "Plain Text",
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Plain text is required";
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
                      String encryptedText = encrypt(
                          _plainTextController.text, _keyController.text);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Encrypted: $encryptedText"),
                          action: SnackBarAction(
                            label: 'Copy',
                            onPressed: () {
                              Clipboard.setData(
                                  ClipboardData(text: encryptedText));
                            },
                          ),
                        ),
                      );
                    }
                  },
                  child: const Text("Encrypt"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
