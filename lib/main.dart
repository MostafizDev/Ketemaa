import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'app_routes/app_routes.dart';
import 'core/language/language.dart';
import 'core/utilities/app_theme/app_theme.dart';

void main() {
  final HttpLink httpLink = HttpLink(
    'https://65.1.64.139/graphql/',
  );

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: httpLink,
      cache: GraphQLCache(
        store: InMemoryStore(),
      ),
    ),
  );

  var app = GraphQLProvider(
    child: MyApp(),
    client: client,
  );
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.themeData(),
        getPages: AppRoutes.AppRoutesList(),
        initialRoute: AppRoutes.CONTROLLER_PAGE,
        translations: Language(),
        locale: Locale('en', 'US'),
      ),
    );
  }
}
