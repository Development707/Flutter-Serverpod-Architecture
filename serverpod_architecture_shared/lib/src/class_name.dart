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
  ) {
    return ClassName(
      jsonSerialization['name'],
    );
  }
}
