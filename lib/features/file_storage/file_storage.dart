import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:logger/logger.dart';

class FileStorage {
  final firebaseStorage = FirebaseStorage.instance;

  Future<String> save({required String name, required String path}) async {
    try {
      final ref = firebaseStorage.ref('users/announcements/$name');
      await ref.putFile(File(path));
      return ref.getDownloadURL();
    } on FirebaseException catch (e) {
      Logger().e('$e');
      return '';
    }
  }
}
