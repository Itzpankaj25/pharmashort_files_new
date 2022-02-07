import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pharmashots/Screen/animal_health_screen.dart';
import 'package:pharmashots/Screen/list_screen.dart';
import 'package:pharmashots/Screen/profile_page.dart';
import 'package:pharmashots/Screen/search_screen.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      shape: CircularNotchedRectangle(),
      child: Container(
        height: 55,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            // button 1
            IconButton(
              icon: SvgPicture.asset(
              'assets/images/icons svg/icn_home_inactive.svg'
              ),

              onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> AnimalHealth()));
              },
              splashColor: Colors.white,

            ),

            // button 2
            IconButton(
                icon: SvgPicture.asset(
                    'assets/images/icons svg/Layer 2.svg'
                ),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ListPage()));
                }),
            SizedBox.shrink(),

            // button 3
            IconButton(
                icon:  SvgPicture.asset(
                    'assets/images/icons svg/Icon ionic-ios-bookmark.svg'
                ),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ProfilePage()));
                }),

            // button 4
            IconButton(
                icon:  SvgPicture.asset(
                    'assets/images/icons svg/icn_profile_active.svg'
                ),
                onPressed: (){}),
          ],
        ),
      ),
    );
  }
}
