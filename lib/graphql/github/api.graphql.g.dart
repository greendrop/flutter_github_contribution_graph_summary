// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User$Query$User$ContributionsCollection$ContributionCalendar$ContributionCalendarWeek$ContributionCalendarDay
    _$User$Query$User$ContributionsCollection$ContributionCalendar$ContributionCalendarWeek$ContributionCalendarDayFromJson(
        Map<String, dynamic> json) {
  return User$Query$User$ContributionsCollection$ContributionCalendar$ContributionCalendarWeek$ContributionCalendarDay()
    ..color = json['color'] as String
    ..contributionCount = json['contributionCount'] as int
    ..contributionLevel = _$enumDecode(
        _$ContributionLevelEnumMap, json['contributionLevel'],
        unknownValue: ContributionLevel.artemisUnknown)
    ..date = DateTime.parse(json['date'] as String);
}

Map<String, dynamic>
    _$User$Query$User$ContributionsCollection$ContributionCalendar$ContributionCalendarWeek$ContributionCalendarDayToJson(
            User$Query$User$ContributionsCollection$ContributionCalendar$ContributionCalendarWeek$ContributionCalendarDay
                instance) =>
        <String, dynamic>{
          'color': instance.color,
          'contributionCount': instance.contributionCount,
          'contributionLevel':
              _$ContributionLevelEnumMap[instance.contributionLevel],
          'date': instance.date.toIso8601String(),
        };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$ContributionLevelEnumMap = {
  ContributionLevel.none: 'NONE',
  ContributionLevel.firstQuartile: 'FIRST_QUARTILE',
  ContributionLevel.secondQuartile: 'SECOND_QUARTILE',
  ContributionLevel.thirdQuartile: 'THIRD_QUARTILE',
  ContributionLevel.fourthQuartile: 'FOURTH_QUARTILE',
  ContributionLevel.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

User$Query$User$ContributionsCollection$ContributionCalendar$ContributionCalendarWeek
    _$User$Query$User$ContributionsCollection$ContributionCalendar$ContributionCalendarWeekFromJson(
        Map<String, dynamic> json) {
  return User$Query$User$ContributionsCollection$ContributionCalendar$ContributionCalendarWeek()
    ..contributionDays = (json['contributionDays'] as List<dynamic>)
        .map((e) =>
            User$Query$User$ContributionsCollection$ContributionCalendar$ContributionCalendarWeek$ContributionCalendarDay
                .fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic>
    _$User$Query$User$ContributionsCollection$ContributionCalendar$ContributionCalendarWeekToJson(
            User$Query$User$ContributionsCollection$ContributionCalendar$ContributionCalendarWeek
                instance) =>
        <String, dynamic>{
          'contributionDays':
              instance.contributionDays.map((e) => e.toJson()).toList(),
        };

User$Query$User$ContributionsCollection$ContributionCalendar
    _$User$Query$User$ContributionsCollection$ContributionCalendarFromJson(
        Map<String, dynamic> json) {
  return User$Query$User$ContributionsCollection$ContributionCalendar()
    ..totalContributions = json['totalContributions'] as int
    ..weeks = (json['weeks'] as List<dynamic>)
        .map((e) =>
            User$Query$User$ContributionsCollection$ContributionCalendar$ContributionCalendarWeek
                .fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic>
    _$User$Query$User$ContributionsCollection$ContributionCalendarToJson(
            User$Query$User$ContributionsCollection$ContributionCalendar
                instance) =>
        <String, dynamic>{
          'totalContributions': instance.totalContributions,
          'weeks': instance.weeks.map((e) => e.toJson()).toList(),
        };

User$Query$User$ContributionsCollection
    _$User$Query$User$ContributionsCollectionFromJson(
        Map<String, dynamic> json) {
  return User$Query$User$ContributionsCollection()
    ..contributionCalendar =
        User$Query$User$ContributionsCollection$ContributionCalendar.fromJson(
            json['contributionCalendar'] as Map<String, dynamic>);
}

Map<String, dynamic> _$User$Query$User$ContributionsCollectionToJson(
        User$Query$User$ContributionsCollection instance) =>
    <String, dynamic>{
      'contributionCalendar': instance.contributionCalendar.toJson(),
    };

User$Query$User _$User$Query$UserFromJson(Map<String, dynamic> json) {
  return User$Query$User()
    ..login = json['login'] as String
    ..avatarUrl = json['avatarUrl'] as String
    ..contributionsCollection =
        User$Query$User$ContributionsCollection.fromJson(
            json['contributionsCollection'] as Map<String, dynamic>);
}

Map<String, dynamic> _$User$Query$UserToJson(User$Query$User instance) =>
    <String, dynamic>{
      'login': instance.login,
      'avatarUrl': instance.avatarUrl,
      'contributionsCollection': instance.contributionsCollection.toJson(),
    };

User$Query _$User$QueryFromJson(Map<String, dynamic> json) {
  return User$Query()
    ..user = json['user'] == null
        ? null
        : User$Query$User.fromJson(json['user'] as Map<String, dynamic>);
}

Map<String, dynamic> _$User$QueryToJson(User$Query instance) =>
    <String, dynamic>{
      'user': instance.user?.toJson(),
    };

UserArguments _$UserArgumentsFromJson(Map<String, dynamic> json) {
  return UserArguments(
    login: json['login'] as String,
  );
}

Map<String, dynamic> _$UserArgumentsToJson(UserArguments instance) =>
    <String, dynamic>{
      'login': instance.login,
    };
