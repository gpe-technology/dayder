class Configuration {
  final String backendUrl;

  Configuration({required this.backendUrl});

  factory Configuration.from(Map<String, dynamic> json) =>
      Configuration(backendUrl: json['backendUrl']);

  factory Configuration.isEmpty() => Configuration(backendUrl: '');
}
