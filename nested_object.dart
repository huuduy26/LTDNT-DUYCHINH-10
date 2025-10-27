class Address { // lớp Con
  final String city;
  final String country;

  Address({required this.city, required this.country});

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      city: json['city'],
      country: json['country'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'city': city, 'country': country,};
  }
}

class User { // lớp Cha
  final int id;
  final String name;
  final Address address; // Nested object

  User({required this.id, required this.name, required this.address});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      address: Address.fromJson(json['address']), // xử lý object con
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'address': address.toJson(),
    };
  }
}


void main() {
  final jsonData = {
    "id": 1,
    "name": "Duy",
    "address": {"city": "DN", "country": "Vietnam"}
  };

  // JSON -> Object Dart
  final user = User.fromJson(jsonData);

  print('Tên: ${user.name}');          
  print('Thành phố: ${user.address.city}'); 

  // Object Dart -> JSON
  print(user.toJson());
}


