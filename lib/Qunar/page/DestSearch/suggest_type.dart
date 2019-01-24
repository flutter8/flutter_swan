mixin DestSuggestType {
  /// 列表头部(看name)
  static const int SUGGEST_LIST_HEADER = 1;

  /// 列表间隔
  static const int SUGGEST_DIVIDER = 2;

  /// 更多结果(看subtype，query，暂时忽略)
  static const int SUGGEST_MORE = 3;

  /// 国家(看id)
  static const int SUGGEST_LOC_NATION = 4;

  /// 省份(看id)
  static const int SUGGEST_LOC_PROVINCE = 5;

  /// 城市(看id)
  static const int SUGGEST_LOC_CITY = 6;

  /// 景点(看id，cityid, cityname)
  static const int SUGGEST_POI_SCENIC = 7;

  /// 玩乐(看id，cityid, cityname)
  static const int SUGGEST_POI_ENT = 8;

  /// 酒店(看id，cityid, cityname)
  static const int SUGGEST_POI_HOTEL = 9;

  /// 美食(看id，cityid, cityname)
  static const int SUGGEST_POI_FOOD = 10;

  /// 购物(看id，cityid, cityname)
  static const int SUGGEST_POI_SHOPPING = 11;

  /// 交通(看id，cityid, cityname)
  static const int SUGGEST_POI_TRANSPORT = 12;

  /// 游记(看id)
  static const int SUGGEST_NOTE = 13;

  /// 聪游榜(看id)
  static const int SUGGEST_SMART = 14;

  /// 机票(看cityname,destcityname)
  static const int SUGGEST_FLIGHT_TICKET = 15;

  /// 酒店列表(看cityid)  子项酒店品牌(看cityid，extralist.name)
  static const int SUGGEST_HOTEL_LIST = 16;

  /// 酒店品牌(看cityid，queryname)
  static const int SUGGEST_HOTEL_BRAND = 17;

  /// 附近景点(看cityid, lat, lng，type=4，如果是poi附近，则有queryname)
  static const int SUGGEST_POI_NEAR_SCENIC = 18;

  /// 附近酒店(看cityid, lat, lng, type=2，如果是poi附近，则有queryname)
  static const int SUGGEST_POI_NEAR_HOTEL = 19;

  /// 附近美食(看cityid, lat, lng，type=5，如果是poi附近，则有queryname)
  static const int SUGGEST_POI_NEAR_FOOD = 20;

  /// 附近玩乐(看cityid, lat, lng，type=6，如果是poi附近，则有queryname)
  static const int SUGGEST_POI_NEAR_ENT = 21;

  /// 附近购物(看cityid, lat, lng，type=3，如果是poi附近，则有queryname)
  static const int SUGGEST_POI_NEAR_SHOPPING = 22;

  /// 附近交通(看cityid, lat, lng，type=21，如果是poi附近，则有queryname)
  static const int SUGGEST_POI_NEAR_TRANSPORT = 23;

  /// 发现
  static const int SUGGEST_DISCOVERY = 24;

  /// 创建
  static const int SUGGEST_POI_CREATE = 25;

  /// 反馈
  static const int SUGGEST_FEEDBACK = 26;

  /// 客服电话
  static const int SUGGEST_CALL_CENTER = 27;

  /// 景点列表(看cityid) 子项看(cityid,extralist.id,extralist.name)
  static const int SUGGEST_POI_LIST = 28;

  /// 机票低价提醒(看cityname,destcityname）
  static const int SUGGEST_FLIGHT_SELLS = 29;

  /// 游记更多，看queryname
  static const int SUGGEST_MORE_NOTE = 30;

  /// 聪游榜更多 看queryname
  static const int SUGGEST_MORE_SMART = 31;

  /// poi更多 看queryname
  static const int SUGGEST_MORE_POI = 32;

  /// 无结果空图片
  static const int SUGGEST_NO_DATA = 33;

  /// 美食列表(看cityid)
  static const int SUGGEST_POI_LIST_FOOD = 34;

  /// 玩乐列表(看cityid)
  static const int SUGGEST_POI_LIST_ENT = 35;

  /// 购物列表(看cityid)
  static const int SUGGEST_POI_LIST_SHOPPING = 36;

  /// 旅行经验，看id
  static const int SUGGEST_EXPERIENCE = 37;

  /// 旅行经验更多，看cityId
  static const int SUGGEST_MORE_EXPERIENCE = 38;

  /// 旅游度假产品
  static const int SUGGEST_DUJIA_PRODUCT = 39;
  // url(看subtype和usehybrid)
  static const int SUGGEST_WEB_PAGE = 100;
}

mixin DestSuggestSubType {
  /// 默认
  static const int SUGGEST_SUB_DEFAULT = 0;

  /// 火车票
  static const int train_ticket = 1;

  /// 度假
  static const int vacation = 2;

  /// 包车游
  static const int car = 3;

  /// 保险
  static const int insurance = 4;

  /// wifi
  static const int wifi = 5;

  /// 轮船
  static const int wharf = 6;

  /// 问答
  static const int qa = 7;

  /// 签证
  static const int visa = 8;

  /// 订单
  static const int order = 9;

  /// 当地游
  static const int local = 10;

  ///  问答更多
  static const int qa_more = 11;

  ///  汽车票
  static const int car_ticket = 12;

  static const int EXPERIENCE_MORE = 14;
}
