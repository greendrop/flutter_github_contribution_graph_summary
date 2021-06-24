// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'summary_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SummaryListStateTearOff {
  const _$SummaryListStateTearOff();

  _SummaryListState call(
      {List<User$Query$User> githubUsers = const <User$Query$User>[]}) {
    return _SummaryListState(
      githubUsers: githubUsers,
    );
  }
}

/// @nodoc
const $SummaryListState = _$SummaryListStateTearOff();

/// @nodoc
mixin _$SummaryListState {
  List<User$Query$User> get githubUsers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SummaryListStateCopyWith<SummaryListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummaryListStateCopyWith<$Res> {
  factory $SummaryListStateCopyWith(
          SummaryListState value, $Res Function(SummaryListState) then) =
      _$SummaryListStateCopyWithImpl<$Res>;
  $Res call({List<User$Query$User> githubUsers});
}

/// @nodoc
class _$SummaryListStateCopyWithImpl<$Res>
    implements $SummaryListStateCopyWith<$Res> {
  _$SummaryListStateCopyWithImpl(this._value, this._then);

  final SummaryListState _value;
  // ignore: unused_field
  final $Res Function(SummaryListState) _then;

  @override
  $Res call({
    Object? githubUsers = freezed,
  }) {
    return _then(_value.copyWith(
      githubUsers: githubUsers == freezed
          ? _value.githubUsers
          : githubUsers // ignore: cast_nullable_to_non_nullable
              as List<User$Query$User>,
    ));
  }
}

/// @nodoc
abstract class _$SummaryListStateCopyWith<$Res>
    implements $SummaryListStateCopyWith<$Res> {
  factory _$SummaryListStateCopyWith(
          _SummaryListState value, $Res Function(_SummaryListState) then) =
      __$SummaryListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<User$Query$User> githubUsers});
}

/// @nodoc
class __$SummaryListStateCopyWithImpl<$Res>
    extends _$SummaryListStateCopyWithImpl<$Res>
    implements _$SummaryListStateCopyWith<$Res> {
  __$SummaryListStateCopyWithImpl(
      _SummaryListState _value, $Res Function(_SummaryListState) _then)
      : super(_value, (v) => _then(v as _SummaryListState));

  @override
  _SummaryListState get _value => super._value as _SummaryListState;

  @override
  $Res call({
    Object? githubUsers = freezed,
  }) {
    return _then(_SummaryListState(
      githubUsers: githubUsers == freezed
          ? _value.githubUsers
          : githubUsers // ignore: cast_nullable_to_non_nullable
              as List<User$Query$User>,
    ));
  }
}

/// @nodoc

class _$_SummaryListState extends _SummaryListState {
  _$_SummaryListState({this.githubUsers = const <User$Query$User>[]})
      : super._();

  @JsonKey(defaultValue: const <User$Query$User>[])
  @override
  final List<User$Query$User> githubUsers;

  @override
  String toString() {
    return 'SummaryListState(githubUsers: $githubUsers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SummaryListState &&
            (identical(other.githubUsers, githubUsers) ||
                const DeepCollectionEquality()
                    .equals(other.githubUsers, githubUsers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(githubUsers);

  @JsonKey(ignore: true)
  @override
  _$SummaryListStateCopyWith<_SummaryListState> get copyWith =>
      __$SummaryListStateCopyWithImpl<_SummaryListState>(this, _$identity);
}

abstract class _SummaryListState extends SummaryListState {
  factory _SummaryListState({List<User$Query$User> githubUsers}) =
      _$_SummaryListState;
  _SummaryListState._() : super._();

  @override
  List<User$Query$User> get githubUsers => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SummaryListStateCopyWith<_SummaryListState> get copyWith =>
      throw _privateConstructorUsedError;
}
