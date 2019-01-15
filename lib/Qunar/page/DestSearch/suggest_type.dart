mixin DestSuggestType {
  /// 列表头部(看name)
  static const int SUGGEST_LIST_HEADER = 1;

  /// 列表间隔
  static const int SUGGEST_DIVIDER = 2;

  /// 更多结果(看subtype，query，暂时忽略)
  static const int list_more = 3;

  /// 国家(看id)
  static const int loc_nation = 4;

  /// 省份(看id)
  static const int loc_province = 5;

  /// 城市(看id)
  static const int loc_city = 6;

  /// 景点(看id，cityid, cityname)
  static const int poi_scenic = 7;

  /// 玩乐(看id，cityid, cityname)
  static const int poi_ent = 8;

  /// 酒店(看id，cityid, cityname)
  static const int poi_hotel = 9;

  /// 美食(看id，cityid, cityname)
  static const int poi_food = 10;

  /// 购物(看id，cityid, cityname)
  static const int poi_shopping = 11;

  /// 交通(看id，cityid, cityname)
  static const int poi_transport = 12;

  /// 游记(看id)
  static const int note = 13;

  /// 聪游榜(看id)
  static const int smart = 14;

  /// 机票(看cityname,destcityname)
  static const int flight_ticket = 15;

  /// 酒店列表(看cityid)  子项酒店品牌(看cityid，extralist.name)
  static const int hotel_list = 16;

  /// 酒店品牌(看cityid，queryname)
  static const int hotel_brand = 17;

  /// 附近景点(看cityid, lat, lng，type=4，如果是poi附近，则有queryname)
  static const int near_poi_scenic = 18;

  /// 附近酒店(看cityid, lat, lng, type=2，如果是poi附近，则有queryname)
  static const int near_poi_hotel = 19;

  /// 附近美食(看cityid, lat, lng，type=5，如果是poi附近，则有queryname)
  static const int near_poi_food = 20;

  /// 附近玩乐(看cityid, lat, lng，type=6，如果是poi附近，则有queryname)
  static const int near_poi_ent = 21;

  /// 附近购物(看cityid, lat, lng，type=3，如果是poi附近，则有queryname)
  static const int near_poi_shopping = 22;

  /// 附近交通(看cityid, lat, lng，type=21，如果是poi附近，则有queryname)
  static const int near_poi_transport = 23;

  /// 发现
  static const int page_discovery = 24;

  /// 创建
  static const int page_poi_create = 25;

  /// 反馈
  static const int page_feedback = 26;

  /// 客服电话
  static const int page_call_center = 27;

  /// 景点列表(看cityid) 子项看(cityid,extralist.id,extralist.name)
  static const int poi_list = 28;

  /// 机票低价提醒(看cityname,destcityname）
  static const int flight_sells = 29;

  /// 游记更多，看queryname
  static const int list_more_note = 30;

  /// 聪游榜更多 看queryname
  static const int list_more_smart = 31;

  /// poi更多 看queryname
  static const int list_more_poi = 32;

  /// 无结果空图片
  static const int list_empty = 33;

  /// 美食列表(看cityid)
  static const int poi_list_food = 34;

  /// 玩乐列表(看cityid)
  static const int poi_list_ent = 35;

  /// 购物列表(看cityid)
  static const int poi_list_shopping = 36;

  /// 旅行经验，看id
  static const int experience = 37;

  /// 旅行经验更多，看cityId
  static const int list_more_experience = 38;

  /// 旅游度假产品
  static const int dujia_product = 39;
  // url(看subtype和usehybrid)
  static const int page_web_link = 100;
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
}
