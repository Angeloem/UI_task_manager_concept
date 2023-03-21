import 'package:flutter/material.dart';
import 'package:task_manager_concept/constants/constants.dart';

import 'date_slide.dart';

class PerDayScreen extends StatefulWidget {
  const PerDayScreen({Key? key}) : super(key: key);

  @override
  State<PerDayScreen> createState() => _PerDayScreenState();
}

class _PerDayScreenState extends State<PerDayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 150,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'November 13, 2021',
                            style: TextStyle(
                              color: primaryColor.withOpacity(.8),
                              fontSize: 16,
                            ),
                          ),

                          const SizedBox(
                            height: 12,
                          ),

                          //
                          const Text(
                            'Today',
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      //
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: Image.network(
                          'https://random.imagecdn.app/150/150',
                        ),
                      ),
                    ],
                  ),
                ),

                //
                const DateSlideWidget(),

                //
                const SizedBox(
                  height: 16,
                ),

                //
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _ballAndLine(true),

                          //
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              // height: 165,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/images/background.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Meeting',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge
                                            ?.copyWith(
                                              fontSize: 32,
                                              color: Colors.white,
                                            ),
                                      ),

                                      //
                                      Text(
                                        '9.00 AM',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge
                                            ?.copyWith(
                                              color: Colors.white,
                                            ),
                                      )
                                    ],
                                  ),

                                  //
                                  const SizedBox(
                                    height: 16,
                                  ),

                                  //
                                  const Text(
                                    'Discuss team task for the day',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      letterSpacing: .9,
                                    ),
                                  ),

                                  //
                                  const SizedBox(
                                    height: 30,
                                  ),

                                  //
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Stack(
                                        clipBehavior: Clip.none,
                                        children: [
                                          ClipOval(
                                            clipBehavior: Clip.hardEdge,
                                            child: Image.network(
                                              'https://random.imagecdn.app/150/150',
                                              height: 50,
                                              width: 50,
                                            ),
                                          ),
                                          Positioned(
                                            left: 40,
                                            child: Container(
                                              clipBehavior: Clip.hardEdge,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.white,
                                                ),
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                'https://random.imagecdn.app/149/149',
                                                height: 50,
                                                width: 50,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 80,
                                            child: ClipOval(
                                              clipBehavior: Clip.hardEdge,
                                              child: Image.network(
                                                'https://random.imagecdn.app/151/151',
                                                height: 50,
                                                width: 50,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),

                                      //
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: const Center(
                                          child: Icon(Icons.check),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),

                          //
                        ],
                      ),
                    ),

                    //
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _ballAndLine(),

                          //
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.zero,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Icon set',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge
                                            ?.copyWith(
                                              fontSize: 32,
                                              color: primaryColor,
                                            ),
                                      ),

                                      //
                                      Text(
                                        '10.00 AM',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge
                                            ?.copyWith(
                                              color: primaryColor,
                                            ),
                                      )
                                    ],
                                  ),

                                  //
                                  const SizedBox(
                                    height: 16,
                                  ),

                                  //
                                  Text(
                                    'Edit icons for team task for next week',
                                    softWrap: true,
                                    style: TextStyle(
                                      color: primaryColor.withOpacity(.3),
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: .9,
                                    ),
                                  ),

                                  //
                                  const SizedBox(
                                    height: 30,
                                  ),

                                  //
                                  // Row(
                                  //   mainAxisAlignment:
                                  //       MainAxisAlignment.spaceBetween,
                                  //   children: [
                                  //     Stack(
                                  //       clipBehavior: Clip.none,
                                  //       children: [
                                  //         ClipOval(
                                  //           clipBehavior: Clip.hardEdge,
                                  //           child: Image.network(
                                  //             'https://random.imagecdn.app/150/150',
                                  //             height: 50,
                                  //             width: 50,
                                  //           ),
                                  //         ),
                                  //         Positioned(
                                  //           left: 40,
                                  //           child: Container(
                                  //             clipBehavior: Clip.hardEdge,
                                  //             decoration: BoxDecoration(
                                  //               border: Border.all(
                                  //                 color: Colors.white,
                                  //               ),
                                  //               shape: BoxShape.circle,
                                  //             ),
                                  //             child: Image.network(
                                  //               'https://random.imagecdn.app/149/149',
                                  //               height: 50,
                                  //               width: 50,
                                  //             ),
                                  //           ),
                                  //         ),
                                  //         Positioned(
                                  //           left: 80,
                                  //           child: ClipOval(
                                  //             clipBehavior: Clip.hardEdge,
                                  //             child: Image.network(
                                  //               'https://random.imagecdn.app/151/151',
                                  //               height: 50,
                                  //               width: 50,
                                  //             ),
                                  //           ),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //
                                  //     //
                                  //     Container(
                                  //       height: 50,
                                  //       width: 50,
                                  //       decoration: BoxDecoration(
                                  //         color: Colors.white,
                                  //         borderRadius:
                                  //             BorderRadius.circular(8),
                                  //       ),
                                  //       child: const Center(
                                  //         child: Icon(Icons.check),
                                  //       ),
                                  //     )
                                  //   ],
                                  // )
                                ],
                              ),
                            ),
                          ),

                          //
                        ],
                      ),
                    ),

                    //
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _ballAndLine(),

                          //
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.zero,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Prototype',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge
                                            ?.copyWith(
                                              fontSize: 32,
                                              color: primaryColor,
                                            ),
                                      ),

                                      //
                                      Text(
                                        '11.00 AM',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge
                                            ?.copyWith(
                                              color: primaryColor,
                                            ),
                                      )
                                    ],
                                  ),

                                  //
                                  const SizedBox(
                                    height: 16,
                                  ),

                                  //
                                  Text(
                                    'Make and send prototype to the client',
                                    softWrap: true,
                                    style: TextStyle(
                                      color: primaryColor.withOpacity(.3),
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: .9,
                                    ),
                                  ),

                                  //
                                  const SizedBox(
                                    height: 30,
                                  ),
                                ],
                              ),
                            ),
                          ),

                          //
                        ],
                      ),
                    ),

                    //
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _ballAndLine(),

                          //
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.zero,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Check asset',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge
                                            ?.copyWith(
                                              fontSize: 32,
                                              color: primaryColor,
                                            ),
                                      ),

                                      //
                                      Text(
                                        '12.00 PM',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge
                                            ?.copyWith(
                                              color: primaryColor,
                                            ),
                                      )
                                    ],
                                  ),

                                  //
                                  const SizedBox(
                                    height: 16,
                                  ),

                                  //
                                  Text(
                                    'Start checking asset',
                                    softWrap: true,
                                    style: TextStyle(
                                      color: primaryColor.withOpacity(.3),
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: .9,
                                    ),
                                  ),

                                  //
                                  const SizedBox(
                                    height: 30,
                                  ),
                                ],
                              ),
                            ),
                          ),

                          //
                        ],
                      ),
                    ),
                  ],
                )
                //
              ],
            ),
          ),
        ),
      ),
    );
  }

  _ballAndLine([bool? filled]) {
    return Container(
      margin: const EdgeInsets.only(right: 36),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                color: primaryColor,
              ),
            ),
            padding:
                (filled ?? false) ? const EdgeInsets.all(2) : EdgeInsets.zero,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: (filled ?? false) ? primaryColor : Colors.white,
              ),
              height: 15,
              width: 15,
            ),
          ),

          //
          Container(
            margin: const EdgeInsets.only(top: 8),
            width: 3,
            height: filled ?? false ? 160: 100,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(1),
            ),
          ),
        ],
      ),
    );
  }
}
