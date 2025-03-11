import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dayder/announcement/announcement.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'announcement_add_event.dart';
part 'announcement_add_state.dart';
part 'announcement_add_bloc.freezed.dart';

class AnnouncementAddBloc
    extends Bloc<AnnouncementAddEvent, AnnouncementAddState> {
  AnnouncementAddBloc() : super(const AnnouncementAddInitial()) {
    on<AnnouncementAddEventSubmitted>(_submit);
  }

  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<void> _submit(
    AnnouncementAddEventSubmitted event,
    Emitter<AnnouncementAddState> emit,
  ) async {
    try {
      emit(const AnnouncementAddLoading());
      await _firebaseFirestore
          .collection('announcements')
          .add(event.announcement.toJson());
      emit(AnnouncementAddSuccess(event.announcement));
    } on Exception catch (error, stackTrace) {
      emit(AnnouncementAddError(error, stackTrace));
    }
  }
}
