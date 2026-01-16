class Book {
  final String id;
  final String title;
  final String author;
  final String status;
  final String note;

  Book({
    required this.id,
    required this.title,
    required this.author,
    required this.status,
    required this.note,
  });

  Map<String, dynamic> toMap() {
    return {"titulo": title, "autor": author, "estado": status, "nota": note};
  }
}
