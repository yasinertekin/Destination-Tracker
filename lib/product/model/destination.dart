import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'destination.g.dart';

@JsonSerializable()
@immutable

/// Destination model
final class Destination with EquatableMixin {
  /// Destination constructor
  Destination({
    this.name,
    this.isVisited,
    this.visitCount,
    int? id, // id alanı nullable olarak tanımlanmalıdır
  }) : id = id ??
            DateTime.now().millisecondsSinceEpoch; // null ise rastgele id ata

  /// Destination from json
  factory Destination.fromJson(Map<String, dynamic> json) =>
      _$DestinationFromJson(json);

  /// Destination name
  final String? name;

  /// Destination is visited
  final bool? isVisited;

  /// Destination visit count
  final int? visitCount;

  /// Destination id
  final int? id;

  /// Destination to json
  Map<String, dynamic> toJson() => _$DestinationToJson(this);

  @override
  List<Object?> get props => [name, isVisited, visitCount];

  /// Copy with
  Destination copyWith({
    String? name,
    bool? isVisited,
    int? visitCount,
  }) {
    return Destination(
      name: name ?? this.name,
      isVisited: isVisited ?? this.isVisited,
      visitCount: visitCount ?? this.visitCount,
    );
  }
}
