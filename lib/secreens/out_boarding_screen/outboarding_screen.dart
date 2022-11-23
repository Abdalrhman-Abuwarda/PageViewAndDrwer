import 'package:flutter/material.dart';
import 'package:mommen_page_view/secreens/out_boarding_screen/outboarding_content.dart';

import 'out_bording_indicator.dart';

class OutBoardungScreen extends StatefulWidget {
  const OutBoardungScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<OutBoardungScreen> createState() => _OutBoardungScreenState();
}

class _OutBoardungScreenState extends State<OutBoardungScreen> {
  int currentIndex = 0;

  PageController _pageController = PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (int currentPage) {
              print(currentPage);
              setState(() {
                currentIndex = currentPage;
              });
            },
            controller: _pageController,
            scrollDirection: Axis.horizontal,
            children: [
              OutBoardingContatnt(
                color: Colors.pinkAccent,
                titel: "Good Player",
              ),
              OutBoardingContatnt(
                color: Colors.red,
                titel: "Noop Player",
              ),
              OutBoardingContatnt(
                color: Colors.white38,
                titel: "Khawal Player",
              ),
            ],
          ),
          if (currentIndex != 2)
            PositionedDirectional(
              top: 40,
              end: 20,
              child: ElevatedButton(
                onPressed: () {
                  _pageController.jumpToPage(2);
                },
                child: Text("Skip"),
              ),
            ),
          PositionedDirectional(
            bottom: 30,
            start: 0,
            end: 0,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutBordingIndecator(
                      index: 0,
                      currentIndex: currentIndex,
                    ),
                    OutBordingIndecator(
                      index: 1,
                      currentIndex: currentIndex,
                    ),
                    OutBordingIndecator(
                      index: 2,
                      currentIndex: currentIndex,
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                if(currentIndex == 2)
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/home_screen');
                    },
                    child: Text('Start'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsetsDirectional.only(start: 40, end: 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {
                          _pageController.previousPage(
                              duration: const Duration(milliseconds: 250),
                              curve: Curves.easeInOut);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color:
                              currentIndex == 0 ? Colors.white38 : Colors.black,
                        )),
                    const SizedBox(
                      width: 20,
                    ),
                    IconButton(
                        onPressed: () {
                          _pageController.nextPage(
                              duration: const Duration(milliseconds: 250),
                              curve: Curves.easeInOut);
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color:
                              currentIndex == 2 ? Colors.white38 : Colors.black,
                        )),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
