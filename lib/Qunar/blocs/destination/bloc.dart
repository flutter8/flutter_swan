import 'package:flutter_swan/Qunar/constant/poi.dart';
import 'package:flutter_swan/base/bloc/helper/bloc_event_state.dart';
import 'package:flutter_swan/Qunar/blocs/destination/backend.dart';
import 'package:flutter_swan/Qunar/blocs/destination/event.dart';
import 'package:flutter_swan/Qunar/blocs/destination/state.dart';

class DestinationBloc extends BlocEventStateBase<DestinationBlocEvent, DestinationBlocState> {
  DestinationBloc() : super(initialState: DestinationBlocState());

  @override
  Stream<DestinationBlocState> eventHandler(DestinationBlocEvent event, DestinationBlocState currentState) async* {
    switch (event.event) {
      case EventType.initial:
        currentState..initialed();

        var city = await Backend.requestApiCity({"cityId": 299914});
        yield currentState..city = city;

        var response = await Backend.requestApiBooSearch({"destId": 299914, "bookType": 2});
        yield currentState..overviewResponse = response;

        // var channelResponse = await Backend.requestApiChannelList({
        //   "distId": 299878,
        //   "destType": '6',
        //   "distName": "上海",
        //   "residentId": 299914,
        //   "locateId": 299914,
        //   "locateName": "北京",
        //   "cityUrl": "shanghai_city",
        //   "isAbroad": 0,
        //   "bdSource": null,
        //   "from_page": null,
        // });
        var channelResponse = await Backend.requestApiChannelList({
          "distId":
              "299878&distName=上海&residentId=299914&locateId=299914&locateName=北京&cityUrl=shanghai_city&isAbroad=0&bdSource=&bd_source=&from_page=&destType=6",
        });
        yield currentState..channelResponse = channelResponse;

        var poiResponse = await Backend.requestApiPoiSearch({
          "destId": 299914,
          "destType": 1,
          "distance": null,
          "limit": 10,
          "lat": null,
          "lng": null,
          "needTopFeelingTag": true,
          "page": 1,
          "sort": 14,
          "type": PoiType.food,
          "useEs": true,
        });

        var whatSecnicAlbumResponse = await Backend.requestApiProxyBookSearch({
          "distIds": 299914,
          "label": "美食",
          "limit": 6,
          "needRecommandTag": 1,
          "offset": 0,
          "type": 3,
        });

        var whatSecnicExperienceResponse = await Backend.requestApiExperienceSearch({
          "distId": 299914,
          "page": 1,
          "pageSize": 4,
          "tagId": 551,
        });

        yield currentState
          ..whatfoodPoiResponse = poiResponse
          ..whatfoodAlbumResponse = whatSecnicAlbumResponse
          ..whatfoodExperienceResponse = whatSecnicExperienceResponse;

        poiResponse = await Backend.requestApiPoiSearch({
          "destId": 299914,
          "destType": 1,
          "distance": null,
          "limit": 10,
          "lat": null,
          "lng": null,
          "needTopFeelingTag": true,
          "page": 1,
          "sort": 14,
          "type": PoiType.scenic,
          "useEs": true,
        });

        whatSecnicAlbumResponse = await Backend.requestApiProxyBookSearch({
          "distIds": 299914,
          "label": "景点",
          "limit": 6,
          "needRecommandTag": 1,
          "offset": 0,
          "type": 3,
        });

        whatSecnicExperienceResponse = await Backend.requestApiExperienceSearch({
          "distId": 299914,
          "page": 1,
          "pageSize": 4,
          "tagId": 551,
        });

        yield currentState
          ..whatScenicPoiResponse = poiResponse
          ..whatSecnicAlbumResponse = whatSecnicAlbumResponse
          ..whatSecnicExperienceResponse = whatSecnicExperienceResponse;

        poiResponse = await Backend.requestApiPoiSearch({
          "destId": 299914,
          "destType": 1,
          "distance": null,
          "limit": 10,
          "lat": null,
          "lng": null,
          "needTopFeelingTag": true,
          "page": 1,
          "sort": 14,
          "type": PoiType.shopping,
          "useEs": true,
        });

        whatSecnicAlbumResponse = await Backend.requestApiProxyBookSearch({
          "distIds": 299914,
          "label": "购物",
          "limit": 6,
          "needRecommandTag": 1,
          "offset": 0,
          "type": 3,
        });

        whatSecnicExperienceResponse = await Backend.requestApiExperienceSearch({
          "distId": 299914,
          "page": 1,
          "pageSize": 4,
          "tagId": 551,
        });

        yield currentState
          ..whatShoppingPoiResponse = poiResponse
          ..whatShoppingAlbumResponse = whatSecnicAlbumResponse
          ..whatShoppingExperienceResponse = whatSecnicExperienceResponse;

        break;
    }
  }
}
