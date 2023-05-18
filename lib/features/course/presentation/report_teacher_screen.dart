import 'package:aqyl_school/features/widgets/buttons/default_button.dart';
import 'package:aqyl_school/features/widgets/core/custom_scaffold.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ReportTeacherScreen extends StatefulWidget {
  const ReportTeacherScreen({super.key, required this.lesson});

  final String lesson;

  @override
  State<ReportTeacherScreen> createState() => _ReportTeacherScreenState();
}

class _ReportTeacherScreenState extends State<ReportTeacherScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScaffold(
          useAppBar: true,
          hasBackButton: true,
          appBarTitle: widget.lesson,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Отчеты по уроку",
                    //  isHomework?"Домашняя работа":"Тема урока",
                    style: TextStyle(
                        decorationColor: Colors.black,
                        fontSize: 18,
                        color: Colors.transparent,
                        shadows: [
                          Shadow(color: Colors.black, offset: Offset(0, -4))
                        ],
                        decoration: TextDecoration.underline,
                        decorationThickness: 2,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(vertical: 24),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Color(0xffDEE2FA),
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ученики:",
                          //  isHomework?"Домашняя работа":"Тема урока",
                          style: TextStyle(
                              decorationColor: Colors.black,
                              fontSize: 18,
                              color: Color(0xff004A61),
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: 6,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(top: 16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${index + 1}. Имя Фамилия",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff004A61),
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Material(
                                          elevation: 4,
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          child: Container(
                                            width: double.infinity,
                                            height: 120,
                                            padding: EdgeInsets.all(8),
                                            child: Flexible(
                                              child: TextField(maxLines: null,decoration:InputDecoration(
                                                border: InputBorder.none,

                                              ),),
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(12)),
                                          )),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Center(
                                        child: DefaultButton(
                                          onPressed: () {},
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 12, horizontal: 32),
                                            child: Text(
                                              "Заполнить",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16),
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            elevation: 8,
                                            backgroundColor: Color(0xff37B6FD),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }),
                        )
                      ],
                    )),
                SizedBox(
                  height: 24,
                ),
              ],
            ),
          )),
    );
  }
}
