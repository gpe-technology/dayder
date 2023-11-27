import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/update_value.dart';

final selectedValueProvider =
    Provider((ref) => ref.watch(selectedValueStateProvider));

final selectedValueStateProvider = StateProvider<SelectedValue?>((ref) => null);
