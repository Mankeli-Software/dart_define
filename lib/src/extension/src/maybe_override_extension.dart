extension MaybeOverrideExtension<T> on T {
  T maybeOverride(T? other) {
    if (other != null && other != this) {
      if (this is Iterable && other is Iterable) {
        if (!other.every((this as Iterable).contains) ||
            !(this as Iterable).every(other.contains)) {
          return other;
        }
      } else {
        return other;
      }
    }

    return this;
  }
}
