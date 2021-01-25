import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helld/screens/qr_page.dart';
import 'package:helld/screens/sign_up_page.dart';
import 'package:helld/screens/visitor_analysis_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController phoneController = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffC2B49C),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  const SizedBox(height: 20),
                  Image.asset('assets/img/title.png', width: 350,),
                ],
              ),
              Transform.translate(
                offset: Offset(0, -30),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/img/hifive.png',
                        width: 250,
                      ),
                      Text(
                        "대구시와 함께 합니다.",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "전화번호를 입력해주세요",
                            hintStyle: TextStyle(
                                fontSize: 14
                            ),
                            border: InputBorder.none,
                          ),
                          controller: phoneController,
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                      FlatButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          if(phoneController.text == "0101234567") {
                            Get.to(VisitorAnalysisPage());
                          } else {
                            Get.to(QRPage());
                          }

                        },
                        child: Text(
                          "로그인(실명인증)",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "사장님이 아니시라면!",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  FlatButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      Get.to(SignUpPage());
                    },
                    child: Text(
                      "아직 회원이 아니신가요?",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/img/DAEGU_LOGO.png',
                        width: 100,
                      ),
                      Image.asset(
                        'assets/img/netris_logo.png',
                        width: 80,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
