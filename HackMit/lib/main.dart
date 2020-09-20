import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}


class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Home Page'),
      ),
      body: Center(child: Column(
        mainAxisSize: MainAxisSize.min, 
        children: <Widget>[Text('Where does this go'),
         RaisedButton(
          child: Text('Go to Section!'),
          onPressed: () {
            Navigator.of(context).push(_createRoute());
          },
        ),
        ]
        //children: Text(
          //'Hello, xxx! Welcome back to Buffer-like-Buffet, your best comprehensive help when it comes to personal finance!',
          //textAlign: TextAlign.center,
         // overflow: TextOverflow.ellipsis,
         //style: TextStyle(fontWeight: FontWeight.bold),
         ),
      )
      //),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => TopicsPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

class TopicsPage extends StatelessWidget { //The page where user selects differnt topic
 static final showGrid = true;
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Choose the topic you want to learn about'),
      ),
      body: Center(
        child: showGrid ? _buildGrid() : _buildList(),
      ),
    );
  }
}

  Widget _buildGrid() => GridView.extent( //Main Axis: Row Axis   Cross Axis: Column Axis
      maxCrossAxisExtent: 150, //Maximum extet of tiles in the cross axis
      padding: const EdgeInsets.all(4), //Typical eight-pixel margin on all sides:
     // mainAxisSpacing: 4, //The number of logical pixels between each child along the main axis.
     // crossAxisSpacing: 4,
      children: List.generate(6, (i) {
        Container(child: Image.asset('images/pic$i.jpg'));
        return Center(
          child: Text(
            'Item $i',
          )
        );
       }
      ),
  );

 Widget _buildList() => ListView(
        children: [
          _tile('CineArts at the Empire', '85 W Portal Ave', Icons.theaters),
          _tile('The Castro Theater', '429 Castro St', Icons.theaters),
          _tile('Alamo Drafthouse Cinema', '2550 Mission St', Icons.theaters),
          _tile('Roxie Theater', '3117 16th St', Icons.theaters),
          _tile('United Artists Stonestown Twin', '501 Buckingham Way',
              Icons.theaters),
          _tile('AMC Metreon 16', '135 4th St #3000', Icons.theaters),
        ],
      );

ListTile _tile(String title, String subtitle, IconData icon) => ListTile(
        title: Text(title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            )),
        subtitle: Text(subtitle),
        leading: Icon(
          icon,
          color: Colors.blue[500],
        ),
      );
/*
class HomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  HomePageState createState() => new HomePageState();
}


class HomePageState extends State<HomePage>{
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(appBar: new AppBar(
        title: new Text(widget.title),
      ),
       body: Center(
         Text(
          'Hello, xxx! Welcome back to Buffer-like-Buffet, your best comprehensive help when it comes to personal finance!',
          textAlign: TextAlign.center,
         // overflow: TextOverflow.ellipsis,
         style: TextStyle(fontWeight: FontWeight.bold),
         )
         SimpleRoundButton(
          backgroundColor: Colors.redAccent,
          buttonText: Text("LOGIN", 
          style: TextStyle(
            color: Colors.white
        ),
    ),
    textColor: Colors.white,
)
       ]
        ),
      ),
}
}
*/

//class TopicsPage extends State



