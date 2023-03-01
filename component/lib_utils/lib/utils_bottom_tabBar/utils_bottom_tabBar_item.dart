class UtilsBottomTabBarItem {
  late final String title;
  late final String name;
  late final bool select;
  UtilsBottomTabBarItem(
      {required this.title, required this.name, required this.select});
  UtilsBottomTabBarItem.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    name = json['name'];
    select = json['select'];
  }

  Map<String, dynamic> toJson() =>
      {'title': title, 'name': name, 'select': select};
}
