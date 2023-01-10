import 'dart:convert';

class MyStaticModel {
  final String major_1;
  final int major_1_qty;
  MyStaticModel({
    required this.major_1,
    required this.major_1_qty,
  });

  MyStaticModel copyWith({
    String? major_1,
    int? major_1_qty,
  }) {
    return MyStaticModel(
      major_1: major_1 ?? this.major_1,
      major_1_qty: major_1_qty ?? this.major_1_qty,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'major_1': major_1,
      'major_1_qty': major_1_qty,
    };
  }

  factory MyStaticModel.fromMap(Map<String, dynamic> map) {
    return MyStaticModel(
      major_1: map['major_1'] ?? '',
      major_1_qty: map['major_1_qty']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory MyStaticModel.fromJson(String source) => MyStaticModel.fromMap(json.decode(source));

  @override
  String toString() => 'MyStaticModel(major_1: $major_1, major_1_qty: $major_1_qty)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is MyStaticModel &&
      other.major_1 == major_1 &&
      other.major_1_qty == major_1_qty;
  }

  @override
  int get hashCode => major_1.hashCode ^ major_1_qty.hashCode;
}
