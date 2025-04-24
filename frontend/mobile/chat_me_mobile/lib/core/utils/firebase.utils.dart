import 'package:chat_me_mobile/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> setupFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
