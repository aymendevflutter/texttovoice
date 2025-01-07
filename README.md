# 🗣️ Flutter Text-to-Speech App  

Welcome to the **Flutter Text-to-Speech (TTS)** app! This project demonstrates a modern, fully functional TTS feature, integrated with Firebase real-time data streaming and an elegant user interface.

![Flutter](https://img.shields.io/badge/Flutter-v3.13-blue?logo=flutter) ![Firebase](https://img.shields.io/badge/Firebase-v11-orange?logo=firebase) ![License](https://img.shields.io/badge/License-MIT-green)

---

## 🌟 Features

- **Real-Time Data Streaming**: Fetch text data directly from Firebase Realtime Database.
- **Text-to-Speech Integration**: Convert fetched text into speech with a tap.
- **Modern UI Design**: Rounded corners, vibrant colors, and dynamic layouts.
- **Speech Control**: Stop speech instantly with a dedicated button.

---

## 📸 Screenshots  

| Welcome Section                          | Main TTS Page                       |
|------------------------------------------|-------------------------------------|
- [ ] ![f14bdbba-d563-461a-806c-c02461b70901](https://github.com/user-attachments/assets/93d95dc5-10a1-4d0e-b56b-df8a4be32459)


---

## 🛠️ Setup & Installation  

### Prerequisites  

Before running the project, ensure the following are installed:  
- [Flutter SDK](https://flutter.dev/docs/get-started/install)  
- [Firebase CLI](https://firebase.google.com/docs/cli)  

### Steps  

1. Clone the repository:  
   ```bash
   git clone https://github.com/yourusername/flutter-tts.git
   cd flutter-tts
   ```

2. Install Flutter dependencies:  
   ```bash
   flutter pub get
   ```

3. Configure Firebase:  
   - Add your Firebase project credentials (`google-services.json` for Android, `GoogleService-Info.plist` for iOS).  
   - Ensure your Realtime Database contains a `text` node to stream data.  

4. Run the app:  
   ```bash
   flutter run
   ```

---

## 🔗 Firebase Integration  

1. **Realtime Database**:  
   Set up a node in Firebase Realtime Database to hold text values. Example:  
   ```json
   {
     "text": "Hello, welcome to Text-to-Speech!"
   }
   ```

2. Add Firebase to your Flutter project by following the [official guide](https://firebase.google.com/docs/flutter/setup).  

---

## 📂 Project Structure  

```plaintext
lib/
├── providers/
│   ├── TTSProvider.dart   # Text-to-Speech logic
├── screens/
│   ├── TextToSpeechPage.dart   # Main UI screen
├── main.dart   # Entry point
```

---

## 📦 Dependencies  

The app uses the following Flutter packages:  

| Package         | Description                           |
|------------------|---------------------------------------|
| `provider`       | State management                     |
| `flutter_tts`    | Text-to-Speech functionality         |
| `firebase_core`  | Firebase core integration            |
| `firebase_database` | Firebase Realtime Database integration |

Install them with:  
```bash
flutter pub add provider flutter_tts firebase_core firebase_database
```

---

## 🚀 Usage  

1. **Start the App**: Run the app using `flutter run`.  
2. **Fetch Text**: View the streamed text from Firebase.  
3. **Speak Text**: Tap the **Speak** button to convert text to speech.  
4. **Stop Speech**: Use the **Stop** button to halt the speech instantly.

---

## 👨‍💻 Author  

**Your Name**  
- GitHub: [@/aymendevflutter](https://github.com/aymendevflutter)  


---

## 📝 License  

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.


