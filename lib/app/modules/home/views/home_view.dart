// ignore_for_file: must_be_immutable

import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sistem_pertahanan_tubuh/app/constant/colors.dart';
import 'package:sistem_pertahanan_tubuh/app/modules/home/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  double _width = Get.width;
  double _height = Get.height;
  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Selamat Pagi',
          style: TextStyle(color: Colors.black),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        leading: _width < 800
            ? Builder(
                builder: (context) => InkWell(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Image.asset('assets/drawer.png'),
                    ),
                  ),
                ),
              )
            : null,
        elevation: 0,
      ),
      drawer: _width < 800
          ? Drawer(
              child: _drawer(isDesktop: true),
            )
          : null,
      body: _width < 800 ? _body() : _bodyDesktop(),
    );
  }

  Widget _drawer({bool isDesktop = false}) {
    return SizedBox(
      height: _height,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              color: MyColors.blue,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      clipBehavior: Clip.hardEdge,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: MyColors.purple),
                      child: AspectRatio(
                          aspectRatio: 1,
                          child: Image.asset('assets/logo.png')),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: FittedBox(
                        child: Text("Sistem Pertahanan Tubuh",
                            style: Get.textTheme.headline6!.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: FittedBox(
                        child: Text(
                          "Kelas 11 Semester Genap",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            NeumorphicButton(
              onPressed: () {},
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              style: NeumorphicStyle(
                  shape: NeumorphicShape.concave,
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                  depth: 8,
                  lightSource: LightSource.topLeft,
                  color: Colors.purple),
              child: Row(
                children: [
                  const Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                    size: 24,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text("Home",
                      style: Get.textTheme.headline6!
                          .copyWith(color: Colors.white))
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            NeumorphicButton(
              onPressed: () {},
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              style: NeumorphicStyle(
                  shape: NeumorphicShape.concave,
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                  depth: 8,
                  lightSource: LightSource.topLeft,
                  color: Colors.white),
              child: Row(
                children: [
                  const Icon(
                    Icons.person_outline,
                    size: 24,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text("Profil", style: Get.textTheme.headline6)
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            NeumorphicButton(
              onPressed: () {},
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              style: NeumorphicStyle(
                  shape: NeumorphicShape.concave,
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                  depth: 8,
                  lightSource: LightSource.topLeft,
                  color: Colors.white),
              child: Row(
                children: [
                  const Icon(
                    Icons.question_mark_outlined,
                    size: 24,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text("Petunjuk", style: Get.textTheme.headline6)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _body() {
    return Stack(
      children: [
        Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              width: _width * 0.3,
              height: _height * 0.3,
              child: Image.asset(
                'assets/left.png',
                fit: BoxFit.fill,
              ),
            )),
        Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              width: _width * 0.3,
              height: _height * 0.3,
              child: Image.asset('assets/right.png', fit: BoxFit.fill),
            )),
        Positioned.fill(
            child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40.h,
              ),
              _card(),
              SizedBox(
                height: 40.h,
              ),
              GridView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200),
                children: [
                  _icon(
                      'assets/standart_kompetensi.png', "Standart\nKompetensi"),
                  _icon('assets/peta_konsep.png', "Peta\nKonsep"),
                  _icon('assets/materi.png', "Materi\n"),
                  _icon('assets/rangkuman.png', "Rangkuman\n"),
                  _icon('assets/evaluasi.png', "Evaluasi\n"),
                  _icon('assets/refrensi.png', "Refrensi\n"),
                ],
              ),
            ],
          ),
        )),
      ],
    );
  }

  Widget _icon(String assets, String name) {
    return AspectRatio(
      aspectRatio: 1,
      child: Column(
        children: [
          Expanded(
              child: AspectRatio(
            aspectRatio: 1,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: NeumorphicButton(
                  onPressed: () {},
                  style: NeumorphicStyle(
                    color: Colors.white,
                    shape: NeumorphicShape.concave,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
                    //border: NeumorphicBorder()
                  ),
                  child: Image.asset(assets)),
            ),
          )),
          Text(
            name,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Widget _bodyDesktop() {
    return SizedBox(
      height: _height,
      width: _width,
      child: Row(
        children: [
          Neumorphic(
              style: const NeumorphicStyle(
                  shape: NeumorphicShape.concave,
                  depth: 20,
                  lightSource: LightSource.top,
                  color: Colors.white),
              child: SizedBox(width: 75.w, child: _drawer())),
          Expanded(child: _body())
        ],
      ),
    );
  }

  Widget _card() {
    return SizedBox(
      width: 340,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AspectRatio(
          aspectRatio: 2,
          child: Neumorphic(
            style: const NeumorphicStyle(
                shape: NeumorphicShape.flat,
                depth: 20,
                lightSource: LightSource.top,
                color: MyColors.blue),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Selamat datang di aplikasi pembelajaran biologi\nSistem Pertahanan Tubuh",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white),
                          child: const FittedBox(
                            child: Text(
                              "Selamat belajar :)",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: MyColors.blue,
                                  fontSize: 12),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Image.asset(
                      'assets/bro.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
