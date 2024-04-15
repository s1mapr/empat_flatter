class ParcelInfo {
  final int id;
  final String dateFrom;
  final String dateTo;
  final String cityFrom;
  final String cityTo;

  ParcelInfo(
      {required this.id,
      required this.dateFrom,
      required this.dateTo,
      required this.cityFrom,
      required this.cityTo});

  ParcelInfo.fromJson(Map<String, dynamic> json)
      : id = json['id'] ?? 0,
        dateFrom = json['dateFrom'] ?? '',
        dateTo = json['dateTo'] ?? '',
        cityFrom = json['cityFrom'] ?? '',
        cityTo = json['cityTo'] ?? '';

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'dateFrom': dateFrom,
      'dateTo': dateTo,
      'cityFrom': cityFrom,
      'cityTo': cityTo,
    };
  }
}

class ParcelItems {
  List<ParcelInfo> items = [];
}
