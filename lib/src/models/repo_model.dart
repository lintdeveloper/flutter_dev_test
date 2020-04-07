class Repo {
   String totalCount;
   List<Item> items;

   Repo({this.totalCount, this.items});

   Repo.fromJson(Map<String, dynamic> json) {

   }
}

class Item {
  final String name;
  final Owner owner;

  Item({this.name, this.owner});
}

class Owner {
  final String login;
  final String avatarUrl;
  final String type;

  Owner({this.login, this.avatarUrl, this.type});
}