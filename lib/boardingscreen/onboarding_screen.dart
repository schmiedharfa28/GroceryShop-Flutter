import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:flutter_jago_coding_lat/loginregister/login.dart';

import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => Login()),
    );
  }

  Widget _buildFullscrenImage(String assetName) {
    return Image.asset(
      'assets/icons/$assetName',
      fit: BoxFit.cover,
      width: double.infinity,
      height: 381,
      alignment: Alignment.center,
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 13.0, fontWeight: FontWeight.w400);

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
      bodyTextStyle: bodyStyle,
      // descriptionPadding: EdgeInsets.fromLTRB(),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,

      pages: [
        PageViewModel(
          title: "The best choices just for you",
          body:
              "“Orang bijak harus mempertimbangkan bahwa\nkesehatan adalah berkat terbesar manusia.\nBiarkan makanan menjadi obat dan obat\nmenjadi makanan Anda. ”\n- Hippocrates",
          image: _buildFullscrenImage(
            'boardone.png',
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "The best choices just for you",
          body:
              "“Makananmu adalah akun bankmu. Pilihan makanan\nyang baik adalah investasi yang baik”\n– Bethenny Frankel",
          image: _buildFullscrenImage('boardtwo.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "The best choices just for you",
          body:
              "“Makan adalah suatu keharusan,\ntetapi memilih jenis makan dengan cerdas adalah seni”\n– La Rochefoucauld",
          image: _buildFullscrenImage('boardthree.png'),
          decoration: pageDecoration,
        ),
      ],

      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      color: Color(0xffE5F0E5),
      nextFlex: 0,
      //rtl: true, // Display as right-to-left
      skip: const Text(
        'Skip',
        style: TextStyle(
            color: Color(0xff53BC3D),
            fontSize: 16,
            fontWeight: FontWeight.bold),
      ),
      next: const Icon(
        Icons.arrow_forward,
        color: Color(0xff53BC3D),
      ),
      done: const Text('Done',
          style:
              TextStyle(fontWeight: FontWeight.w600, color: Color(0xff53BC3D))),
      curve: Curves.fastLinearToSlowEaseIn,

      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(0.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(12.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeColor: Color(0xff53BC3D),
        activeSize: Size(10.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
