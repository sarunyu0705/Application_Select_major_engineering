import 'dart:convert';

class MySubjectModel {
  final String subject_id;
  final String subject_name_en;
  final String subject_name_th;
  final String subject_credit;
  final String subject_gread;
  final String? gp;
  final String? ca;
  final String? cp;
  final String? cr;
  final String gpa;
  final String grade_rate;

  MySubjectModel({
    required this.subject_id,
    required this.subject_name_en,
    required this.subject_name_th,
    required this.subject_credit,
    required this.subject_gread,
    this.gp,
    this.ca,
    this.cp,
    this.cr,
    required this.gpa,
    required this.grade_rate,
  });

  MySubjectModel copyWith({
    String? subject_id,
    String? subject_name_en,
    String? subject_name_th,
    String? subject_credit,
    String? subject_gread,
    String? gp,
    String? ca,
    String? cp,
    String? cr,
    String? gpa,
    String? grade_rate,
  }) {
    return MySubjectModel(
      subject_id: subject_id ?? this.subject_id,
      subject_name_en: subject_name_en ?? this.subject_name_en,
      subject_name_th: subject_name_th ?? this.subject_name_th,
      subject_credit: subject_credit ?? this.subject_credit,
      subject_gread: subject_gread ?? this.subject_gread,
      gp: gp ?? this.gp,
      ca: ca ?? this.ca,
      cp: cp ?? this.cp,
      cr: cr ?? this.cr,
      gpa: gpa ?? this.gpa,
      grade_rate: grade_rate ?? this.grade_rate,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'subject_id': subject_id,
      'subject_name_en': subject_name_en,
      'subject_name_th': subject_name_th,
      'subject_credit': subject_credit,
      'subject_gread': subject_gread,
      'gp': gp,
      'ca': ca,
      'cp': cp,
      'cr': cr,
      'gpa': gpa,
      'grade_rate': grade_rate,
    };
  }

  factory MySubjectModel.fromMap(Map<String, dynamic> map) {
    return MySubjectModel(
      subject_id: map['subject_id'] ?? '',
      subject_name_en: map['subject_name_en'] ?? '',
      subject_name_th: map['subject_name_th'] ?? '',
      subject_credit: map['subject_credit'] ?? '',
      subject_gread: map['subject_gread'] ?? '',
      gp: map['gp'],
      ca: map['ca'],
      cp: map['cp'],
      cr: map['cr'],
      gpa: map['gpa'] ?? '',
      grade_rate: map['grade_rate'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory MySubjectModel.fromJson(String source) =>
      MySubjectModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MySubjectModel(subject_id: $subject_id, subject_name_en: $subject_name_en, subject_name_th: $subject_name_th, subject_credit: $subject_credit, subject_gread: $subject_gread, gp: $gp, ca: $ca, cp: $cp, cr: $cr, gpa: $gpa, grade_rate: $grade_rate)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is MySubjectModel &&
      other.subject_id == subject_id &&
      other.subject_name_en == subject_name_en &&
      other.subject_name_th == subject_name_th &&
      other.subject_credit == subject_credit &&
      other.subject_gread == subject_gread &&
      other.gp == gp &&
      other.ca == ca &&
      other.cp == cp &&
      other.cr == cr &&
      other.gpa == gpa &&
      other.grade_rate == grade_rate;
  }

  @override
  int get hashCode {
    return subject_id.hashCode ^
      subject_name_en.hashCode ^
      subject_name_th.hashCode ^
      subject_credit.hashCode ^
      subject_gread.hashCode ^
      gp.hashCode ^
      ca.hashCode ^
      cp.hashCode ^
      cr.hashCode ^
      gpa.hashCode ^
      grade_rate.hashCode;
  }
}
