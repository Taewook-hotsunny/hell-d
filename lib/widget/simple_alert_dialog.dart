import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class SimpleAlertDialog extends StatelessWidget {
  final String title;
  final String message;
  final bool isConfirm;
  final Function onTapCancel;
  final Function onTapConfirm;

  const SimpleAlertDialog({
    Key key,
    this.title,
    this.message,
    this.isConfirm = false,
    this.onTapCancel,
    this.onTapConfirm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: AlertDialog(
        contentPadding: EdgeInsets.symmetric(vertical:0),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(height: 12,),
            title == null || title == '' ? Container() : Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xff515457),
                  fontSize: 14,
                  fontWeight: FontWeight.bold
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12, left: 24, right: 24, bottom: 32),
              child: Text(
                message,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff515457),
                  fontSize: 12,
                ),
              ),
            ),
            Divider(
              height: 1,
              color: Color(0xffe8ebef),
            ),
            Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Visibility(
                    visible: isConfirm,
                    child: Expanded(
                      child: InkWell(
                        onTap: (){
                          if( onTapCancel == null )
                            Navigator.pop(context, false);
                          else
                            onTapCancel();
                        },
                        child: Padding(
                          padding: EdgeInsets.only(top: 14, bottom: 14),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              isConfirm ? "아니오" : "예",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff515457),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Visibility(
                    visible: isConfirm,
                    child: Container(
                      width: .7,
                      height: 40,
                      color: Color(0xffe8ebef),
                    ),
                  ),

                  Expanded(
                    child: InkWell(
                      onTap: (){
                        if( onTapConfirm == null )
                          Navigator.pop(context, true);
                        else
                          onTapConfirm();
                      },
                      child: Padding(
                        padding: EdgeInsets.only(top: 14, bottom: 14),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "예",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xffff5500),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ]
            )
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
    );
  }
}
