import 'dart:convert';

class AppState {
  final String select_major_state;
  AppState({
    required this.select_major_state,
  });

  AppState copyWith({
    String? select_major_state,
  }) {
    return AppState(
      select_major_state: select_major_state ?? this.select_major_state,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'select_major_state': select_major_state,
    };
  }

  factory AppState.fromMap(Map<String, dynamic> map) {
    return AppState(
      select_major_state: map['select_major_state'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory AppState.fromJson(String source) => AppState.fromMap(json.decode(source));

  @override
  String toString() => 'AppState(select_major_state: $select_major_state)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is AppState &&
      other.select_major_state == select_major_state;
  }

  @override
  int get hashCode => select_major_state.hashCode;
}
