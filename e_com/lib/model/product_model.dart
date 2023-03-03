class ProductData{
  static List<Product> products = [];
}

class Product {
  final int id;
  final String title;
  final String description;
  final num price;
  final num discountPercentage;
  final num rating;
  final int stock;
  final String brand;
  final String category;
  final String thumbnail;
  final String images;

  Product(
      {required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.discountPercentage,
      required this.rating,
      required this.stock,
      required this.brand,
      required this.category,
      required this.thumbnail,
      required this.images});

  factory Product.fromJson(Map<String, dynamic> map){
    return Product(
        id: map['id'],
        title: map['title'],
        description: map['description'],
        price: map['price'],
        discountPercentage: map['discountPercentage'],
        rating: map['rating'],
        stock: map['stock'],
        brand: map['brand'],
        category: map['category'],
        thumbnail: map['thumbnail'],
        images: map['images']
    );
  }

  toJson()=>{
    "id": id,
    "title": title,
    "description": description,
    "price": price,
    "discountPercentage": discountPercentage,
    "rating": rating,
    "stock": stock,
    "brand": brand,
    "category": category,
    "thumbnail": thumbnail,
    "images": images
  };
}

