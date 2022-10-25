import 'package:flutter/foundation.dart';

class StorageData {
  final Map<String, dynamic> value;
  final String key;

  const StorageData({required this.value, required this.key});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is StorageData &&
        mapEquals(other.value, value) &&
        other.key == key;
  }

  @override
  int get hashCode => value.hashCode ^ key.hashCode;
}
