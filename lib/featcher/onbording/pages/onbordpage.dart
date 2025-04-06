import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sign_up_page/featcher/onbording/components/cusomgeserdetector.dart';
import 'package:sign_up_page/featcher/onbording/components/cusomonbord.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  void _goToPage(int index) {
    _pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: Column(
            children: [
              /// Skip Button
              if (_currentIndex < 2)
                Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () => _goToPage(2),
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                      ),
                    ),
                  ),
                )
              else
                SizedBox(width: 60.h), // Empty space

              /// Page View
              Expanded(
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  children: const [
                    OnboardingPage(
                      imagePath: 'assets/images/undraw_educator_re_s3jk.png',
                      text: 'Welcome to DWD',
                      description:
                          'Welcome as you learn a world-changing skill to get a better job.',
                    ),
                    OnboardingPage(
                      imagePath:
                          'assets/images/undraw_online_learning_re_qw08.png',
                      text: 'Choose Your Course',
                      description:
                          'Choose the course of your choice and gain industry knowledge and experience in it.',
                    ),
                    OnboardingPage(
                      imagePath:
                          'assets/images/undraw_certification_re_ifll.png',
                      text: 'Get Certified',
                      description:
                          'Start learning and get certified after your training to get a lucrative job.',
                    ),
                  ],
                ),
              ),

              /// Page Indicators
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) {
                  return AnimatedContainer(
                    duration: Duration(milliseconds: 400),
                    margin: EdgeInsets.symmetric(horizontal: 5.w),
                    width: _currentIndex == index ? 20.w : 10.w,
                    height: 10.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color:
                          _currentIndex == index ? Colors.purple : Colors.grey,
                    ),
                  );
                }),
              ),

              /// Navigation Buttons
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// Back button
                    if (_currentIndex > 0)
                      GestureDetector(
                          child: Text(
                            'Back',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple,
                            ),
                          ),
                          onTap: () {
                            _pageController.previousPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          })
                    else
                      SizedBox(width: 60.w), // Empty space for alignment

                    /// Next / Finish button
                    Cusomgeserdetector(
                      text: _currentIndex == 2 ? 'Finish' : 'Next',
                      onTap: () {
                        if (_currentIndex < 2) {
                          _goToPage(_currentIndex + 1);
                        } else {
                          // Finish pressed — navigate to Home or Login
                          // Navigator.pushReplacement(...);
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
