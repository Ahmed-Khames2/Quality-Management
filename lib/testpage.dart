import 'package:flutter/material.dart';

class Testpage extends StatelessWidget {
  const Testpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Page"),
      ),
      body: const Center(
        child: Text("Test Page"),

        /*dart run flutter_native_splash:create --path=flutter_native_splash.yaml
        
         */
      ),
    );
  }
}