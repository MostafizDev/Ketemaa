import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'app_routes/app_routes.dart';
import 'core/graphQLconfig/graphql_config.dart';
import 'core/language/language.dart';
import 'core/utilities/app_theme/app_theme.dart';

GraphQLConfiguration graphQLConfiguration = GraphQLConfiguration();

void main() => runApp(
      GraphQLProvider(
        client: graphQLConfiguration.client,
        child: const CacheProvider(child: MyApp()),
      ),
    );
/*void main() => runApp( MyApp());*/

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData(),
      getPages: AppRoutes.AppRoutesList(),
      initialRoute: AppRoutes.CONTROLLER_PAGE,
      translations: Language(),
      locale: const Locale('en', 'US'),
    );
  }
}
