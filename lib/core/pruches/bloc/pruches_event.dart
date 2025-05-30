part of 'pruches_bloc.dart';

@freezed
class PruchesEvent with _$PruchesEvent {

  const factory PruchesEvent.buyMaterial(String id , PruchesType pruchesType) = _BuyObject;
}