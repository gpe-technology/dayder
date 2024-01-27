import 'package:dayder/injectable/injectable.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/models/announcement_model/announcement_model.dart';
import '../../../data/repository/announcement_repository.dart';

part 'announcement.g.dart';

final repository = getIt<AnnouncementRepository>();

@riverpod
Future<List<AnnouncementModel>> getAll(GetAllRef ref) {
  return repository.getAll();
}

@riverpod
Future<void> post(PostRef ref, AnnouncementModel announcement) async {
  await repository.post(announcement: announcement);
}
