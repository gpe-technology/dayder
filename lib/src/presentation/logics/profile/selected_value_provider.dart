import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/update_value.dart';

final selectedValueProvider = StateProvider<SelectedValue?>((ref) => null);
