import 'dart:convert';

class MyMajorModel {
  final String major_1;
  final String major_2;
  final String major_3;
  final String major_4;
  final String major_5;
  final String major_6;
  final String major_7;
  final String major_8;
  final String major_9;
  final String major_10;
  final String major_11;
  final String major_12;
  final String major_13;
  final String major_id;
  MyMajorModel({
    required this.major_1,
    required this.major_2,
    required this.major_3,
    required this.major_4,
    required this.major_5,
    required this.major_6,
    required this.major_7,
    required this.major_8,
    required this.major_9,
    required this.major_10,
    required this.major_11,
    required this.major_12,
    required this.major_13,
    required this.major_id,
  });

  MyMajorModel copyWith({
    String? major_1,
    String? major_2,
    String? major_3,
    String? major_4,
    String? major_5,
    String? major_6,
    String? major_7,
    String? major_8,
    String? major_9,
    String? major_10,
    String? major_11,
    String? major_12,
    String? major_13,
    String? major_id,
  }) {
    return MyMajorModel(
      major_1: major_1 ?? this.major_1,
      major_2: major_2 ?? this.major_2,
      major_3: major_3 ?? this.major_3,
      major_4: major_4 ?? this.major_4,
      major_5: major_5 ?? this.major_5,
      major_6: major_6 ?? this.major_6,
      major_7: major_7 ?? this.major_7,
      major_8: major_8 ?? this.major_8,
      major_9: major_9 ?? this.major_9,
      major_10: major_10 ?? this.major_10,
      major_11: major_11 ?? this.major_11,
      major_12: major_12 ?? this.major_12,
      major_13: major_13 ?? this.major_13,
      major_id: major_id ?? this.major_id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'major_1': major_1,
      'major_2': major_2,
      'major_3': major_3,
      'major_4': major_4,
      'major_5': major_5,
      'major_6': major_6,
      'major_7': major_7,
      'major_8': major_8,
      'major_9': major_9,
      'major_10': major_10,
      'major_11': major_11,
      'major_12': major_12,
      'major_13': major_13,
      'major_id': major_id,
    };
  }

  factory MyMajorModel.fromMap(Map<String, dynamic> map) {
    return MyMajorModel(
      major_1: map['major_1'] ?? '',
      major_2: map['major_2'] ?? '',
      major_3: map['major_3'] ?? '',
      major_4: map['major_4'] ?? '',
      major_5: map['major_5'] ?? '',
      major_6: map['major_6'] ?? '',
      major_7: map['major_7'] ?? '',
      major_8: map['major_8'] ?? '',
      major_9: map['major_9'] ?? '',
      major_10: map['major_10'] ?? '',
      major_11: map['major_11'] ?? '',
      major_12: map['major_12'] ?? '',
      major_13: map['major_13'] ?? '',
      major_id: map['major_id'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory MyMajorModel.fromJson(String source) => MyMajorModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MyMajorModel(major_1: $major_1, major_2: $major_2, major_3: $major_3, major_4: $major_4, major_5: $major_5, major_6: $major_6, major_7: $major_7, major_8: $major_8, major_9: $major_9, major_10: $major_10, major_11: $major_11, major_12: $major_12, major_13: $major_13, major_id: $major_id)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is MyMajorModel &&
      other.major_1 == major_1 &&
      other.major_2 == major_2 &&
      other.major_3 == major_3 &&
      other.major_4 == major_4 &&
      other.major_5 == major_5 &&
      other.major_6 == major_6 &&
      other.major_7 == major_7 &&
      other.major_8 == major_8 &&
      other.major_9 == major_9 &&
      other.major_10 == major_10 &&
      other.major_11 == major_11 &&
      other.major_12 == major_12 &&
      other.major_13 == major_13 &&
      other.major_id == major_id;
  }

  @override
  int get hashCode {
    return major_1.hashCode ^
      major_2.hashCode ^
      major_3.hashCode ^
      major_4.hashCode ^
      major_5.hashCode ^
      major_6.hashCode ^
      major_7.hashCode ^
      major_8.hashCode ^
      major_9.hashCode ^
      major_10.hashCode ^
      major_11.hashCode ^
      major_12.hashCode ^
      major_13.hashCode ^
      major_id.hashCode;
  }
}
