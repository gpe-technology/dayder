import 'package:cloud_firestore/cloud_firestore.dart';

import 'models/announcement_model/announcement_model.dart';

final db = FirebaseFirestore.instance;

class Repository {
  Future<List<AnnouncementModel>> getAll() async {
    final result = <AnnouncementModel>[];
    final data = await db.collection('announcements').get();
    for (var value in data.docs) {
      result.add(AnnouncementModel.fromJson(value.data()));
    }
    return result;
  }
}
