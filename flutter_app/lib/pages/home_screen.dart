import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/res/custom_colors.dart';
import 'package:flutter_app/res/structure.dart';
import 'package:flutter_app/widgets/app_bar_title.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<bool> _isExpanded = [false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Palette.firebaseNavy,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Palette.firebaseNavy,
        ),
        title: const AppBarTitle(
          sectionName: 'Morita',
        ),
      ),
      body: SafeArea(
        child: Stack(children: [
          Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.red)),
              padding: const EdgeInsets.only(
                bottom: 80.0,
              ),
              child: Container(
                decoration: const BoxDecoration(
                  color: Palette.firebaseNavy,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
                ),
                child: Padding(
                    padding: const EdgeInsets.only(
                      left: 16.0,
                      right: 16.0,
                    ),
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 12.0,
                      ),
                      itemCount: menu.length,
                      itemBuilder: (context, index) => Padding(
                          padding: EdgeInsets.only(
                            bottom: index == menu.length - 1 ? 30.0 : 0.0,
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: ExpansionPanelList(
                                expansionCallback: ((panelIndex, isExpanded) {
                                  setState(() {
                                    _isExpanded[index] = !_isExpanded[index];
                                  });
                                }),
                              ))),
                    )),
              ))
        ]),
      ),
    );
  }
}
