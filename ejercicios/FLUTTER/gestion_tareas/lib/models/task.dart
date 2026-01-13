class Task {
  final int id;
  final String title;
  final String description;
  final String dueDate;
  final String status;

  Task({
    required this.id,
    required this.title,
    required this.description,
    required this.dueDate,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "title": title,
      "description": description,
      "dueDate": dueDate,
      "status": status,
    };
  }
}
