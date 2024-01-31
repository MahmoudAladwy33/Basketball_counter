import 'package:flutter/material.dart';

void main() {
  runApp(BasketballCounter());
}

class BasketballCounter extends StatefulWidget {
  @override
  State<BasketballCounter> createState() => _BasketballCounterState();
}

class _BasketballCounterState extends State<BasketballCounter> {
  int teamApoints = 0;

  int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.sports_basketball,
            color: Color.fromARGB(255, 196, 69, 47),
          ),
          title: Text('Points Counter'),
          backgroundColor: Color(0XFF17408B),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 82,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("images/team1.jpg"),
                        radius: 80,
                      ),
                    ),
                    Text(
                      '$teamApoints',
                      style: TextStyle(
                        fontSize: 150,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0XFFC9072A),
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamApoints++;
                          });
                        },
                        child: Text(
                          'Add 1 point',
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0XFFC9072A),
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamApoints += 2;
                          });
                        },
                        child: Text(
                          'Add 2 point',
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0XFFC9072A),
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamApoints += 3;
                          });
                        },
                        child: Text(
                          'Add 3 point',
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 450,
                  child: VerticalDivider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 82,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("images/team2.jpg"),
                        radius: 80,
                      ),
                    ),
                    Text(
                      '$teamBpoints',
                      style: TextStyle(
                        fontSize: 150,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0XFFC9072A),
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBpoints++;
                          });
                        },
                        child: Text(
                          'Add 1 point',
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0XFFC9072A),
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBpoints += 2;
                          });
                        },
                        child: Text(
                          'Add 2 point',
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0XFFC9072A),
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBpoints += 3;
                          });
                        },
                        child: Text(
                          'Add 3 point',
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0XFFC9072A),
                  minimumSize: Size(150, 50),
                ),
                onPressed: () {
                  setState(() {
                    teamBpoints = 0;
                    teamApoints = 0;
                  });
                },
                child: Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
