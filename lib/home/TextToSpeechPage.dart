import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/TTSProvider.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/TTSProvider.dart';

class TextToSpeechPage extends StatefulWidget {
  @override
  _TextToSpeechPageState createState() => _TextToSpeechPageState();
}

class _TextToSpeechPageState extends State<TextToSpeechPage> {
  @override
  Widget build(BuildContext context) {
    final firebaseProvider = Provider.of<TTSProvider>(context, listen: false);

    return Scaffold(
      backgroundColor: Colors.grey[200], // Custom background color
      body: Column(
        children: [
          Container(
            padding:
                EdgeInsets.symmetric(vertical: 30.0), // Adjust vertical padding
            decoration: BoxDecoration(
              color: Colors
                  .blue, // Custom background color for the welcome section
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.0), // Rounded bottom-left corner
                bottomRight:
                    Radius.circular(30.0), // Rounded bottom-right corner
              ),
            ),
            child: Center(
              child: Text(
                'Welcome',
                style: TextStyle(
                  color: Colors.yellow, // Custom text color
                  fontSize: 24.0, // Custom font size
                  fontWeight: FontWeight.bold, // Custom font weight
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white, // Custom shape color
                        borderRadius:
                            BorderRadius.circular(20.0), // Rounded corners
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // Changes position of shadow
                          ),
                        ],
                      ),
                      child: StreamBuilder<String>(
                        stream: firebaseProvider.getTextDataStream(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return Text(
                              snapshot.data!,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black, // Custom text color
                              ),
                            );
                          } else if (snapshot.hasError) {
                            return Text('Error fetching data');
                          } else {
                            return CircularProgressIndicator();
                          }
                        },
                      ),
                    ),
                    SizedBox(height: 20.0),
                    ElevatedButton.icon(
                      onPressed: () async {
                        // Speak the text obtained from Firebase
                        final text =
                            await firebaseProvider.getTextDataStream().first;
                        final ttsProvider =
                            Provider.of<TTSProvider>(context, listen: false);
                        await ttsProvider.initializeTTS();
                        await ttsProvider.speak(text);
                      },
                      icon: Icon(Icons.volume_up, color: Colors.white),
                      label: Text(
                        'Speak',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 24.0),
                        backgroundColor: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(16.0),
            color: Colors.grey[200],
            child: ElevatedButton(
              onPressed: () async {
                final ttsProvider =
                    Provider.of<TTSProvider>(context, listen: false);
                await ttsProvider.stop();
              },
              child: Text('Stop'),
            ),
          ),
        ],
      ),
    );
  }
}
