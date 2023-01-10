import 'dart:convert';

class MyUserModel {
    final String std_id;
  final String std_firstname;
  final String std_lastname;
  final String std_password;
  final String std_email;
  final String std_tel;
  final String std_idcard;
  final String std_colorbn;
  final String std_state;
  final String std_major;

  MyUserModel({
    required this.std_id,
    required this.std_firstname,
    required this.std_lastname,
    required this.std_password,
    required this.std_email,
    required this.std_tel,
    required this.std_idcard,
    required this.std_colorbn,
    required this.std_state,
    required this.std_major,
  });

  MyUserModel copyWith({
    String? std_id,
    String? std_firstname,
    String? std_lastname,
    String? std_password,
    String? std_email,
    String? std_tel,
    String? std_idcard,
    String? std_colorbn,
    String? std_state,
    String? std_major,
  }) {
    return MyUserModel(
      std_id: std_id ?? this.std_id,
      std_firstname: std_firstname ?? this.std_firstname,
      std_lastname: std_lastname ?? this.std_lastname,
      std_password: std_password ?? this.std_password,
      std_email: std_email ?? this.std_email,
      std_tel: std_tel ?? this.std_tel,
      std_idcard: std_idcard ?? this.std_idcard,
      std_colorbn: std_colorbn ?? this.std_colorbn,
      std_state: std_state ?? this.std_state,
      std_major: std_major ?? this.std_major,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'std_id': std_id,
      'std_firstname': std_firstname,
      'std_lastname': std_lastname,
      'std_password': std_password,
      'std_email': std_email,
      'std_tel': std_tel,
      'std_idcard': std_idcard,
      'std_colorbn': std_colorbn,
      'std_state': std_state,
      'std_major': std_major,
    };
  }

  factory MyUserModel.fromMap(Map<String, dynamic> map) {
    return MyUserModel(
      std_id: map['std_id'] ?? '',
      std_firstname: map['std_firstname'] ?? '',
      std_lastname: map['std_lastname'] ?? '',
      std_password: map['std_password'] ?? '',
      std_email: map['std_email'] ?? '',
      std_tel: map['std_tel'] ?? '',
      std_idcard: map['std_idcard'] ?? '',
      std_colorbn: map['std_colorbn'] ?? '',
      std_state: map['std_state'] ?? '',
      std_major: map['std_major'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory MyUserModel.fromJson(String source) => MyUserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MyUserModel(std_id: $std_id, std_firstname: $std_firstname, std_lastname: $std_lastname, std_password: $std_password, std_email: $std_email, std_tel: $std_tel, std_idcard: $std_idcard, std_colorbn: $std_colorbn, std_state: $std_state, std_major: $std_major)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is MyUserModel &&
      other.std_id == std_id &&
      other.std_firstname == std_firstname &&
      other.std_lastname == std_lastname &&
      other.std_password == std_password &&
      other.std_email == std_email &&
      other.std_tel == std_tel &&
      other.std_idcard == std_idcard &&
      other.std_colorbn == std_colorbn &&
      other.std_state == std_state &&
      other.std_major == std_major;
  }

  @override
  int get hashCode {
    return std_id.hashCode ^
      std_firstname.hashCode ^
      std_lastname.hashCode ^
      std_password.hashCode ^
      std_email.hashCode ^
      std_tel.hashCode ^
      std_idcard.hashCode ^
      std_colorbn.hashCode ^
      std_state.hashCode ^
      std_major.hashCode;
  }
}
