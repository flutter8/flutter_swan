enum ComponpentType {
  // section1: 头图+入口(国家/省热门城市)卡片+特别提醒
  ModuleSectionHeader,
  ModuleChannelBoard,
  ModuleHotDest,
  ModuleNotice,
  // section2: 推荐模块导航+N个推荐模块
  ModuleNavSectionHeader,
  ModuleTraffic,
  ModuleWhereLive,
  ModuleDujiaOutboundProduct,
  ModuleAdmireAlbum,
  ModuleTravelCalendar,
  ModuleTrain, //跟着火车去旅行
  ModuleConfigGroupAlbum, //更多主题榜单
  ModuleFestival, //跟着节庆去旅行
  ModuleHowPlay,
  ModuleWhatFun,
  ModuleDujiaProduct,
  ModuleAroundFood,
  ModuleWhatEat,
  ModuleWhatBuy,
  ModuleAroundFun,
  ModuleArticle,
  ModuleAsk,
  ModuleTraveledExperience,
  //推荐模块导航分类, 共10类
  //非常居地共导航菜单、交通、住宿、游玩、美食、购物、问答 7类
  NavIndexMenu,
  NavIndexTraffic,
  NavIndexLive,
  NavIndexFun,
  NavIndexEat,
  NavIndexBuy,
  NavIndexAskExperience,
  //非常居地共导航菜单、!火车旅行、!去哪儿玩、!周边游、问答 5类
  NavIndexTrain,
  NavIndexConfigGroupAlbum,
  NavIndexAroundFun,
  //section3: 游记筛选菜单+游记/经验列表
  FilterMenu,
  SmartList,
  //Float: 浮动游记筛选菜单
  SolidFilterMenu,
  //Others: 无数据/分割条(高度5,color='#eee')
  NoNoteData,
  ModuleDividerLine,
  ModulePlaceholder,
}

class ComponentSortConfig {}

class ComponentDefaultSort extends ComponentSortConfig {
  List<ComponpentType> config = [
    ComponpentType.ModuleTraffic,
    ComponpentType.ModuleWhereLive,
    //国内/出境游精选
    ComponpentType.ModuleDujiaOutboundProduct,
    ComponpentType.ModuleAdmireAlbum,
    ComponpentType.ModuleTravelCalendar,
    ComponpentType.ModuleTrain,
    ComponpentType.ModuleConfigGroupAlbum,
    // ComponpentType.ModuleFestival,
    ComponpentType.ModuleWhatFun,
    ComponpentType.ModuleHowPlay,
    //玩乐好货
    ComponpentType.ModuleDujiaProduct,
    // ComponpentType.ModuleAroundFood,
    ComponpentType.ModuleWhatEat,
    ComponpentType.ModuleWhatBuy,
    ComponpentType.ModuleArticle,
    ComponpentType.ModuleAsk,
    ComponpentType.ModuleTraveledExperience
  ];
}
