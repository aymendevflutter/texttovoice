import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

import 'home/TextToSpeechPage.dart';
import 'providers/TTSProvider.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TTSProvider(),
      child: MaterialApp(
        title: 'Text-to-Speech Demo',
        home: TextToSpeechPage(),
      ),
    );
  }
}