extension HelpMapper on Map {
  T keyHelper<T>({required String key}) => this[key] as T;
}
