String encrypt(String plainText, String key) {
  if (key.isEmpty) {
    throw ArgumentError("Key cannot be empty");
  }
  return xorOperation(plainText, key);
}

String decrypt(String cipherText, String key) {
  if (key.isEmpty) {
    throw ArgumentError("Key cannot be empty");
  }
  return xorOperation(cipherText, key);
}

String xorOperation(String input, String key) {
  if (key.isEmpty) {
    throw ArgumentError("Key cannot be empty");
  }

  StringBuffer result = StringBuffer();

  for (int i = 0; i < input.length; i++) {
    int encryptedChar = input.codeUnitAt(i) ^ key.codeUnitAt(i % key.length);
    result.writeCharCode(encryptedChar);
  }

  return result.toString();
}
