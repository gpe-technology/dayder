import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import 'models/announcement_model.dart';

@Injectable()
class AnnouncementClient {
  final db = FirebaseFirestore.instance;

  Future<List<AnnouncementModel>> getAll() async {
    final result = <AnnouncementModel>[];
    final data = await db.collection('announcements').get();
    for (var value in data.docs) {
      result.add(AnnouncementModel.fromJson(value.data()));
    }
    return result;
  }

  Future<void> post(AnnouncementModel announcement) async {
    await db
        .collection('announcements')
        .doc(announcement.id)
        .set(announcement.toJson());
  }
}
