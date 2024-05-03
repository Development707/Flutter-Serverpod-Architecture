import 'package:serverpod_serialization/serverpod_serialization.dart';

class ClassName {
  String name;
  ClassName(this.name);

  toJson() {
    return {
      'name': name,
    };
  }

  factory ClassName.fromJson(
    Map<String, dynamic> jsonSerialization,
    SerializationManager serializationManager,
  ) {
    return ClassName(
      jsonSerialization['name'],
    );
  }
}
