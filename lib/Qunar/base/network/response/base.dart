class BaseListResponse<T> {
  final int totalCount;

  final List<T> list;

  BaseListResponse(this.totalCount, this.list);

  int get length => list?.length ?? 0;

  operator [](index) => list?.elementAt(index);
}
