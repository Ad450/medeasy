import 'dart:io';

import 'package:core/utils/errors.dart';
import 'package:firebase_storage/firebase_storage.dart';

class CloudFirestore {
  Future<String> upload({required String filepath, required String id}) async {
    final storageRef = FirebaseStorage.instance.ref();
    final videoRef = storageRef.child(
      'photos/$id/${DateTime.now().millisecondsSinceEpoch}.${filepath.split('.').last}',
    );
    try {
      await videoRef.putFile(File(filepath));
      final url = await videoRef.getDownloadURL();
      return url;
    } catch (e) {
      throw ApiError(e.toString());
    }
  }
}
