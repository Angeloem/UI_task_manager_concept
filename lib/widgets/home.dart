import 'package:flutter/material.dart';

import '../constants/constants.dart';
import 'appbar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const AppBarWidget(),

          //
          const SizedBox(
            height: 100,
          ),

          //
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .05,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Project',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      'All Task',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),

                //
                Container(
                  height: 251,
                  width: MediaQuery.of(context).size.width * .9,
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 250,
                          width: MediaQuery.of(context).size.width / 2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: primaryColor,
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 16,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: const Icon(Icons.gamepad_outlined),
                              ),

                              //
                              const Text(
                                'Game design',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),

                              //
                              Text(
                                'Create menu in dashboard & Make user flow',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(.7),
                                  letterSpacing: 1.1,
                                  fontSize: 16,
                                ),
                              ),

                              //
                              SizedBox(
                                width: double.infinity,
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Center(
                                      child: Icon(
                                        Icons.chevron_right,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        const SizedBox(
                          width: 12,
                        ),

                        //
                        Container(
                          height: 210,
                          width: MediaQuery.of(context).size.width / 2 -
                              MediaQuery.of(context).size.width * .1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: const Color(0xFFF5F5F5),
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 16,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: const Icon(Icons.pie_chart_rounded),
                              ),

                              //
                              const Text(
                                'Decision',
                                style: TextStyle(
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),

                              //
                              const Text(
                                'Create menu in dashboard & Make user flow',
                                style: TextStyle(
                                  color: primaryColor,
                                  letterSpacing: 1.1,
                                  fontSize: 16,
                                ),
                              ),

                              //
                              SizedBox(
                                width: double.infinity,
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Center(
                                      child: Icon(
                                        Icons.chevron_right,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //
                Container(
                  margin: const EdgeInsets.only(top: 16, bottom: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Tasks',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        'View all',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),

                //
                Column(
                  children: [
                    ...[1, 2, 3, 4, 5, 6].map((e) => Container(
                          margin: const EdgeInsets.symmetric(vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: const <BoxShadow>[
                              BoxShadow(
                                offset: Offset(0, 2),
                                spreadRadius: -9,
                                blurRadius: 8,
                                color: Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ],
                          ),
                          child: ListTile(
                            leading: Checkbox(
                              value: 1 == e,
                              onChanged: (bool? e) {},
                              checkColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                              fillColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return primaryColor.withOpacity(.32);
                                }
                                return primaryColor;
                              }),
                            ),
                            title: const Text(
                              'Create menu in dashboard & Make user flow',
                            ),
                            trailing: Container(
                              height: 10,
                              width: 10,
                              decoration: const BoxDecoration(
                                color: primaryColor,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
