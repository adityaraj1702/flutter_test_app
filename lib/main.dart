import 'package:flutter/material.dart';
import 'package:flutter_test_app/on_boarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<OnBoardingEntity> _onBoardingData = OnBoardingEntity.onBoardingData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
      physics: const BouncingScrollPhysics(
          decelerationRate: ScrollDecelerationRate.fast),
      itemCount: _onBoardingData.length,
      itemBuilder: (context, index) {
        return OnBoardingItem(
            title: _onBoardingData[index].title,
            discription: _onBoardingData[index].discription,
            image: _onBoardingData[index].image,
            index: index);
      },
    ));
  }
}

class OnBoardingItem extends StatelessWidget {
  final String title;
  final String discription;
  final String image;
  final int index;

  const OnBoardingItem(
      {super.key,
      required this.title,
      required this.discription,
      required this.image,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            width: 300,
            height: 200,
            child: Center(
              child: Image.asset("assets/images/$image"),
            )),
        const SizedBox(
          height: 20,
        ),
        Text(title,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 20,
        ),
        Text(
          discription,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 18, color: Colors.grey),
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: index == 0 ? Colors.black : Colors.grey,
                )),
            const SizedBox(
              width: 10,
            ),
            Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: index == 1 ? Colors.black : Colors.grey,
                )),
            const SizedBox(
              width: 10,
            ),
            Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: index == 2 ? Colors.black : Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
