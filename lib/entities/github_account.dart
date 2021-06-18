import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_account.freezed.dart';

@freezed
class GithubAccount with _$GithubAccount {
  factory GithubAccount(
      {@Default('') String login,
      @Default('') String avatorUrl}) = _GithubAccount;
  const GithubAccount._();
}
