import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:firebase_database/firebase_database.dart';

enum TTSStatus { Playing, Stopped }

class TTSProvider with ChangeNotifier {
  final FirebaseService _firebaseService = FirebaseService();
  FlutterTts flutterTts = FlutterTts();
  TTSStatus _status = TTSStatus.Stopped;

  TTSStatus get status => _status;

  Future<void> initializeTTS() async {
    await _requestPermissions(); // Request permissions
    await flutterTts.setLanguage('en-US');
  //  await flutterTts.setLanguage('fr-FR');
 //   await flutterTts.setLanguage('ar-SA');
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
  }

  Future<void> _requestPermissions() async {
    await Permission.microphone.request();
    await Permission.speech.request();
  }

  Future<void> speak(String text) async {
    await flutterTts.speak(text);
    _status = TTSStatus.Playing;
    notifyListeners();
  }

  Future<void> stop() async {
    await flutterTts.stop();
    _status = TTSStatus.Stopped;
    notifyListeners();
  }
     Stream<String> getTextDataStream() {
    return _firebaseService.getTextDataStream();
  }
}
class FirebaseService {
  final DatabaseReference _textRef =
      FirebaseDatabase.instance.reference().child('textData');

  Stream<String> getTextDataStream() {
    return _textRef.onValue.map((event) => event.snapshot.value.toString());
  }
}
