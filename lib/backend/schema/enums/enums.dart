import 'package:collection/collection.dart';

enum Role {
  assistant,
  user,
}

enum AIChapterDocRef {
  AIChapter1DocRef,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Role):
      return Role.values.deserialize(value) as T?;
    case (AIChapterDocRef):
      return AIChapterDocRef.values.deserialize(value) as T?;
    default:
      return null;
  }
}
