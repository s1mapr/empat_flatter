class ParcelInfo{
  final String id;
  final String dateFrom;
  final String dateTo;
  final String cityFrom;
  final String cityTo;
  ParcelInfo({required this.id, required this.dateFrom, required this.dateTo, required this.cityFrom, required this.cityTo});
}

class ParcelItems{
  List<ParcelInfo> items = [];
}