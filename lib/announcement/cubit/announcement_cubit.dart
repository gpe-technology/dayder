import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dayder/announcement/announcement.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'announcement_cubit.freezed.dart';
part 'announcement_state.dart';

class AnnouncementCubit extends Cubit<AnnouncementState> {
  AnnouncementCubit() : super(const AnnouncementState.loading()) {
    getAll();
  }

  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<void> getAll() async {
    try {
      final data = await _firebaseFirestore.collection('announcements').get();
      final result =
          data.docs
              .map((snapshot) => AnnouncementModel.fromJson(snapshot.data()))
              .toList();
      emit(AnnouncementState.loaded(result));
    } on Exception catch (error, stackTrace) {
      emit(AnnouncementState.error(error, stackTrace));
    }
  }
}
