class Postmodal {
  int _userId;
  int _id;
  String _title;
  String _body;

  // Constructor
  Postmodal({
    required int userId,
    required int id,
    required String title,
    required String body,
  })  : _userId = userId,
        _id = id,
        _title = title,
        _body = body;

  // Named constructor for creating an instance from JSON
  Postmodal.fromJson(Map<String, dynamic> json)
      : _userId = json['userId'],
        _id = json['id'],
        _title = json['title'],
        _body = json['body'];

  // Copy constructor for immutability, allows creating a new instance with some changes
  Postmodal copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) =>
      Postmodal(
        userId: userId ?? _userId,
        id: id ?? _id,
        title: title ?? _title,
        body: body ?? _body,
      );

  // Getters
  int get userId => _userId;
  int get id => _id;
  String get title => _title;
  String get body => _body;

  // Method to convert an instance to JSON format
  Map<String, dynamic> toJson() {
    return {
      'userId': _userId,
      'id': _id,
      'title': _title,
      'body': _body,
    };
  }
}
