import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      // theme: ThemeData(          // Add the 3 lines from here... 
      //   primaryColor: Colors.white,
      // ),                         // ... to here.
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(child: Column(
        mainAxisSize: MainAxisSize.min, 
        children: <Widget>[Text('Where does this go'), 
      RaisedButton(onPressed: () {navigateToTopicPage(context);},
            child: Text('Get Started', style: TextStyle(fontSize: 20)),
          ),
          //SizedBox(height: 30)
      ]))
    );
  }
  Future navigateToTopicPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => TopicPage()));
}



  // void _topicPage() {
  //   Navigator.of(context).push(
  //     MaterialPageRoute<void>(
  //       // NEW lines from here...
  //       builder: (BuildContext context) {
  //       return Scaffold(
  //           appBar: AppBar(
  //             title: Text('Topics'),
  //           ),
  //           body: Center(child: Text('new page'))
  //         );
  //       },
  //   ),
  //   );
  // }
}

class TopicPage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text('Topic Page'),
      ),
      body: Center(child: Column(
        mainAxisSize: MainAxisSize.min, 
        children: <Widget>[Text('Where does this go'), 
      RaisedButton(onPressed: () {},
            child: Text('Get Started', style: TextStyle(fontSize: 20)),
          ),
          //SizedBox(height: 30)
      ]))
    );
  }
}




// class RandomWords extends StatefulWidget {
//   @override
//   _RandomWordsState createState() => _RandomWordsState();   //By default, the name of the State class is prefixed with an underscore. Prefixing an identifier with an underscore enforces privacy in the Dart language and is a recommended best practice for State objects.
// }

// class _RandomWordsState extends State<RandomWords> {
//   final List<WordPair> _suggestions = <WordPair>[];            // NEW
//   final _saved = Set<WordPair>();     // NEW
//   final TextStyle _biggerFont = const TextStyle(fontSize: 18); // NEW
//   @override                                  
//   Widget build(BuildContext context) {
//       //final wordPair = WordPair.random(); // Delete these... 
//     //return Text(wordPair.asPascalCase); // ... two lines.

//     return Scaffold (                     // Add from here... 
//       appBar: AppBar(
//         title: Text('Startup Name Generator'),
//          actions: [
//           IconButton(icon: Icon(Icons.list), onPressed: _pushSaved),
//         ],
//       ),
//       body: _buildSuggestions(),
//     );                                      // ... to here.
//   }   

//  void _pushSaved() {
//     Navigator.of(context).push(
//       MaterialPageRoute<void>(
//         // NEW lines from here...
//         builder: (BuildContext context) {
//           final tiles = _saved.map(
//             (WordPair pair) {
//               return ListTile(
//                 title: Text(
//                   pair.asPascalCase,
//                   style: _biggerFont,
//                 ),
//               );
//             },
//           );
//           final divided = ListTile.divideTiles(
//             context: context,
//             tiles: tiles,
//           ).toList();

//           return Scaffold(
//             appBar: AppBar(
//               title: Text('Saved Suggestions'),
//             ),
//             body: ListView(children: divided),
//           );
//         }, // ...to here.
//       ),
//     );
//   }


//   Widget _buildSuggestions() {
//     return ListView.builder(
//       padding: const EdgeInsets.all(16),
//       // The itemBuilder callback is called once per suggested 
//       // word pairing, and places each suggestion into a ListTile
//       // row. For even rows, the function adds a ListTile row for
//       // the word pairing. For odd rows, the function adds a 
//       // Divider widget to visually separate the entries. Note that
//       // the divider may be difficult to see on smaller devices.
//       itemBuilder: (BuildContext _context, int i) {
//         // Add a one-pixel-high divider widget before each row 
//         // in the ListView.
//         if (i.isOdd) {
//           return Divider();
//         }

//         // The syntax "i ~/ 2" divides i by 2 and returns an 
//         // integer result.
//         // For example: 1, 2, 3, 4, 5 becomes 0, 1, 1, 2, 2.
//         // This calculates the actual number of word pairings 
//         // in the ListView,minus the divider widgets.
//         final int index = i ~/ 2;
//         // If you've reached the end of the available word
//         // pairings...
//         if (index >= _suggestions.length) {
//           // ...then generate 10 more and add them to the 
//           // suggestions list.
//           _suggestions.addAll(generateWordPairs().take(10));
//         }
//         return _buildRow(_suggestions[index]);
//       }
//     );
//   }

//    Widget _buildRow(WordPair pair) {
//     final alreadySaved = _saved.contains(pair);  // NEW
//     return ListTile(
//       title: Text(
//         pair.asPascalCase,
//         style: _biggerFont,
//       ),
//       trailing: Icon(   // NEW from here... 
//       alreadySaved ? Icons.favorite : Icons.favorite_border,
//       color: alreadySaved ? Colors.red : null,
//     ),                // ... to here.
//      onTap: () {      // NEW lines from here...
//       setState(() {
//         if (alreadySaved) {
//           _saved.remove(pair);
//         } else { 
//           _saved.add(pair); 
//         } 
//       });
//      }
//     );
//   }                                      
// }

