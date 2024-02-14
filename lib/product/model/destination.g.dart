// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Destination _$DestinationFromJson(Map<String, dynamic> json) => Destination(
      name: json['name'] as String?,
      isVisited: json['isVisited'] as bool?,
      visitCount: json['visitCount'] as int?,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$DestinationToJson(Destination instance) =>
    <String, dynamic>{
      'name': instance.name,
      'isVisited': instance.isVisited,
      'visitCount': instance.visitCount,
      'id': instance.id,
    };
