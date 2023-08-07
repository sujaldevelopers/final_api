/*
  {
    "id": 1,
    "name": "Leanne Graham",
    "username": "Bret",
    "email": "Sincere@april.biz",
    "phone": "1-770-736-8031 x56442",
    "website": "hildegard.org",
   "company": {
      "name": "Romaguera-Crona",
      "catchPhrase": "Multi-layered client-server neural-net",
      "bs": "harness real-time e-markets"
    },
        "address": {
      "street": "Victor Plains",
      "suite": "Suite 879",
      "city": "Wisokyburgh",
      "zipcode": "90566-7771",

    },
  },
*/

class Api6Model {
  final int id;
  final String name;
  final String username;
  final String email;
  final String phone;
  final String website;

  Api6Model({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.phone,
    required this.website,
  });

  factory Api6Model.fromJson(Map<String, dynamic> json) {
    return Api6Model(
        id: json["id"],
        name: json["name"],
        username: json["username"],
        email: json["email"],
        phone: json["phone"],
        website: json["website"]);
  }
}

class Company {
  final String name;
  final String catchPhrase;
  final String bs;

  Company({required this.name,
    required this.catchPhrase,
    required this.bs,
  });

}
/* https://sahil-flutter.vercel.app/api/v1/users


"msg": "Users",
    "data": [
        {
            "id": 1,
            "created_at": "2023-06-16T02:21:55.021Z",
            "updated_at": "2023-06-17T02:41:39.010Z",
            "name": "Jaydeep Suthar",
            "mobile_number": "7405399675",
            "email": "sutharjaydeep20@gmail.com",
            "image": null,
            "age": 22,
            "address": null
        }
    ]
}
* */