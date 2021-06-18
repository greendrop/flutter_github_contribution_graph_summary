// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'github_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GithubAccountTearOff {
  const _$GithubAccountTearOff();

  _GithubAccount call({String login = '', String avatorUrl = ''}) {
    return _GithubAccount(
      login: login,
      avatorUrl: avatorUrl,
    );
  }
}

/// @nodoc
const $GithubAccount = _$GithubAccountTearOff();

/// @nodoc
mixin _$GithubAccount {
  String get login => throw _privateConstructorUsedError;
  String get avatorUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubAccountCopyWith<GithubAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubAccountCopyWith<$Res> {
  factory $GithubAccountCopyWith(
          GithubAccount value, $Res Function(GithubAccount) then) =
      _$GithubAccountCopyWithImpl<$Res>;
  $Res call({String login, String avatorUrl});
}

/// @nodoc
class _$GithubAccountCopyWithImpl<$Res>
    implements $GithubAccountCopyWith<$Res> {
  _$GithubAccountCopyWithImpl(this._value, this._then);

  final GithubAccount _value;
  // ignore: unused_field
  final $Res Function(GithubAccount) _then;

  @override
  $Res call({
    Object? login = freezed,
    Object? avatorUrl = freezed,
  }) {
    return _then(_value.copyWith(
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      avatorUrl: avatorUrl == freezed
          ? _value.avatorUrl
          : avatorUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GithubAccountCopyWith<$Res>
    implements $GithubAccountCopyWith<$Res> {
  factory _$GithubAccountCopyWith(
          _GithubAccount value, $Res Function(_GithubAccount) then) =
      __$GithubAccountCopyWithImpl<$Res>;
  @override
  $Res call({String login, String avatorUrl});
}

/// @nodoc
class __$GithubAccountCopyWithImpl<$Res>
    extends _$GithubAccountCopyWithImpl<$Res>
    implements _$GithubAccountCopyWith<$Res> {
  __$GithubAccountCopyWithImpl(
      _GithubAccount _value, $Res Function(_GithubAccount) _then)
      : super(_value, (v) => _then(v as _GithubAccount));

  @override
  _GithubAccount get _value => super._value as _GithubAccount;

  @override
  $Res call({
    Object? login = freezed,
    Object? avatorUrl = freezed,
  }) {
    return _then(_GithubAccount(
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      avatorUrl: avatorUrl == freezed
          ? _value.avatorUrl
          : avatorUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GithubAccount extends _GithubAccount {
  _$_GithubAccount({this.login = '', this.avatorUrl = ''}) : super._();

  @JsonKey(defaultValue: '')
  @override
  final String login;
  @JsonKey(defaultValue: '')
  @override
  final String avatorUrl;

  @override
  String toString() {
    return 'GithubAccount(login: $login, avatorUrl: $avatorUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubAccount &&
            (identical(other.login, login) ||
                const DeepCollectionEquality().equals(other.login, login)) &&
            (identical(other.avatorUrl, avatorUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatorUrl, avatorUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(login) ^
      const DeepCollectionEquality().hash(avatorUrl);

  @JsonKey(ignore: true)
  @override
  _$GithubAccountCopyWith<_GithubAccount> get copyWith =>
      __$GithubAccountCopyWithImpl<_GithubAccount>(this, _$identity);
}

abstract class _GithubAccount extends GithubAccount {
  factory _GithubAccount({String login, String avatorUrl}) = _$_GithubAccount;
  _GithubAccount._() : super._();

  @override
  String get login => throw _privateConstructorUsedError;
  @override
  String get avatorUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubAccountCopyWith<_GithubAccount> get copyWith =>
      throw _privateConstructorUsedError;
}
