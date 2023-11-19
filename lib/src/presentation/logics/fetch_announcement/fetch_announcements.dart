import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/models/announcement_model/announcement_model.dart';
import '../../../data/repository.dart';

part 'fetch_announcements.g.dart';

@riverpod
Future<List<AnnouncementModel>> fetchAnnouncement(
    FetchAnnouncementRef ref) async {
  return Repository().getAll();
}
