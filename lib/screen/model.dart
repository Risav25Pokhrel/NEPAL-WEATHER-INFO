class data {
  late bool? status;
  late Map? weather;
  late String? place;
  late String? min;
  late String? max;
  late String? rain;

  data({
    required this.status,
    required this.weather,
    required this.place,
    required this.min,
    required this.max,
    required this.rain,
  });

  factory data.fromJson(Map<String, dynamic> json) {
    return data(
      status: json['status'],
      weather: json['weather'],
      place: json['weather']['place'],
      min: json['weather']['min'],
      max: json['weather']['max'],
      rain: json['weather']['max'],
    );
  }
}
