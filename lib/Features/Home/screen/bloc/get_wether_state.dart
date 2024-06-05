part of 'get_wether_bloc.dart';

@immutable
sealed class GetWetherState {}

final class GetWetherInitial extends GetWetherState {}

final class GetWetherSuccess extends GetWetherState{
  final Map<String,dynamic> wetherData;
  GetWetherSuccess({required this.wetherData});
}

final class GetWetherFailure extends GetWetherState{
  final String error;
  GetWetherFailure({required this.error});
}

final class GetWetherLoading extends GetWetherState{

}