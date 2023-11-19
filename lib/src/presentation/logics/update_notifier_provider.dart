import 'package:flutter_riverpod/flutter_riverpod.dart';

enum UpdateState {
  isProfile,
  isUpdate,
  isVerify,
}

final updateNotifierProvider =
    StateNotifierProvider<UpdateControllerNotifier, UpdateState>(
  (ref) => UpdateControllerNotifier(UpdateState.isProfile),
);

class UpdateControllerNotifier extends StateNotifier<UpdateState> {
  UpdateControllerNotifier(super.state);

  updateName() {
    state = UpdateState.isUpdate;
  }

  updateEmail() {
    state = UpdateState.isUpdate;
  }

  profile() {
    state = UpdateState.isProfile;
  }
}
