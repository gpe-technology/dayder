import 'package:flutter_riverpod/flutter_riverpod.dart';

final phoneNumberProvider =
    Provider.autoDispose((ref) => ref.watch(phoneNumberStateProvider));

final phoneNumberStateProvider = StateProvider.autoDispose<String>((ref) => '');
