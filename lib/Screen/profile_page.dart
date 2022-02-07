import 'package:custom_switch/custom_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmashots/Constants/color_resource.dart';
import 'package:pharmashots/Constants/fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool value1 = true;
  bool value2 = true;
  bool value3 = true;
  onChangeMethod(bool newValue1) {
    setState(() {
      value1 = newValue1;
    });
  }

  onChangeMethod2(bool newValue2) {
    setState(() {
      value2 = newValue2;
    });
  }

  onChangeMethod3(bool newValue3) {
    setState(() {
      value3 = newValue3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.CERISE,
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: ColorResources.Black,
          ),
          onPressed: () {},
        ),
        actions: [
          // IconButton(
          //   icon: Icon(
          //     Icons.settings,
          //     color: ColorResources.Black,
          //   ),
          //   onPressed: () {},
          // ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image(image: AssetImage('assets/images/Path 707@2x.png',
            ),height: 13,
            width: 13,),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 16, right: 16),
        child: GestureDetector(
          onTap: () {},
          child: ListView(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/Rectangle 9.png"),
                          )),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 41,
                          width: 41,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorResources.WHITE,
                          ),
                          child:
                         Center(
                           child: Image.asset('assets/images/Path 68@2x.png',height: 20,
                           width: 20, fit: BoxFit.cover,),
                         ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Container(
                        height: 290,
                        width: 338,
                        child: Column(
                          children: [
                            Container(
                              height: 70,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                color: ColorResources.GAINS_BORO,
                              ))),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Language',
                                      style: HelveticaBold.copyWith(
                                          color: ColorResources.BLACK,
                                          fontSize: 16),
                                    ),
                                    Spacer(),
                                    Text(
                                      'English',
                                      style: Helveticaregular.copyWith(
                                          color: ColorResources.BLACK,
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 70,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                color: ColorResources.GAINS_BORO,
                              ))),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Push Notifications',
                                      style: HelveticaBold.copyWith(
                                          color: ColorResources.BLACK,
                                          fontSize: 16),
                                    ),
                                    Spacer(),
                                    CustomSwitch(value1, onChangeMethod),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 70,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                color: ColorResources.GAINS_BORO,
                              ))),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Night Mode',
                                      style: HelveticaBold.copyWith(
                                          color: ColorResources.BLACK,
                                          fontSize: 16),
                                    ),
                                    Spacer(),
                                    CustomSwitch(value2, onChangeMethod2),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 70,
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Auto Play',
                                      style: HelveticaBold.copyWith(
                                          color: ColorResources.BLACK,
                                          fontSize: 16),
                                    ),
                                    Spacer(),
                                    CustomSwitch(value3, onChangeMethod3),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.white)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Image(
                                image: AssetImage('assets/images/Layer2.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              'About Us',
                              style: HelveticaBold.copyWith(
                                  color: ColorResources.BLACK, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.white)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Image(
                                image: AssetImage('assets/images/Layer5.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              'Rate this app',
                              style: HelveticaBold.copyWith(
                                  color: ColorResources.BLACK, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.white)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Image(
                                image: AssetImage('assets/images/Layer1.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              'Share this app',
                              style: HelveticaBold.copyWith(
                                  color: ColorResources.BLACK, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.white)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Image(
                                image: AssetImage('assets/images/Layer3.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              'Terms & Condition',
                              style: HelveticaBold.copyWith(
                                  color: ColorResources.BLACK, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.white)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Image(
                                image: AssetImage('assets/images/Layer6.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              'Privacy Policy',
                              style: HelveticaBold.copyWith(
                                  color: ColorResources.BLACK, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.white)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Image(
                                image: AssetImage('assets/images/Layer4.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              'Help & Feedback',
                              style: HelveticaBold.copyWith(
                                  color: ColorResources.BLACK, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 50,
                      width: 178,
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: ColorResources.HINT_TEXT_COLOR),
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.transparent,
                      ),
                      child: Center(
                          child: Text(
                        'LOG OUT',
                        style: HelveticaBold.copyWith(
                            color: ColorResources.BLACK, fontSize: 14),
                      )),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Center(
                        child: Text(
                          'Version 4.8.15.16.23.42',
                          style: HelveticaBold.copyWith(
                              color: ColorResources.HINT_TEXT_COLOR, fontSize: 12),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget CustomSwitch(bool value, Function onChangeMethod) {
  return CupertinoSwitch(
      trackColor: ColorResources.BLACK,
      activeColor: ColorResources.OrangeLight,
      value: value,
      onChanged: (newValue) {
        onChangeMethod(newValue);
      });
}
