import 'package:flutter/material.dart';

class ProjectCriticalFailureDisplay extends StatelessWidget {
  const ProjectCriticalFailureDisplay({Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisSize:MainAxisSize.min,children:[
        const Text("😱",style: TextStyle(fontSize:100),),
        Text("Неожиданная ошибка. \nПожалуйста, свяжитесь с поддержкой",style:const TextStyle(fontSize:24),textAlign:TextAlign.center),
        TextButton(onPressed:(){},child:Row(mainAxisSize:MainAxisSize.min,children:const [
          Icon(Icons.mail),
          SizedBox(height:4),
          Text("I need help")
        ]))
      ]),

    );
  }
}
