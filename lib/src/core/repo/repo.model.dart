class Repo {
  int totalCount;
  List<Item> items;

  Repo({this.totalCount, this.items});

  Repo.fromJson(Map<String, dynamic> json) {
    totalCount = json["total_count"];
    items = new List<Item>();

    json["items"].forEach((v) {
      items.add(new Item.fromJson(v));
    });
  }
}

class Item {
  String name;
  Owner owner;

  Item({this.name, this.owner});

  Item.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    owner = new Owner();
  }
}

class Owner {
  String login;
  String avatarUrl;
  String type;

  Owner({this.login, this.avatarUrl, this.type});

  Owner.fromJson(Map<String, dynamic> json) {
    login = json["login"];
    avatarUrl = json["avarter_url"];
    type = json["type"];
  }
}