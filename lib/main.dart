import 'package:flutter/material.dart';

void main() => runApp( HomePage( ) );

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 220.0,
              floating: true,
              pinned: true,
              snap: true,
              elevation: 50,
              backgroundColor: Colors.teal,
              title: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular( 50 ),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black26,
                          ),
                          hintStyle:
                          TextStyle( color: Colors.red, fontSize: 13 ),
                          hintText: "Rechercher votre destination",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: DecoratedBox(
                  decoration: BoxDecoration( color: Colors.green ),
                ),
                /* background: Image.asset(
                      'images/undraw_online_test_gba7.png',
                      fit: BoxFit.cover,
                    ),
*/
              ),
            ),
            new SliverList(
              delegate: new SliverChildListDelegate( _buildList( 20 ) ),
            ),
          ],
        ),
      ),
    );
  }

  List _buildList(int count) {
    List<Widget> listItems = List( );

    for (int i = 0; i < count; i++) {
      listItems.add( new Padding(
          padding: new EdgeInsets.all( 20.0 ),
          child: new Text(
            'Item ${i.toString( )}',
            style: new TextStyle( fontSize: 25.0 ),
          ) ) );
    }

    return listItems;
  }
}

class CustomSearchDelegate extends SearchDelegate {
  @override
  // ignore: missing_return
  List<Widget> buildActions(BuildContext context) {
    return null;
  }

  @override
  // ignore: missing_return
  Widget buildLeading(BuildContext context) {
    return null;
  }

  @override
  Widget buildResults(BuildContext context) {
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return null;
  }
}
