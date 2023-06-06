import 'package:brain_teaser/app/modules/home/views/brain_teaser.dart';
import 'package:brain_teaser/app/modules/login/views/login_view.dart';
import 'package:brain_teaser/app/modules/register/views/register_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Brain Teaser'),
            centerTitle: true,
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                // Container(
                //     color: Colors.red,
                //     height: 200,
                //     child: const Center(
                //       child: CircleAvatar(
                //         radius: 80,
                //         backgroundImage: NetworkImage(
                //             "https://cdn.pixabay.com/photo/2017/06/22/20/33/quiz-2432440_960_720.png"),
                //       ),
                //     )),
                reusableListTile(icon: Icons.home, title: "Home"),
                reusableListTile(icon: Icons.info, title: "About"),
                reusableListTile(icon: Icons.phone, title: "games"),
                reusableListTile(icon: Icons.phone, title: "user"),
                reusableListTile(icon: Icons.phone, title: "Contact Us"),
                InkWell(
                    onTap: () {},
                    child:
                        reusableListTile(icon: Icons.logout, title: "LogOut")),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(8, 50, 8, 8),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BrainTeaser()),
                        );
                      },
                      child: reusableContainer(
                        title: "Computer Fundamentals",
                        icon: Icons.window,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    reusableContainer(title: "SpreadSheet", icon: Icons.rowing),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    reusableContainer(
                        title: "Word Processing", icon: Icons.wordpress),
                    const SizedBox(
                      width: 15,
                    ),
                    reusableContainer(title: "Database", icon: Icons.rowing),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    reusableContainer(title: "Web Design", icon: Icons.window),
                    const SizedBox(
                      width: 15,
                    ),
                    reusableContainer(
                        title: "Cyber Security", icon: Icons.rowing),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    reusableContainer(title: "Networking", icon: Icons.window),
                    const SizedBox(
                      width: 15,
                    ),
                    reusableContainer(
                        title: "Practice Question", icon: Icons.rowing),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    reusableContainer(
                        title: "Operating Stystem", icon: Icons.window),
                    const SizedBox(
                      width: 15,
                    ),
                    reusableContainer(
                        title: "General Knowledge", icon: Icons.rowing),
                  ],
                ),
              ],
            ),
          )),
    );
  }

  Container reusableContainer({required String title, required IconData icon}) {
    return Container(
      color: Colors.white,
      width: 180,
      height: 100,
      child: Center(
        child: ListTile(
          title: Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          trailing: Icon(icon),
        ),
      ),
    );
  }

  ListTile reusableListTile({required IconData icon, required String title}) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
