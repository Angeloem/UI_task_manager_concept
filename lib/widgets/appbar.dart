import 'package:flutter/material.dart';

import '../constants/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/background.png',
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
            ),
            width: MediaQuery.of(context).size.width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Hey Marimar !',
                        style: TextStyle(
                          color: Colors.white.withOpacity(.8),
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Let\'s find your best project!',
                        style: TextStyle(
                          color: Colors.white.withOpacity(.8),
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
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
          Positioned(
            bottom: -30,
            left: MediaQuery.of(context).size.width * .05,
            height: 60,
            width: MediaQuery.of(context).size.width * .9,
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(248, 248, 248, 1),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: const Color.fromRGBO(222, 222, 222, .5),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: const Icon(
                          Icons.search,
                        ),
                      ),

                      //
                      const Text(
                        'Search',
                      ),
                    ],
                  ),

                  //
                  Container(
                    width: 40,
                    height: 40,
                    margin: const EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.settings_outlined,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
