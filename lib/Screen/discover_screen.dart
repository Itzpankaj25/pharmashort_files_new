import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pharmashots/Constants/color_resource.dart';
import 'package:pharmashots/Constants/components.dart';
import 'package:pharmashots/Constants/fonts.dart';

import 'bottom_bar_screen.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: SafeArea(
           child: Container(
             child: SingleChildScrollView(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [

                   SizedBox(
                     height: 8,
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 16.0,top: 8),
                     child: Text(
                       'Discover Trending & Latest News',
                       style: FormaDJRDisplayBold.copyWith(
                         color: ColorResources.BLACK,
                         fontSize: 35,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                   ),
                   SizedBox(
                     height: 8,
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 16.0,top: 8),
                     child: Text(
                       'Discover your news with easy play.',
                       style: FormaDJRDisplayBold.copyWith(
                         color: ColorResources.Gray,
                         fontSize: 18,
                       ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 16.0,top: 8),
                     child: Card(

                       child: Container(
                         height: 56,
                         width: 318,

                       //  padding: EdgeInsets.symmetric(horizontal: 8),
                         child: Row(
                           children: <Widget>[
                             Expanded(
                               child: Padding(
                                 padding: const EdgeInsets.only(left: 8.0,),
                                 child: TextField(
                                   decoration: InputDecoration(
                                     hintText: "Search Article",
                                     border: InputBorder.none,
                                   ),
                                 ),
                               ),
                             ),

                             Container(
                               height: 56,
                               width: 50,
                               decoration: BoxDecoration(
                                   color: ColorResources.OrangeLight,
                                   borderRadius:
                               BorderRadius.only(
                                 topRight: Radius.circular(6),
                                 bottomRight: Radius.circular(6),
                               )),

                               child: Icon(
                                 Icons.search,
                                 color: Colors.white,
                               ),
                             ),
                           ],
                         ),
                       ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 16.0,
                     top: 8),
                     child: Text(
                       'Quick Read',
                       style: FormaDJRDisplayBold.copyWith(
                         color: ColorResources.BLACK,
                         fontSize: 28,
                       ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 16.0,
                         ),
                     child: Container(
                       margin: EdgeInsets.symmetric(vertical: 20.0),
                       height: 106,
                       child: ListView(
                         scrollDirection: Axis.horizontal,
                         children: [
                           SizedBox(
                             width: 8,
                           ),
                           QuickReadCard(),

                           SizedBox(
                             width: 8,
                           ),
                           QuickReadCard(),
                           SizedBox(
                             width: 8,
                           ),
                           QuickReadCard(),
                           SizedBox(
                             width: 8,
                           ),
                           QuickReadCard(),
                           SizedBox(
                             width: 8,
                           ),

                         ],
                       ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 16.0,
                         top: 8),
                     child: Text(
                       'Top News',
                       style: FormaDJRDisplayBold.copyWith(
                         color: ColorResources.BLACK,
                         fontSize: 28,
                       ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 16.0,
                     ),
                     child: Container(
                       margin: EdgeInsets.symmetric(vertical: 20.0),
                       height: 253,
                       child: ListView(
                         scrollDirection: Axis.horizontal,
                         children: [

                           TopNewsCard(),
                           TopNewsCard(),
                           TopNewsCard(),

                         ],
                       ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 16.0,
                         top: 8),
                     child: Text(
                       'Choose your topic',
                       style: FormaDJRDisplayBold.copyWith(
                         color: ColorResources.BLACK,
                         fontSize: 28,
                       ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 16.0,
                     ),
                     child: Container(
                       margin: EdgeInsets.symmetric(vertical: 20.0),
                       height: 30,
                       decoration: BoxDecoration(
                         border: Border(
                           bottom: BorderSide(width: 2.0, color: ColorResources.Gray),
                         ),
                         ),
                       child: ListView(
                         scrollDirection: Axis.horizontal,
                         children: [

                         Text(
                         'Animal Health',
                         style: FormaDJRDisplayBold.copyWith(
                           color: ColorResources.OrangeLight,
                           fontSize: 18,
                         ),
                         ),
                           SizedBox(
                             width: 8,
                           ),
                           Text(
                             'Biosimilars',
                             style: FormaDJRDisplayBold.copyWith(
                               color: ColorResources.BLACK,
                               fontSize: 18,
                             ),
                           ),
                           SizedBox(
                             width: 8,
                           ),
                           Text(
                             'Biotech',
                             style: FormaDJRDisplayBold.copyWith(
                               color: ColorResources.BLACK,
                               fontSize: 18,
                             ),
                           ),
                           SizedBox(
                             width: 8,
                           ),
                           Text(
                             'Clinical trials',
                             style: FormaDJRDisplayBold.copyWith(
                               color: ColorResources.BLACK,
                               fontSize: 18,
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                   Column(
                     children: [
                       for (var i = 0; i < 4; i++)
                         Slidable(
                           endActionPane: ActionPane(
                             motion: const ScrollMotion(),
                             //  dismissible: DismissiblePane(onDismissed: () {}),
                             children: const [
                               SlidableAction(
                                 onPressed: null,
                                 // backgroundColor: Colors.white,
                                 foregroundColor: ColorResources.Orange,
                                 icon: Icons.delete_sharp,
                               ),
                             ],
                           ),
                           child: listwidget(),
                         )
                     ],
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 16.0,
                         top: 8),
                     child: Text(
                       'Magazine',
                       style: FormaDJRDisplayBold.copyWith(
                         color: ColorResources.BLACK,
                         fontSize: 28,
                       ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 16.0,
                     ),
                     child: Container(
                       margin: EdgeInsets.symmetric(vertical: 20.0),
                       height: 222,
                       child: ListView(
                         scrollDirection: Axis.horizontal,
                         children: [
                         Card(
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(15.0),
                           ),
                           child: Container(
                           height: 222,
                           width: 153,
                           child: Column(
                             children: [
                               Image.asset('assets/images/images@2x.png'),
                               SizedBox(
                                 height: 8,
                               ),
                               Text(
                                 'Malaysia Favourite Health',
                                 style: FormaDJRDisplayBold.copyWith(
                                   color: ColorResources.BLACK,
                                   fontSize: 12,
                                 ),
                               ),

                             ],
                           ),
                       ),
                         ),
                           Card(
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(15.0),
                             ),
                             child: Container(
                               height: 222,
                               width: 153,
                               child: Column(
                                 children: [
                                   Image.asset('assets/images/images@2x.png'),
                                   SizedBox(
                                     height: 8,
                                   ),
                                   Text(
                                     'Malaysia Favourite Health',
                                     style: FormaDJRDisplayBold.copyWith(
                                       color: ColorResources.BLACK,
                                       fontSize: 12,
                                     ),
                                   ),

                                 ],
                               ),
                             ),
                           ),
                           Card(
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(15.0),
                             ),
                             child: Container(
                               height: 222,
                               width: 153,
                               child: Column(
                                 children: [
                                   Image.asset('assets/images/images@2x.png'),
                                   SizedBox(
                                     height: 8,
                                   ),
                                   Text(
                                     'Malaysia Favourite Health',
                                     style: FormaDJRDisplayBold.copyWith(
                                       color: ColorResources.BLACK,
                                       fontSize: 12,
                                     ),
                                   ),

                                 ],
                               ),
                             ),
                           ),
                           Card(
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(15.0),
                             ),
                             child: Container(
                               height: 222,
                               width: 153,
                               child: Column(
                                 children: [
                                   Image.asset('assets/images/images@2x.png'),
                                   SizedBox(
                                     height: 8,
                                   ),
                                   Text(
                                     'Malaysia Favourite Health',
                                     style: FormaDJRDisplayBold.copyWith(
                                       color: ColorResources.BLACK,
                                       fontSize: 12,
                                     ),
                                   ),

                                 ],
                               ),
                             ),
                           ),


                         ],
                       ),
                     ),
                   ),
                 ],
               ),
             ),
           ),
         ),
      floatingActionButton: FlotingAction(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}




