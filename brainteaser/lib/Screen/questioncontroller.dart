import 'package:brainteaser/Screen/question.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuestionsController extends GetxController
    with
        // ignore: deprecated_member_use
        SingleGetTickerProviderMixin {
  late AnimationController _animationController;
  late Animation _animation;
  Animation get animation => this._animation;

  List<Question> get _question => this._question;
  @override
  void onInit() {
    // ignore: todo
    // TODO: implement onInit
    _animationController =
        AnimationController(duration: const Duration(seconds: 60), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        update();
      });
    _animationController.forward();
    super.onInit();
  }
}
