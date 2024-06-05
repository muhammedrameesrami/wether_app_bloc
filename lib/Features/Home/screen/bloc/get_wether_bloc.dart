import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../controller/Home_Controller.dart';

part 'get_wether_event.dart';
part 'get_wether_state.dart';

class GetWetherBloc extends Bloc<GetWetherEvent, GetWetherState> {
  final HomeController homeController;
  GetWetherBloc({required this.homeController}) : super(GetWetherInitial()) {

    on<GetCurrentWetherEvent>((event, emit) async {

      emit(GetWetherLoading());

      final wetherData=await homeController.getWetherData(location: event.location);
      print(event.location);
      if(wetherData.isEmpty){
        emit(GetWetherFailure(error: 'no Data found'));
      }else{
        emit(GetWetherSuccess(wetherData: wetherData));
      }
    });
  }
}
