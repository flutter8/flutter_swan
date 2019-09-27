import 'package:flutter_swan/Qunar/base/network/response/city.dart';
import 'package:flutter_swan/Qunar/base/network/response/experience.dart';
import 'package:flutter_swan/Qunar/base/network/response/note.dart';
import 'package:flutter_swan/Qunar/base/network/response/poi.dart';
import 'package:flutter_swan/base/bloc/helper/bloc_event_state.dart';

class DestinationBlocState extends BlocState {
  bool _initial;

  bool _loading;

  City city;

  ChannelResponse channelResponse;

  OverviewResponse overviewResponse;

  /// 吃什么POI数据
  PoiResponse whatfoodPoiResponse;

  /// 吃什么榜单数据
  OverviewResponse whatfoodAlbumResponse;

  /// 吃什么旅行经验数据
  ExperienceResponse whatfoodExperienceResponse;

  /// 玩什么POI数据
  PoiResponse whatScenicPoiResponse;

  /// 玩什么榜单数据
  OverviewResponse whatSecnicAlbumResponse;

  /// 玩什么旅行经验数据
  ExperienceResponse whatSecnicExperienceResponse;

  /// 买什么POI数据
  PoiResponse whatShoppingPoiResponse;

  /// 买什么榜单数据
  OverviewResponse whatShoppingAlbumResponse;

  /// 买什么旅行经验数据
  ExperienceResponse whatShoppingExperienceResponse;

  DestinationBlocState()
      : _initial = false,
        _loading = false;

  bool get hasInitial => _initial;

  void initialed() => _initial = true;

  bool get loading => _loading;
}
