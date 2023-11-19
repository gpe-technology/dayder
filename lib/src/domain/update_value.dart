class UpdatedValue {
  final String title;
  final String value;

  final Function(String value)? setValue;

  UpdatedValue({
    required this.title,
    required this.value,
    this.setValue,
  });
}

