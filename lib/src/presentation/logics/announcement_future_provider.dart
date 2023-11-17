import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/announcement_model/announcement_model.dart';
import '../../data/repository.dart';

final announcementFutureProvider =
    FutureProvider.family<List<AnnouncementModel>, String>((ref, id) async {
  return Repository().getAll();
});
