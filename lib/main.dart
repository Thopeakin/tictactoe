import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TicTacToe(),
    );
  }
}

class TicTacToe extends StatefulWidget {
  @override
  TicTacToeState createState() => TicTacToeState();
}

class TicTacToeState extends State<TicTacToe> {
  String stat = ' ';

  String player = 'O';
  List gameBoard = [['', '', ''],
                    ['', '', ''],
                    ['', '', ''],
                   ];

  void play(x, y){
    if(gameBoard[x][y].length == 0 && stat.length == 1){
      setState(() {
        if (player == 'X') {
          player = 'O';
        }
        else {
          player = 'X';
        }
        gameBoard[x][y] = player;
      });
      if(gameBoard[0][0] != '' && (gameBoard[0][0] == gameBoard[0][1] && gameBoard[0][1] == gameBoard[0][2])){
        stat = '${gameBoard[0][0]} Wins!';
      }
      else if(gameBoard[0][0] != '' && (gameBoard[0][0] == gameBoard[1][0] && gameBoard[1][0] == gameBoard[2][0])){
        stat = '${gameBoard[0][0]} Wins!';
      }
      else if(gameBoard[0][1] != '' && (gameBoard[0][1] == gameBoard[1][1] && gameBoard[1][1] == gameBoard[2][1])){
        stat = '${gameBoard[0][1]} Wins!';
      }
      else if(gameBoard[0][2] != '' && (gameBoard[0][2] == gameBoard[1][2] && gameBoard[1][2] == gameBoard[2][2])){
        stat = '${gameBoard[0][2]} Wins!';
      }
      else if(gameBoard[1][0] != '' && (gameBoard[1][0] == gameBoard[1][1] && gameBoard[1][1] == gameBoard[1][2])){
        stat = '${gameBoard[1][0]} Wins!';
      }
      else if(gameBoard[2][0] != '' && (gameBoard[2][0] == gameBoard[2][1] && gameBoard[2][1] == gameBoard[2][2])){
        stat = '${gameBoard[2][0]} Wins!';
      }
      else if(gameBoard[0][0] != '' && (gameBoard[0][0] == gameBoard[1][1] && gameBoard[1][1] == gameBoard[2][2])){
        stat = '${gameBoard[0][0]} Wins!';
      }
      else if(gameBoard[0][2] != '' && (gameBoard[0][2] == gameBoard[1][1] && gameBoard[1][1] == gameBoard[2][0])){
        stat = '${gameBoard[0][2]} Wins!';
      }

    }

  }

  void clear(){
    setState(() {
      gameBoard = [['', '', ''],
                   ['', '', ''],
                   ['', '', ''],
                  ];
      stat = ' ';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.width * 0.95,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        GestureDetector(
                          child: Container(
                            color: Colors.lightBlueAccent,
                            width: MediaQuery.of(context).size.width * 0.2785,
                            height: MediaQuery.of(context).size.width * 0.2785,
                            child: Card(
                              elevation: 15,
                              child: Center(
                                child: Text(
                                  gameBoard[0][0],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35.0,
                                    color: (gameBoard[0][0] == "X") ? Colors.green : Colors.red,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          onTap: (){
                            play(0, 0);
                          },
                        ),
                        GestureDetector(
                          child: Container(
                            color: Colors.lightBlueAccent,
                            width: MediaQuery.of(context).size.width * 0.2785,
                            height: MediaQuery.of(context).size.width * 0.2785,
                            child: Card(
                              elevation: 15,
                              child: Center(
                                child: Text(
                                  gameBoard[0][1],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35.0,
                                    color: (gameBoard[0][1] == "X") ? Colors.green : Colors.red,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          onTap: (){
                            play(0, 1);
                          },
                        ),
                        GestureDetector(
                          child: Container(
                            color: Colors.lightBlueAccent,
                            width: MediaQuery.of(context).size.width * 0.2785,
                            height: MediaQuery.of(context).size.width * 0.2785,
                            child: Card(
                              elevation: 15,
                              child: Center(
                                child: Text(
                                  gameBoard[0][2],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35.0,
                                    color: (gameBoard[0][2] == "X") ? Colors.green : Colors.red,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          onTap: (){
                            play(0, 2);
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        GestureDetector(
                          child: Container(
                            color: Colors.lightBlueAccent,
                            width: MediaQuery.of(context).size.width * 0.2785,
                            height: MediaQuery.of(context).size.width * 0.2785,
                            child: Card(
                              elevation: 15,
                              child: Center(
                                child: Text(
                                  gameBoard[1][0],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35.0,
                                    color: (gameBoard[1][0] == "X") ? Colors.green : Colors.red,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          onTap: (){
                            play(1, 0);
                          },
                        ),
                        GestureDetector(
                          child: Container(
                            color: Colors.lightBlueAccent,
                            width: MediaQuery.of(context).size.width * 0.2785,
                            height: MediaQuery.of(context).size.width * 0.2785,
                            child: Card(
                              elevation: 15,
                              child: Center(
                                child: Text(
                                  gameBoard[1][1],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35.0,
                                    color: (gameBoard[1][1] == "X") ? Colors.green : Colors.red,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          onTap: (){
                            play(1, 1);
                          },
                        ),
                        GestureDetector(
                          child: Container(
                            color: Colors.lightBlueAccent,
                            width: MediaQuery.of(context).size.width * 0.2785,
                            height: MediaQuery.of(context).size.width * 0.2785,
                            child: Card(
                              elevation: 15,
                              child: Center(
                                child: Text(
                                  gameBoard[1][2],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35.0,
                                    color: (gameBoard[1][2] == "X") ? Colors.green : Colors.red,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          onTap: (){
                            play(1, 2);
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        GestureDetector(
                          child: Container(
                            color: Colors.lightBlueAccent,
                            width: MediaQuery.of(context).size.width * 0.2785,
                            height: MediaQuery.of(context).size.width * 0.2785,
                            child: Card(
                              elevation: 15,
                              child: Center(
                                child: Text(
                                  gameBoard[2][0],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35.0,
                                    color: (gameBoard[2][0] == "X") ? Colors.green : Colors.red,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          onTap: (){
                            play(2, 0);
                          },
                        ),
                        GestureDetector(
                          child: Container(
                            color: Colors.lightBlueAccent,
                            width: MediaQuery.of(context).size.width * 0.2785,
                            height: MediaQuery.of(context).size.width * 0.2785,
                            child: Card(
                              elevation: 15,
                              child: Center(
                                child: Text(
                                  gameBoard[2][1],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35.0,
                                    color: (gameBoard[2][1] == "X") ? Colors.green : Colors.red,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          onTap: (){
                            play(2, 1);
                          },
                        ),
                        GestureDetector(
                          child: Container(
                            color: Colors.lightBlueAccent,
                            width: MediaQuery.of(context).size.width * 0.2785,
                            height: MediaQuery.of(context).size.width * 0.2785,
                            child: Card(
                              elevation: 15,
                              child: Center(
                                child: Text(
                                  gameBoard[2][2],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35.0,
                                    color: (gameBoard[2][2] == "X") ? Colors.green : Colors.red,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          onTap: (){
                            play(2, 2);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  0,
                  MediaQuery.of(context).size.height * 0.010,
                  0,
                  MediaQuery.of(context).size.height * 0.0010),
              child: Text(stat,
                  style: TextStyle(
                    fontSize: 30.0,
                    color: (stat[0] == 'X') ? Colors.green : Colors.red,
                  )),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            RaisedButton(
              onPressed: (){
                clear();
              },
              child: Text(
                'Clear',
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ]),
    );
  }
}
