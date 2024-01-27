import 'package:dayder/src/data/announcement_client.dart';
import 'package:injectable/injectable.dart';

import '../models/announcement_model/announcement_model.dart';

@Injectable()
class AnnouncementRepository {
  final AnnouncementClient client;

  AnnouncementRepository(this.client);

  Future<List<AnnouncementModel>> getAll() async {
    return client.getAll();
  }

  Future<void> post({required AnnouncementModel announcement}) async {
    await client.post(announcement);
  }
}
