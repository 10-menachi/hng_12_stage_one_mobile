# hng_12_stage_one_mobile

A Flutter project that provides cryptographic tools for encryption and decryption.

### Prerequisites

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- Dart SDK: Included with Flutter

### Installation

1. Clone the repository:
   ```sh
   git clone https://github.com/yourusername/hng_12_stage_one_mobile.git
   ```
2. Navigate to the project directory:
   ```sh
   cd hng_12_stage_one_mobile
   ```
3. Get the dependencies:
   ```sh
   flutter pub get
   ```

### Running the App

To run the app on an emulator or a physical device, use the following command:

```sh
flutter run
```

### Usage

The app provides the following cryptographic tools:

1. Encryption

   - Enter the plaintext
   - Enter the key
   - Tap the "Encrypt" button to encrypt the plaintext

2. Decryption

   - Enter the ciphertext
   - Enter the key
   - Tap the "Decrypt" button to decrypt the ciphertext

### Example

1. Encryption

   - Plaintext: `Hello, World!`
   - Key: `key`

   The encrypted text will be displayed in the output field.

2. Decryption

   - Ciphertext: `U2FsdGVkX1+3`
   - Key: `key`

   The decrypted text will be displayed in the output field.
