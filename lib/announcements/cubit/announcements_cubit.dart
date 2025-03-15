import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dayder/announcements/announcements.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'announcements_cubit.freezed.dart';
part 'announcements_state.dart';

String collectionPath() => 'announcements';

class AnnouncementsCubit extends Cubit<AnnouncementsState> {
  AnnouncementsCubit() : super(const AnnouncementsLoading()) {
    fetchAllAnnouncement();
  }
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<void> fetchAllAnnouncement() async {
    try {
      final data = await _firebaseFirestore.collection(collectionPath()).get();
      final result =
          data.docs
              .map((snapshot) => Announcement.fromJson(snapshot.data()))
              .toList();
      emit(AnnouncementsLoaded(result));
    } on Exception catch (error, stackTrace) {
      emit(AnnouncementsError(error, stackTrace));
    }
  }
}
