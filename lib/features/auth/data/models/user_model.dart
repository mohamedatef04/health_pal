class UserModel {
  final String? id;
  final String? email;
  final String? name;
  final String? specialization;
  final String? phone;
  final String? password;
  final String? role;

  UserModel({
    this.id,
    this.email,
    this.name,
    this.specialization,
    this.phone,
    this.password,
    this.role,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      email: json['email'],
      name: json['name'],
      specialization: json['specialization'],
      phone: json['phone'],
      role: json['role'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'name': name,
      'specialization': specialization,
      'phone': phone,
      'role': role,
    };
  }
}
