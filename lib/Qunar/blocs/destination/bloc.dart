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
        print(city.toJson());

        yield currentState..city = city;

        var response = await Backend.requestApiBooSearch({
          "destId": 299914,
          "bookType": 2,
        });

        yield currentState..overviewResponse = response;

        var channelResponse = await Backend.requestApiChannelList({
          "distId":
              "299878&distName=上海&residentId=299914&locateId=299914&locateName=北京&cityUrl=shanghai_city&isAbroad=0&bdSource=&bd_source=&from_page=&destType=6",
        });

        yield currentState..channelResponse = channelResponse;

        break;
    }
  }
}
