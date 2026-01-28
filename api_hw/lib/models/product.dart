class Product {
  String? title;
  String? warrantyInformation;
  String? brand;
  String? thumbnail;
  String? images;

  Product({this.title,this.images,this.brand,this.thumbnail,this.warrantyInformation});

  factory Product.fromJson(Map<String,dynamic> json){
    return Product(

      title: json["title"] ?? "",
      images : json["images"][0] ?? "",
      brand : json["brand"] ?? "",
      thumbnail : json["thumbnail"] ?? "",
      warrantyInformation : json["warrantyInformation"] ?? "",
    );
  }
}