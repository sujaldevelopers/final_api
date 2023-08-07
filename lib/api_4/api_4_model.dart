class api4Model {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  api4Model({required this.userId,
    required this.id,
    required this.title,
    required this.completed});

  factory api4Model.fromJson(Map<String, dynamic>Json)=>
      api4Model(
          userId: Json["userId"],
          id: Json["id"],
          title: Json["title"],
          completed: Json["completed"]);
}
