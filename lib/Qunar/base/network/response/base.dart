class BaseListResponse<T> {
  final int totalCount;

  final List<T> list;

  BaseListResponse(this.totalCount, this.list);
}
