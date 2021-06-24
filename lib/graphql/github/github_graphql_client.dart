import 'package:github_contribution_graph_summary/config/app_config.dart';
import 'package:graphql/client.dart';

class GithubGraphQLClient {
  factory GithubGraphQLClient() => _instance;
  GithubGraphQLClient._internal() {
    final httpLink = HttpLink('https://api.github.com/graphql');
    final authLink = AuthLink(
        getToken: () async => 'Bearer ${AppConfig().githubAccessToken}');
    final link = authLink.concat(httpLink);

    client =
        GraphQLClient(cache: GraphQLCache(store: InMemoryStore()), link: link);
  }

  static final GithubGraphQLClient _instance = GithubGraphQLClient._internal();
  late GraphQLClient client;
}
