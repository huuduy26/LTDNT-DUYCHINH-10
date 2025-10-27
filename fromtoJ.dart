class Product {
  final int id;
  final String name;
  final double price;

  Product({required this.id, required this.name, required this.price});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      price: (json['price']).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'price': price};
  }
}


void main() {
  final jsonData = {"id": 101, "name": "Chuột không dây", "price": 250000};
  final product = Product.fromJson(jsonData);

  print('Tên sản phẩm: ${product.name}');
  print('Giá: ${product.price}');
  print('JSON xuất ra: ${product.toJson()}');
}

