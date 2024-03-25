import 'package:basketball_points_counter_app/Widgets/widgets.dart';
import 'package:flutter/material.dart';
import '../Widgets/button.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int teamAPoints = 0;
  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'Points Counter',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
            fontFamily: 'font',
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Team(
                teamName: 'Team A',
                number: '$teamAPoints',
                function1: () {
                  setState(
                    () {
                      teamAPoints += 1;
                    },
                  );
                },
                function2: () {
                  setState(
                    () {
                      teamAPoints += 2;
                    },
                  );
                },
                function3: () {
                  setState(
                    () {
                      teamAPoints += 3;
                    },
                  );
                },
              ),
              const VerticalDivider(
                color: Colors.grey,
                thickness: 2,
                indent: 50,
                endIndent: 50,
              ),
              Team(
                teamName: 'Team B',
                number: '$teamBPoints',
                function1: () {
                  setState(
                    () {
                      teamBPoints += 1;
                    },
                  );
                },
                function2: () {
                  setState(
                    () {
                      teamBPoints += 2;
                    },
                  );
                },
                function3: () {
                  setState(
                    () {
                      teamBPoints += 3;
                    },
                  );
                },
              )
            ],
          ),
          Button(
            text: 'Reset',
            function: () {
              setState(
                () {
                  teamAPoints = 0;
                  teamBPoints = 0;
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
