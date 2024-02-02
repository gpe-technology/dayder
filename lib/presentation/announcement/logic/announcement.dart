import 'package:dayder/data/announcement_client.dart';
import 'package:dayder/di/di_container.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/models/announcement_model.dart';

part 'announcement.g.dart';

final repository = diContainer<AnnouncementClient>();

@riverpod
Future<List<AnnouncementModel>> getAll(GetAllRef ref) {
  return repository.getAll();
}

@riverpod
Future<void> post(PostRef ref, AnnouncementModel announcement) async {
  await repository.post(announcement);
}
