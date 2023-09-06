class GetGetUserByIdResp {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;

  GetGetUserByIdResp(
      {this.id,
      this.title,
      this.price,
      this.description,
      this.category,
      this.image,
      this.rating});

  GetGetUserByIdResp.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    description = json['description'];
    category = json['category'];
    image = json['image'];
    rating = json['rating'] != null ? Rating.fromJson(json['rating']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (id != null) {
      data['id'] = id;
    }
    if (title != null) {
      data['title'] = title;
    }
    if (price != null) {
      data['price'] = price;
    }
    if (description != null) {
      data['description'] = description;
    }
    if (category != null) {
      data['category'] = category;
    }
    if (image != null) {
      data['image'] = image;
    }
    if (rating != null) {
      data['rating'] = rating?.toJson();
    }
    return data;
  }
}

class Rating {
  double? rate;
  int? count;

  Rating({this.rate, this.count});

  Rating.fromJson(Map<String, dynamic> json) {
    rate = json['rate'];
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (rate != null) {
      data['rate'] = rate;
    }
    if (count != null) {
      data['count'] = count;
    }
    return data;
  }
}
