
class MovieModel {
  int? rank;
  String? title;
  String? description;
  String? image;
  String? bigImage;
  List<String>? genre;
  String? thumbnail;
  String? rating;
  String? id;
  int? year;
  String? imdbid;
  String? imdbLink;

  MovieModel({this.rank, this.title, this.description, this.image, this.bigImage, this.genre, this.thumbnail, this.rating, this.id, this.year, this.imdbid, this.imdbLink});

  MovieModel.fromJson(Map<String, dynamic> json) {
    if(json["rank"] is num) {
      rank = (json["rank"] as num).toInt();
    }
    if(json["title"] is String) {
      title = json["title"];
    }
    if(json["description"] is String) {
      description = json["description"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
    if(json["big_image"] is String) {
      bigImage = json["big_image"];
    }
    if(json["genre"] is List) {
      genre = json["genre"] == null ? null : List<String>.from(json["genre"]);
    }
    if(json["thumbnail"] is String) {
      thumbnail = json["thumbnail"];
    }
    if(json["rating"] is String) {
      rating = json["rating"];
    }
    if(json["id"] is String) {
      id = json["id"];
    }
    if(json["year"] is num) {
      year = (json["year"] as num).toInt();
    }
    if(json["imdbid"] is String) {
      imdbid = json["imdbid"];
    }
    if(json["imdb_link"] is String) {
      imdbLink = json["imdb_link"];
    }
  }

  static List<MovieModel> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => MovieModel.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["rank"] = rank;
    _data["title"] = title;
    _data["description"] = description;
    _data["image"] = image;
    _data["big_image"] = bigImage;
    if(genre != null) {
      _data["genre"] = genre;
    }
    _data["thumbnail"] = thumbnail;
    _data["rating"] = rating;
    _data["id"] = id;
    _data["year"] = year;
    _data["imdbid"] = imdbid;
    _data["imdb_link"] = imdbLink;
    return _data;
  }

  MovieModel copyWith({
    int? rank,
    String? title,
    String? description,
    String? image,
    String? bigImage,
    List<String>? genre,
    String? thumbnail,
    String? rating,
    String? id,
    int? year,
    String? imdbid,
    String? imdbLink,
  }) => MovieModel(
    rank: rank ?? this.rank,
    title: title ?? this.title,
    description: description ?? this.description,
    image: image ?? this.image,
    bigImage: bigImage ?? this.bigImage,
    genre: genre ?? this.genre,
    thumbnail: thumbnail ?? this.thumbnail,
    rating: rating ?? this.rating,
    id: id ?? this.id,
    year: year ?? this.year,
    imdbid: imdbid ?? this.imdbid,
    imdbLink: imdbLink ?? this.imdbLink,
  );
}