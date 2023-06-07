import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

pickImage(ImageSource imageSource) async {
  final ImagePicker imagePicker = ImagePicker();

  XFile? file = await imagePicker.pickImage(source: imageSource);

  if (file != null) {
    // return File(_file.path);
    return await file.readAsBytes();
  }

  print('No Image Selected');
}

showSnackBar(String content, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(content)));
}

// on FirebaseAuthException catch(err) {
//       if(err.code == 'invalid-email') {
//         res = 'The email badly formatted.';
//       } else if(err.code == 'weak-password') {
//         res = 'Password should be at least 6 characters.';
//       }
//     }
