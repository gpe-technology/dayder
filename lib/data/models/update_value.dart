class SelectedValue {
  final String title;
  final String value;

  final Function(String value)? setValue;

  SelectedValue({
    required this.title,
    required this.value,
    this.setValue,
  });
}
