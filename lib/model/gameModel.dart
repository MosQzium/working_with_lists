class GameModel {
  final String title;
  final String type;
  final String description;
  final int age;
  final int id;

  GameModel({
    required this.title,
    required this.type,
    required this.description,
    required this.age,
    required this.id,
  });

  factory GameModel.fromMap(Map<String, dynamic> gameMapping) {
    return GameModel(
      title: gameMapping['title'],
      type: gameMapping['type'],
      description: gameMapping['description'],
      age: gameMapping['age'],
      id: gameMapping['id'],
    );
  }
}
