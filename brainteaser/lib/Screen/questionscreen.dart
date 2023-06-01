import 'package:brainteaser/Screen/progressbar.dart';
import 'package:brainteaser/Screen/questioncard_1.dart';
import 'package:brainteaser/Screen/side_bar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class Progressbar extends StatelessWidget {
  const Progressbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Navbar(),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          elevation: 0,
          actions: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple[300],
                    shape: const StadiumBorder()),
                onPressed: () {},
                child: const Text('Skip')),
            const BackButton()
          ],
          backgroundColor: Colors.transparent),
      backgroundColor: Colors.pink[300],
      body: Stack(
        children: [
          SafeArea(
              child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Progresbar(),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text.rich(TextSpan(
                    text: "Question 1",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(color: Colors.white),
                    children: [
                      TextSpan(
                          text: "/10",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(color: Colors.white))
                    ])),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: 1.5,
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: PageView.builder(
                      itemBuilder: (context, index) => const Questioncard())),
            ],
          ))
        ],
      ),
    );
  }
}
