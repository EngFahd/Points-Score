import 'package:flutter/material.dart';
import 'package:flutter_application_4/cubite/cubite.dart';
import 'package:flutter_application_4/cubite/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(Pointers());
}

class Pointers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child:const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
 const HomePage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterSate>(
      listener: (context, state) {
        // countA = BlocProvider.of<CounterCubit>(context).PointTeamA;
        // countB = BlocProvider.of<CounterCubit>(context).PointTeamB;
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Point Counter'),
            backgroundColor: Colors.orange,
          ),
          body: ListView(physics: const BouncingScrollPhysics(), children: [
            const SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // team A =======>
                    SizedBox(
                      height: 450,
                      child: Column(
                        children: [
                          const Text(
                            'Team A',
                            style: TextStyle(fontSize: 32, color: Colors.black),
                          ),
                          Text(
                            "${BlocProvider.of<CounterCubit>(context).PointTeamA}",
                            style: const TextStyle(
                                fontSize: 150, color: Colors.black),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  minimumSize: const Size(100, 60)),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .countPoints(BuutonNum: 1, team: 'A');
                              },
                              child: const Text(
                                "Add 1 Point",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  minimumSize: const Size(100, 60)),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .countPoints(BuutonNum: 2, team: 'A');
                              },
                              child: const Text(
                                "Add 2 Point",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  minimumSize: const Size(100, 60)),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .countPoints(BuutonNum: 3, team: 'A');
                              },
                              child: const Text(
                                "Add 3 Point",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 350,
                      child: VerticalDivider(
                        thickness: 2,
                        color: Colors.grey,
                      ),
                    ),

                    // team 2 ==========>

                    SizedBox(
                      height: 450,
                      child: Column(
                        children: [
                          const Text(
                            'Team B',
                            style: TextStyle(fontSize: 32, color: Colors.black),
                          ),
                          Text(
                            "${BlocProvider.of<CounterCubit>(context).PointTeamB}",
                            style: const TextStyle(
                                fontSize: 150, color: Colors.black),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  minimumSize: const Size(100, 60)),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .countPoints(BuutonNum: 1, team: 'B');
                              },
                              child: const Text(
                                "Add 1 Point",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  minimumSize: const Size(100, 60)),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .countPoints(BuutonNum: 2, team: 'B');
                              },
                              child: const Text(
                                "Add 2 Point",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  minimumSize: const Size(100, 60)),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .countPoints(BuutonNum: 3, team: 'B');
                              },
                              child: const Text(
                                "Add 3 Point",
                                style: TextStyle(
                                    fontSize: 22, color: Colors.black),
                              )),
                          const SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.orange, minimumSize:const Size(200, 50)),
                    onPressed: () {
                      BlocProvider.of<CounterCubit>(context).zeroPoints();
                    },
                    child: const Text(
                      "Rest",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    )),
              ],
            ),
          ]),
        );
      },
    );
  }
}
