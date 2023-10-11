import 'package:flutter/material.dart';
import 'package:xor_encryption/xor_encryption.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XOR Encryption',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'XOR Encryption'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String secret = '', encrypted = '', decrypted = '';
  TextEditingController message = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (secret != '') const Text('Your secert key is:'),
              if (secret != '')
                Text(
                  secret,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    secret = XorCipher().getSecretKey(34);
                  });
                },
                child: const Text('Generate Encryption Key'),
              ),
              const SizedBox(height: 30),
              const Text('Enter Message to encrypt'),
              TextFormField(
                controller: message,
                onChanged: (value) => setState(() {}),
                decoration: const InputDecoration(
                  isDense: true,
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 30),
              if (message.text.isNotEmpty)
                Column(
                  children: [
                    if (encrypted != '') const Text('Encrypted Text is:'),
                    if (encrypted != '')
                      Text(
                        encrypted,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (secret == '') {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  'Please generate a secret key first',
                                ),
                              ),
                            );
                          } else {
                            encrypted = XorCipher().encryptData(
                              message.text,
                              secret,
                            );
                          }
                        });
                      },
                      child: const Text('Encrypt Data'),
                    ),
                    const SizedBox(height: 30),
                    if (decrypted != '') const Text('Decrypted Text is:'),
                    if (decrypted != '')
                      Text(
                        decrypted,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (encrypted == '') {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  'Please encrypt a text first',
                                ),
                              ),
                            );
                          } else {
                            decrypted = XorCipher().encryptData(
                              encrypted,
                              secret,
                            );
                          }
                        });
                      },
                      child: const Text('Decrypt Data'),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
