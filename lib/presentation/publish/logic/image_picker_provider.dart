import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

final imagePickerProvider = FutureProvider.autoDispose<XFile?>((ref) {
  final ImagePicker picker = ImagePicker();
  return picker.pickImage(source: ImageSource.gallery);
});
