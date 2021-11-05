import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

String readRepositories = '''
  query  {
  allCategoryKeyword
} 
''';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        /*child: GridView.builder(gridDelegate: gridDelegate, itemBuilder: itemBuilder)*/
        child: Center(
          child: Query(options: QueryOptions(document: gql(readRepositories),),
            builder: (result, {fetchMore, refetch}) {

            final categoryList = result.data?['allCategoryKeyword'];

            print("categoryList: $categoryList");
            return Text('Somthing');

            }),),
      ),
    );
  }
}
