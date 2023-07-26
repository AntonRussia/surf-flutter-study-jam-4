extension HelpMapper on Map {
  T keyHelper<T>({required String key}) {
    print('key $key is null ${this[key] as T}');
    return this[key] as T;
  }
}
