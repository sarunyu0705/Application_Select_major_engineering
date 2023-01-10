import 'package:flutter/material.dart';
import 'package:flutter_application_select_major/menu/menu_ColorBilndness/colorbn(welcome).dart';

class MyDialog {
  Future<Null> helperDialog(
      // Dialog หน้า Welcome //
      BuildContext context,
      String title,
      String message) async {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Row(
          children: [
            Icon(Icons.hail),
            Text('ความช่วยเหลือ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          ],
        ),
        content: SingleChildScrollView(
          child: Column(
            children: [
              Text('หากนักศึกษามีปัญหา'),
              Text('เกี่ยวกับการเลือกสาขาวิชา'),
              SizedBox(height: 8),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.call),
                  Text(
                    'โทร 02-549-3400',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.mail),
                  Text(
                    ' eng@en.rmutt.ac.th',
                    style: TextStyle(
                        color: Colors.blue[900], fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Image.asset('images/qrcode_web.png'),
              SizedBox(height: 20),
              Text('คณะวิศวกรรมศาสตร์'),
              Text('มหาวิทยาลัยเทคโนโลยีราชมงคลธัญบุรี'),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('ตกลง'),
                style: ElevatedButton.styleFrom(primary: Colors.green),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<Null> major_no_full(
      // dialog เลือกสาขาไม่ครบ
      BuildContext context,
      String title,
      String message) async {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.not_interested_outlined),
                      SizedBox(width: 10),
                      Text(
                        'ยังเลือกสาขาวิชาไม่ครบ',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text(
                    '*** กรุณาเลือกสาขาให้ครบ ***',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('ตกลง'),
                    style: ElevatedButton.styleFrom(primary: Colors.green),
                  )
                ],
              ),
            ));
  }

// -----------------------------------------  Dialog ตาบอดสี  --------------------------------------------------//

  Future<Null> colorbn_untest(
      // dialog ไม่มีอาการ
      BuildContext context,
      String title,
      String message) async {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Column(
                children: [
                  Icon(Icons.warning_rounded),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 10),
                      Text(
                        'ยังไม่สามารถทำการเลือกสาขาวิชาได้',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text(
                    'กรุณาทำแบบทดสอบ\nอาการตาบอดสีก่อน',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30),
                  Image.asset('images/CBN/un_test.png',
                      width: 140, height: 100),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('ตกลง'),
                    style: ElevatedButton.styleFrom(primary: Colors.green),
                  ),
                                    ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> CBN_Welcome()));
                    },
                    child: Text('ทำแบบทดสอบ',style: TextStyle(color: Colors.black),),
                    style: ElevatedButton.styleFrom(primary: Colors.yellow),
                  )
                ],
              ),
            ));
  }

  Future<Null> colorbn_no_bon(
      // dialog ไม่มีอาการ
      BuildContext context,
      String title,
      String message) async {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Column(
                children: [
                  Icon(Icons.task_alt),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 10),
                      Text(
                        'นักศึกษาได้ทำแบบทดสอบ\n\t\t\t\t\tอาการตาบอดสีแล้ว',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text(
                    'ไม่มีอาการตาบอดสี',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30),
                  Image.asset('images/CBN/confetti.png',
                      width: 140, height: 100),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('ตกลง'),
                    style: ElevatedButton.styleFrom(primary: Colors.green),
                  )
                ],
              ),
            ));
  }

  Future<Null> colorbn_red_green(
      // dialog ไม่มีอาการ
      BuildContext context,
      String title,
      String message) async {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Column(
                children: [
                  Icon(Icons.task_alt),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 10),
                      Text(
                        'นักศึกษาได้ทำแบบทดสอบ\n\t\t\t\t\tอาการตาบอดสีแล้ว',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text(
                    'มีอาการตาบอดสีแดง-เขียว',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30),
                  Image.asset('images/CBN/hug.png', width: 140, height: 100),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('ตกลง'),
                    style: ElevatedButton.styleFrom(primary: Colors.green),
                  )
                ],
              ),
            ));
  }

  Future<Null> colorbn_all(
      // dialog มีอาการตาบอดสีทุกสี
      BuildContext context,
      String title,
      String message) async {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Column(
                children: [
                  Icon(Icons.task_alt),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 10),
                      Text(
                        'นักศึกษาได้ทำแบบทดสอบ\n\t\t\t\t\tอาการตาบอดสีแล้ว',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text(
                    'มีอาการตาบอดทุกสี',
                    style: TextStyle(
                        color: Colors.amber,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30),
                  Image.asset('images/CBN/hug.png', width: 140, height: 100),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('ตกลง'),
                    style: ElevatedButton.styleFrom(primary: Colors.green),
                  )
                ],
              ),
            ));
  }

  Future<Null> colorbn_yellow_blue(
      // dialog มีอาการตาบอดสีน้ำเงินเหลือง
      BuildContext context,
      String title,
      String message) async {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Column(
                children: [
                  Icon(Icons.task_alt),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 10),
                      Text(
                        'นักศึกษาได้ทำแบบทดสอบ\n\t\t\t\t\tอาการตาบอดสีแล้ว',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text(
                    'มีอาการตาบอดสีน้ำเงินเหลือง',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30),
                  Image.asset('images/CBN/hug.png', width: 140, height: 100),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('ตกลง'),
                    style: ElevatedButton.styleFrom(primary: Colors.green),
                  )
                ],
              ),
            ));
  }

  Future<Null> account_disable(
      // dialog บัญชีโดนระงับ
      BuildContext context,
      String title,
      String message) async {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Column(
                children: [
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center),
                  SizedBox(height: 30),
                  Text(
                    'บัญชีของท่านถูกระงับ',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30),
                  Image.asset('images/account_disable.png',
                      width: 140, height: 100),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'กรุณาติดต่อผู้ดูแลระบบ',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Icon(Icons.info),
                  Text(
                    'กดปุ่ม Information ด้านบน',style: TextStyle(
                      fontSize: 14
                    ),
                  ),
                  Text(
                    'เพื่อแสดงช่องทางการติดต่อ',style: TextStyle(
                      fontSize: 14
                    ),
                  ),
                  SizedBox(height: 35),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('ตกลง'),
                    style: ElevatedButton.styleFrom(primary: Colors.green),
                  )
                ],
              ),
            ));
  }
  Future<Null> system_close(BuildContext context,
      String title,
      String message) async{
        showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Column(
                children: [
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center),
                  SizedBox(height: 30),
                  Text(
                    'ระบบการเลือกสาขาปิดแล้ว',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30),
                  Image.asset('images/SelMajor/closed.png',
                      width: 140, height: 100),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'หากเกิดปัญหากรุณาติดต่อผู้ดูแลระบบ',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Icon(Icons.info),
                  Text(
                    'กดปุ่ม Information ด้านบน',style: TextStyle(
                      fontSize: 14
                    ),
                  ),
                  Text(
                    'เพื่อแสดงช่องทางการติดต่อ',style: TextStyle(
                      fontSize: 14
                    ),
                  ),
                  SizedBox(height: 35),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('ตกลง'),
                    style: ElevatedButton.styleFrom(primary: Colors.green),
                  )
                ],
              ),
            ));
  }
}






// -----------------------------------------  Dialog ตาบอดสี  --------------------------------------------------//
