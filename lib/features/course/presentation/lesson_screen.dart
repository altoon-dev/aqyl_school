import 'package:aqyl_school/constants/text_constants.dart';
import 'package:aqyl_school/features/widgets/buttons/default_button.dart';
import 'package:aqyl_school/features/widgets/cards/lesson_card.dart';
import 'package:aqyl_school/features/widgets/core/custom_scaffold.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LessonScreen extends StatefulWidget {
  const LessonScreen({super.key, required this.lesson});
  final String lesson;
  @override
  State<LessonScreen> createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  bool isHomework=false;
  final _scrollController=ScrollController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScaffold(
          useAppBar: true,
          hasBackButton: true,
          appBarTitle: widget.lesson,
          body: SingleChildScrollView(
            controller: _scrollController,
            child: Column(crossAxisAlignment:CrossAxisAlignment.start,children: [
              Text(
                isHomework?"Домашняя работа":"Тема урока",
                style: TextStyle(
                    color: Color(0xff004A61),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4,),
              Text(
                isHomework?"Страница - 2":"Страница - 1",
                style: TextStyle(
                    color: Color(0xff14CBD9),
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16,),
              Text(
                TextConstants.loremIpsum,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    ),
              ),
              SizedBox(height: 16,),
              Center(
                child: DefaultButton(
                  onPressed: () {
                    if(isHomework){
                      context.popRoute();
                    }else{
                      _scrollController.jumpTo(0);
                      setState(() {
                        isHomework=true;
                      });
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical:16,horizontal: 32),
                    child:  Text(isHomework?"Завершить ":"Домашняя работа",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 8,backgroundColor: isHomework?Color(0xffC9E464):Color(0xff37B6FD),
                    shape: RoundedRectangleBorder(

                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24,),

            ],),
          )),
    );
  }
}
