// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class User$Query$User$ContributionsCollection$ContributionCalendar$ContributionCalendarWeek$ContributionCalendarDay
    extends JsonSerializable with EquatableMixin {
  User$Query$User$ContributionsCollection$ContributionCalendar$ContributionCalendarWeek$ContributionCalendarDay();

  factory User$Query$User$ContributionsCollection$ContributionCalendar$ContributionCalendarWeek$ContributionCalendarDay.fromJson(
          Map<String, dynamic> json) =>
      _$User$Query$User$ContributionsCollection$ContributionCalendar$ContributionCalendarWeek$ContributionCalendarDayFromJson(
          json);

  late String color;

  late int contributionCount;

  @JsonKey(unknownEnumValue: ContributionLevel.artemisUnknown)
  late ContributionLevel contributionLevel;

  late DateTime date;

  @override
  List<Object?> get props =>
      [color, contributionCount, contributionLevel, date];
  @override
  Map<String, dynamic> toJson() =>
      _$User$Query$User$ContributionsCollection$ContributionCalendar$ContributionCalendarWeek$ContributionCalendarDayToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class User$Query$User$ContributionsCollection$ContributionCalendar$ContributionCalendarWeek
    extends JsonSerializable with EquatableMixin {
  User$Query$User$ContributionsCollection$ContributionCalendar$ContributionCalendarWeek();

  factory User$Query$User$ContributionsCollection$ContributionCalendar$ContributionCalendarWeek.fromJson(
          Map<String, dynamic> json) =>
      _$User$Query$User$ContributionsCollection$ContributionCalendar$ContributionCalendarWeekFromJson(
          json);

  late List<
          User$Query$User$ContributionsCollection$ContributionCalendar$ContributionCalendarWeek$ContributionCalendarDay>
      contributionDays;

  @override
  List<Object?> get props => [contributionDays];
  @override
  Map<String, dynamic> toJson() =>
      _$User$Query$User$ContributionsCollection$ContributionCalendar$ContributionCalendarWeekToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class User$Query$User$ContributionsCollection$ContributionCalendar
    extends JsonSerializable with EquatableMixin {
  User$Query$User$ContributionsCollection$ContributionCalendar();

  factory User$Query$User$ContributionsCollection$ContributionCalendar.fromJson(
          Map<String, dynamic> json) =>
      _$User$Query$User$ContributionsCollection$ContributionCalendarFromJson(
          json);

  late int totalContributions;

  late List<
          User$Query$User$ContributionsCollection$ContributionCalendar$ContributionCalendarWeek>
      weeks;

  @override
  List<Object?> get props => [totalContributions, weeks];
  @override
  Map<String, dynamic> toJson() =>
      _$User$Query$User$ContributionsCollection$ContributionCalendarToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class User$Query$User$ContributionsCollection extends JsonSerializable
    with EquatableMixin {
  User$Query$User$ContributionsCollection();

  factory User$Query$User$ContributionsCollection.fromJson(
          Map<String, dynamic> json) =>
      _$User$Query$User$ContributionsCollectionFromJson(json);

  late User$Query$User$ContributionsCollection$ContributionCalendar
      contributionCalendar;

  @override
  List<Object?> get props => [contributionCalendar];
  @override
  Map<String, dynamic> toJson() =>
      _$User$Query$User$ContributionsCollectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class User$Query$User extends JsonSerializable with EquatableMixin {
  User$Query$User();

  factory User$Query$User.fromJson(Map<String, dynamic> json) =>
      _$User$Query$UserFromJson(json);

  late String login;

  late String avatarUrl;

  late User$Query$User$ContributionsCollection contributionsCollection;

  @override
  List<Object?> get props => [login, avatarUrl, contributionsCollection];
  @override
  Map<String, dynamic> toJson() => _$User$Query$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class User$Query extends JsonSerializable with EquatableMixin {
  User$Query();

  factory User$Query.fromJson(Map<String, dynamic> json) =>
      _$User$QueryFromJson(json);

  User$Query$User? user;

  @override
  List<Object?> get props => [user];
  @override
  Map<String, dynamic> toJson() => _$User$QueryToJson(this);
}

enum ContributionLevel {
  @JsonValue('NONE')
  none,
  @JsonValue('FIRST_QUARTILE')
  firstQuartile,
  @JsonValue('SECOND_QUARTILE')
  secondQuartile,
  @JsonValue('THIRD_QUARTILE')
  thirdQuartile,
  @JsonValue('FOURTH_QUARTILE')
  fourthQuartile,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

@JsonSerializable(explicitToJson: true)
class UserArguments extends JsonSerializable with EquatableMixin {
  UserArguments({required this.login});

  @override
  factory UserArguments.fromJson(Map<String, dynamic> json) =>
      _$UserArgumentsFromJson(json);

  late String login;

  @override
  List<Object?> get props => [login];
  @override
  Map<String, dynamic> toJson() => _$UserArgumentsToJson(this);
}

final USER_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'user'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'login')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'login'),
                  value: VariableNode(name: NameNode(value: 'login')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'login'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'avatarUrl'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'contributionsCollection'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'contributionCalendar'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'totalContributions'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'weeks'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'contributionDays'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'color'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(
                                              value: 'contributionCount'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(
                                              value: 'contributionLevel'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: 'date'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ]))
                              ]))
                        ]))
                  ]))
            ]))
      ]))
]);

class UserQuery extends GraphQLQuery<User$Query, UserArguments> {
  UserQuery({required this.variables});

  @override
  final DocumentNode document = USER_QUERY_DOCUMENT;

  @override
  final String operationName = 'user';

  @override
  final UserArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  User$Query parse(Map<String, dynamic> json) => User$Query.fromJson(json);
}
