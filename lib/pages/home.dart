import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var neumorphicStyleProject = NeumorphicStyle(
    color: Colors.grey[200],
    depth: 4,
    intensity: 0.8,
  );
  var neumorphicStyleDepth = NeumorphicStyle(
    color: Colors.grey[200],
    depth: -4,
    intensity: 0.8,
  );

  String lyrics = '''  
C                  F       C
Blessed assurance, Jesus is mine!
         Am7 G    D            G
O what a foretaste of glory divine!
            C      F           C
Heir of salvation, purchase of God,
             Dm    G             C
Born of his Spirit, washed in his blood.
 
[Chorus]
           C     F           C
This is my story, this is my song,
             F  C   G       D   G
Praising my Savior all the day long;
 G7         C      F          C
This is my story, this is my song,
             Dm     G           C
Praising my Savior all the day long.
 
[Verse 2]
C                  F       C
Perfect submission, perfect delight,
           Am7 G   D                G
Visions of rapture  now burst on my sight;
           C      F             C
Angels descending  bring from above,
          Dm    G            C
Echoes of mercy, whispers of love.
 
[Chorus]
 C                 F          C
This is my story, this is my song,
             F  C   G       D   G
Praising my Savior all the day long;
 G7         C      F          C
This is my story, this is my song,
             Dm     G           C
Praising my Savior all the day long.
 
[Verse 3]
C                  F       C
Perfect submission, all is at rest;
        Am7 G  D             G
I in my Savior  am happy and blessed,
             C        F         C
Watching and waiting, looking above,
 C               Dm        G           C
Filled with his goodness, lost in his love.
 
[Chorus]
 C                 F          C
This is my story, this is my song,
             F      G           C
Praising my Savior all the day long;
 G7         C      F          C
This is my story, this is my song,
             Dm     G           C
Praising my Savior all the day long.''';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Neumorphic(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                padding: EdgeInsets.all(12),
                boxShape: NeumorphicBoxShape.roundRect(
                    borderRadius: BorderRadius.circular(12)),
                style: neumorphicStyleProject,
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/song_book.png',
                      height: 40,
                      width: 30,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Songs of Zion',
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.5),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Neumorphic(
                  boxShape: NeumorphicBoxShape.roundRect(
                      borderRadius: BorderRadius.circular(12)),
                  padding: EdgeInsets.all(12),
                  style: neumorphicStyleProject,
                  child: Text(
                    '001',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w300,
                        letterSpacing: 2),
                  ),
                ),
                Neumorphic(
                  boxShape: NeumorphicBoxShape.roundRect(
                      borderRadius: BorderRadius.circular(12)),
                  padding: EdgeInsets.all(12),
                  style: neumorphicStyleProject,
                  child: Text(
                    '- C maj +',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w300,
                        letterSpacing: 2),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15, 20, 15, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: NeumorphicButton(
                    boxShape: NeumorphicBoxShape.roundRect(
                        borderRadius: BorderRadius.circular(12)),
                    style: neumorphicStyleProject,
                    child: Center(
                      child: Text(
                        'Basic',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[800],
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: NeumorphicButton(
                    boxShape: NeumorphicBoxShape.roundRect(
                        borderRadius: BorderRadius.circular(12)),
                    style: neumorphicStyleProject,
//                          pressed: true,

                    child: Center(
                      child: Text(
                        'Intermediate',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[800],
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: NeumorphicButton(
                    style: neumorphicStyleProject,
                    child: Center(
                      child: Text(
                        'Advanced',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[800],
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Neumorphic(
            margin: EdgeInsets.fromLTRB(5, 20, 5, 0),
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            boxShape: NeumorphicBoxShape.roundRect(
                borderRadius: BorderRadius.circular(12)),
            style: neumorphicStyleDepth,
            child: Container(
              height: 460,
              child: ListView(
//                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Center(
                    child: Text(
                      'Blessed Assurance',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.5),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text(
                      lyrics,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.w300,
                          letterSpacing: 1.5),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
