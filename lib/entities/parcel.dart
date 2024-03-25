class ParcelInfo{
  final String id;
  final String dateFrom;
  final String dateTo;
  final String cityFrom;
  final String cityTo;

  ParcelInfo({required this.id, required this.dateFrom, required this.dateTo, required this.cityFrom, required this.cityTo});

}

class ParcelItems{
  List<ParcelInfo> items = [
    ParcelInfo(id: "52 5263 5985 6235", dateFrom: "10.01.2024", dateTo: "12.01.2024", cityFrom: "Кривий Ріг", cityTo: "Київ"),
    ParcelInfo(id: "24 9574 8595 2695", dateFrom: "11.01.2024", dateTo: "13.01.2024", cityFrom: "Умань", cityTo: "Київ"),
    ParcelInfo(id: "43 4589 2645 4561", dateFrom: "12.01.2024", dateTo: "14.01.2024", cityFrom: "Вінниця", cityTo: "Київ"),
    ParcelInfo(id: "29 4895 1678 8743", dateFrom: "13.01.2024", dateTo: "15.01.2024", cityFrom: "Хмільник", cityTo: "Київ"),
    ParcelInfo(id: "89 1658 4812 6848", dateFrom: "14.01.2024", dateTo: "16.01.2024", cityFrom: "Хмельницький", cityTo: "Київ"),
    ParcelInfo(id: "74 4987 6187 8374", dateFrom: "15.01.2024", dateTo: "17.01.2024", cityFrom: "Кропивницький", cityTo: "Київ"),
    ParcelInfo(id: "27 6581 8543 2680", dateFrom: "16.01.2024", dateTo: "18.01.2024", cityFrom: "Сміла", cityTo: "Київ"),
    ParcelInfo(id: "88 6517 3548 7641", dateFrom: "17.01.2024", dateTo: "19.01.2024", cityFrom: "Чернігів", cityTo: "Київ")
  ];
}