import 'package:flutter/material.dart';
import 'package:project_scan_qr/url.dart';
import 'package:qrscan/qrscan.dart' as scanner;

// ignore: camel_case_types
class qrcode extends StatefulWidget {
  @override
  _qrcodeState createState() => _qrcodeState();
}

// ignore: camel_case_types
class _qrcodeState extends State<qrcode> {
  String text = "Tap Here to Scan QR Code !!!";
  Color _setColor = Colors.black;
  // String btn = "Scan";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 75,
        ),
        Container(
          // color: Colors.amber,
          child: Column(
            children: [
              Image.network(
                "https://media.qrtiger.com/blog/2020/09/qrcodes.jpg"),
              SizedBox(
                height: 15.0,
              ),
              Text(
                "QR Code and Web View",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          height: 100,
        ),
        TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => UrlResult(text: text)));
            },
            child: Text(
              text,
              style: TextStyle(fontSize: 20, color: _setColor),
              textAlign: TextAlign.center,
            )),
        SizedBox(height: 15),
        // ignore: deprecated_member_use
        RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(80),
          ),
          onPressed: () async {
            text = await scanner.scan();
            _setColor = Colors.lightGreen;
            setState(() {});
          },
          child: Container(
            width: 80,
            height: 30,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.qr_code_outlined),
                SizedBox(width: 5),
                Text(
                  "Scan",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 100,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Developed "),
            Icon(
              Icons.favorite,
              color: Colors.black,
            ),
            Text(
              " By Putu Wisnu Ardia Chandra",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
    )));
  }
}
