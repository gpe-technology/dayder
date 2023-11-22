import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/models/announcement_model/announcement_model.dart';
import '../../../data/repository.dart';

part 'announcement.g.dart';

@riverpod
Future<List<AnnouncementModel>> getAll(GetAllRef ref) {
  return Repository().getAll();
}

@riverpod
Future<void> post(PostRef ref, AnnouncementModel announcement) async {
  await Repository().post(announcement.id, announcement);
}
