/*
  {
    "userId": 1,
    "id": 1,
    "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
    "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
  },
*/

class Api5Model {
  int id;
  int userId;
  String title;
  String body;

  Api5Model(
      {required this.id,
      required this.userId,
      required this.title,
      required this.body});

  factory Api5Model.fromJson(Map<String, dynamic> json) {
    return Api5Model(
        id: json["id"],
        userId: json["userId"],
        title: json["title"],
        body: json["body"]);
  }
}
