import 'package:flutter_riverpod/flutter_riverpod.dart';

enum UpdateState {
  isProfile,
  isSetValue,
  isUpdateValue,
  isVerifyValue,
}

final updateNavigationNotifierProvider =
    StateNotifierProvider<UpdateControllerNotifier, UpdateState>(
  (ref) => UpdateControllerNotifier(UpdateState.isProfile),
);

class UpdateControllerNotifier extends StateNotifier<UpdateState> {
  UpdateControllerNotifier(super.state);

  setValue() {
    state = UpdateState.isSetValue;
  }

  verify() {
    state = UpdateState.isVerifyValue;
  }

  updateValue() {
    state = UpdateState.isUpdateValue;
  }

  pop() {
    state = UpdateState.isProfile;
  }
}
