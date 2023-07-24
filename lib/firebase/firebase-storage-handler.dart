// firebase_storage_handler.dart

import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

Future<void> uploadImageToFirebase(File imageFile) async {
  // Code for uploading files to Firebase Storage (as shown in the previous example)
  // Replace 'your-bucket-name' with your Firebase Storage bucket name
  var storageRef = firebase_storage.FirebaseStorage.instance.ref().child('images/${DateTime.now()}.png');

  // Upload the image to Firebase Storage
  await storageRef.putFile(imageFile);
  print('Image uploaded successfully!');
}
//gs://cdh-web-a8712.appspot.com