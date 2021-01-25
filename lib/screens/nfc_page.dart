import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helld/widget/simple_alert_dialog.dart';

class NFCPage extends StatefulWidget {
  @override
  _NFCPageState createState() => _NFCPageState();
}

class _NFCPageState extends State<NFCPage> {
  String nfc_text = "";

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(milliseconds: 500), () {
      Get.dialog(
          SimpleAlertDialog(
            message: "NFC 태그를 하시겠습니까?",
            isConfirm: true,
            onTapCancel: () {
              Get.back();
            },
            onTapConfirm: () {
              setState(() {
                nfc_text = "nfc tag detail: awBdkemfDE4125";
              });
              Get.back();
            },
          ),
      );
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffC2B49C),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Image.asset(
                        'assets/img/title.png',
                        width: 300,
                      ),
                    ],
                  ),
                ],
              ),
              Center(
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.grey[400],
                  child: Text(nfc_text),
                )
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Get.dialog(
                        SimpleAlertDialog(
                          message: "NFC 태그를 하시겠습니까?",
                          isConfirm: true,
                          onTapCancel: () {
                            Get.back();
                          },
                          onTapConfirm: () {
                            setState(() {
                              nfc_text = "nfc tag detail: awBdkemfDE4125";
                            });
                            Get.back();
                          },
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 60),
                      child: Image.asset(
                        'assets/img/nfc_ico.png',
                        width: 70,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
