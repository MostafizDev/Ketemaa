import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:ketemaa/core/graphQLconfig/graphql_config.dart';

class DatabaseUtils {
  /*final String emailInput, passwordInput;

  DatabaseUtils({required this.emailInput, required this.passwordInput});*/
  String loginUser (String email, String password)  => """
    mutation {
        loginUser(email: "$email", password: "$password"){
    success
    access
    user{
      username
    }
  }
    }
""";
  Future<QueryResult> LoginUser(String emailInput, String passwordInput) async {
    print('object: $emailInput');
    print('object: $passwordInput');
    /*String loginUser = """
    mutation {
        loginUser(email: "$emailInput", password: "$passwordInput"){
    success
    access
    user{
      username
    }
  }
    }
""";*/
    /*final variable = {
      "emailInput": "$emailInput",
      "passwordInput": "$passwordInput",
    };*/

    GraphQLConfiguration configuration = GraphQLConfiguration();
    GraphQLClient client = configuration.clientToQuery();

    QueryResult queryResult = await client.mutate(
      MutationOptions(
        document: gql(loginUser(emailInput,passwordInput)),
        //variables: variable
      ),
    );
    print('object1: ${queryResult.data}');
    return queryResult;
  }
}
