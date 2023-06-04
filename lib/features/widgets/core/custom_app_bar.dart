import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class CustomAppBar extends StatelessWidget {
//   const CustomAppBar({Key? key, required this.hasBackButton}) : super(key: key);
//   final bool hasBackButton;
//   @override
//   Widget build(BuildContext context) {
//     return Row(children: [
//      Expanded(child: hasBackButton?Align(alignment: Alignment.centerLeft,child: Icon(CupertinoIcons.chevron_back)):SizedBox()),
//       Expanded(child: Center(child: Text("Математика",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),)),
//       Expanded(child: SizedBox()),
//
//     ],);
//   }
//  }
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar( {Key? key,this.hasBackButton=false,required this.titleName, this.actions}) : super(key: key);
   final bool hasBackButton;
   final String? titleName;
   final List<Widget>? actions;
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: GestureDetector(
        child: Icon(Icons.arrow_back_ios_sharp, color: Colors.black),
        onTap: () => Navigator.of(context).pop(),
      ),
      actions: actions,
      centerTitle: true,
      automaticallyImplyLeading: hasBackButton,
      title: Text(titleName??"",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}
