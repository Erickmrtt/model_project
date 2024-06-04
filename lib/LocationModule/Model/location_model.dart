class LocationModel {
  final String? name;
  final String? type;
  final String? dimension;
  final List<String>? residents;

  LocationModel({
    this.name,
    this.type,
    this.dimension,
    this.residents,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) {
    return LocationModel(
      name: json['name'],
      type: json['type'],
      dimension: json['dimension'],
      residents: List<String>.from(json['residents']),
    );
  }
}
