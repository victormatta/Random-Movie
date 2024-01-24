import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(randonFilm());
}

class randonFilm extends StatelessWidget {
  const randonFilm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold (
        backgroundColor: Colors.red.shade400,
        appBar: AppBar (
          title: Center(
              child: Text(
                  'RandomFilm',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Pacifico',
                fontSize: 30,
              ),
              ),
          ),
          backgroundColor: Colors.red.shade900,
        ),
        body: bodyFilm(),
      ),
    );
  }
}

class bodyFilm extends StatefulWidget {
  const bodyFilm({super.key});

  @override
  State<bodyFilm> createState() => _bodyFilmState();
}

class _bodyFilmState extends State<bodyFilm> {
  int choseMovie = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/images/movie1.jpg'),
                  ),
                  ),
                  Expanded(child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/images/movie2.jpg'),
                  ),
                  ),
                  Expanded(child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/images/movie3.jpg'),
                  ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/images/movie4.jpg'),
                  ),
                  ),
                  Expanded(child:
                  Padding(
                    padding: const EdgeInsets.all(10.9),
                    child: Image.asset('assets/images/movie5.jpg'),
                  ),
                  ),
                  Expanded(child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/images/movie6.jpg'),
                  ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        choseMovie = Random().nextInt(6) + 1;
                        Image.asset('assets/images/movie${choseMovie}.jpg');
                      });
                    },
                      child: Text('Sort', style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                      ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red.shade900)
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Visibility(
                  visible: choseMovie > 0,
                  child: Expanded(child:
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 180,
                      width: 150,
                      child: Image.asset('assets/images/movie${choseMovie}.jpg'),),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}