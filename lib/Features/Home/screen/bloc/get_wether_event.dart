part of 'get_wether_bloc.dart';

@immutable
sealed class GetWetherEvent {}

final class GetCurrentWetherEvent extends GetWetherEvent{
  final String location;
  GetCurrentWetherEvent({required this.location});

}