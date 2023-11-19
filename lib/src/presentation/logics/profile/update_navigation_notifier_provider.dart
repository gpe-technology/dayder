import 'package:flutter_riverpod/flutter_riverpod.dart';

enum UpdateState {
  isProfile,
  isSetName,
  isSetEmail,
  isUpdateName,
  isUpdateEmail,
  isVerifyEmail,
}

final updateNavigationNotifierProvider =
    StateNotifierProvider<UpdateControllerNotifier, UpdateState>(
  (ref) => UpdateControllerNotifier(UpdateState.isProfile),
);

class UpdateControllerNotifier extends StateNotifier<UpdateState> {
  UpdateControllerNotifier(super.state);

  setName() {
    state = UpdateState.isSetName;
  }

  setEmail() {
    state = UpdateState.isSetEmail;
  }

  verify() {
    state = UpdateState.isVerifyEmail;
  }

  updateName() {
    state = UpdateState.isUpdateName;
  }

  updateEmail() {
    state = UpdateState.isUpdateEmail;
  }

  pop() {
    state = UpdateState.isProfile;
  }
}
