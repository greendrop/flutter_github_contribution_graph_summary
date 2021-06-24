import 'package:github_contribution_graph_summary/graphql/github/api.dart';
import 'package:github_contribution_graph_summary/graphql/github/github_graphql_client.dart';
import 'package:graphql/client.dart';

class UserRepository {
  Future<User$Query$User> fetchUser(String login) async {
    final client = GithubGraphQLClient().client;

    final query = UserQuery(variables: UserArguments(login: login));

    final response = await client.query(QueryOptions(
        document: query.document, variables: query.variables.toJson()));

    if (response.hasException) {
      throw response.exception!;
    }

    return Future<User$Query$User>.value(
        User$Query.fromJson(response.data!).user);
  }
}
