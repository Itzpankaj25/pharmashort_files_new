import 'package:flutter/material.dart';
import 'package:pharmashots/Constants/color_resource.dart';
import 'package:pharmashots/Constants/components.dart';
import 'package:pharmashots/Constants/fonts.dart';
import 'package:pharmashots/Screen/animal_health_screen.dart';
import 'package:pharmashots/Screen/search_screen_2.dart';

class InterestPage extends StatelessWidget {
  const InterestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        child: Stack(
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Center(
                    child: Text(
                      'Select your Interests',
                      style: FormaDJRDisplayBold.copyWith(
                          color: ColorResources.BLACK,
                          fontSize: 28
                      ),
                      textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  Padding(padding: EdgeInsets.all(16),
                    child:Center(
                      child:Text(
                        'We will use this to personalise your feed to Recommended things you like',
                        style: Helveticaregular.copyWith(
                            color: ColorResources.Gray,
                            fontSize: 14
                        ),
                        textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                      ) ,
                    ) ,),

                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: GridView.count(
                      shrinkWrap: true,
                      primary: false,
                      padding: const EdgeInsets.all(0.0),
                      crossAxisSpacing: 10.0,
                      crossAxisCount: 3,
                      children: [
                        for (var i = 0; i < 9; i++)
                          CardView(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(padding: EdgeInsets.all(12),
                      child: Center(
                        child:InkWell
                          (
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return SearchScreen2();
                                }));
                          },
                          child: Container(
                            height: 50,
                            width: 178,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: ColorResources.OrangeLight,
                            ),
                            child: Center(child: Text('SAVE',
                              style: HelveticaBold.copyWith(
                                  color: ColorResources.WHITE,
                                  fontSize: 14
                              ),)),

                          ),
                        )

                        ,
                      )),
          ],
        ),
      ),
    ]
    ),

    ),
    );
  }
}
