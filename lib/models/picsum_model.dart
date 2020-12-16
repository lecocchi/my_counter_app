class PicsumModel {
  String _id;
  String _author;

  String get id => _id;
  String get author => _author;

  PicsumModel({String id, String author}) {
    this._id = id;
    this._author = author;
  }

  factory PicsumModel.fromJson(Map<String, dynamic> json) {
    return new PicsumModel(
      id: json['id'],
      author: json['author'],
    );
  }
}
