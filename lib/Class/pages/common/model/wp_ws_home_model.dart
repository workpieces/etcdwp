class WPWSHomeModel {
  final String title;
  final String message;
  WPWSHomeModel({
    required this.title,
    required this.message,
  });
  static var getLists = [
    WPWSHomeModel(
        title: "Cluster Security",
        message:
            "Etcdwp provides the security configuration functions of the etcd cluster, including TLS encryption, access control."),
    WPWSHomeModel(
        title: "Cluster Monitor",
        message:
            "Etcdwp displays the health, node status, and storage usage of the etcd cluster in real time, including CPU usage, memory usage, and disk usage."),
    WPWSHomeModel(
        title: "Key-value Management",
        message:
            "Etcdwp allows users to add, edit, and delete key-value pairs in etcd. Users can also add or remove key-value pairs in bulk through import and export."),
    WPWSHomeModel(
        title: "High Performance",
        message:
            "Etcdwp is designed to work with millions of keys and fields without blocking databases. It works great with your production database."),
    WPWSHomeModel(
        title: "Alert Mode",
        message:
            "Every writable command in alert mode sent to servers will need your approval explicitly. This prevent you from destroying production databases accidentally."),
    WPWSHomeModel(
        title: "Data Encoders",
        message:
            "Etcdwp recognizes different data formats automatically so don't worry if you are using MessagePack for reducing memory usages."),
    WPWSHomeModel(
        title: "History Queries",
        message:
            "Etcdwp provides the history query function of etcd, which can query different versions of a key value in history, compare and roll back."),
    WPWSHomeModel(
        title: "Dark Mode", message: "Of course, Etcdwp supports dark mode!")
  ];
}
