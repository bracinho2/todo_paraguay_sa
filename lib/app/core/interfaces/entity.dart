abstract class Entity<T> {
  final T id;

  const Entity({
    required this.id,
  });

  @override
  bool operator ==(covariant Entity<T> other) {
    if (identical(this, other)) return true;

    return other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}
