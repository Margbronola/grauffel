class BookModel {
  final int id;
  final String name;
  final String? description;
  final DateTime start;
  final DateTime end;
  final int status;

  const BookModel(
      {required this.id,
      required this.name,
      required this.description,
      required this.end,
      required this.start,
      required this.status});

  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        end: DateTime.parse(json['end']),
        start: DateTime.parse(json['start']),
        status: json['status'] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "start": start.toString(),
        "end": end.toString(),
        "status": status,
      };

  @override
  String toString() => "${toJson()}";
}
