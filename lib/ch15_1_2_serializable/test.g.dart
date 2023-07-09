// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// import 'package:flutter_lab/ch15_1_2_serializable/test.dart';

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      json['latitude'] as String,
      json['longitude'] as String,
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

Todo _$TodoFromJson(Map<String, dynamic> json) => Todo(
      json['id'] as int,
      json['title'] as String,
      json['completed'] as bool,
      Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TodoToJson(Todo instance) => <String, dynamic>{
      'id': instance.todoId,
      'title': instance.title,
      'completed': instance.completed,
      'location': instance.location.toJson(),
    };
