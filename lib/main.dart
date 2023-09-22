

import 'package:flutter/material.dart';

import 'calculater.dart';
import 'login.dart';
void main() {
  runApp(MyApp());
  
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: FlutterBenefitsApp(),
        //appBar: AppBar(title: Text('Home'),backgroundColor: Color.fromARGB(255, 134, 226, 97),),
    );
  }}


class FlutterBenefitsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'فوائد Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('فوائد Flutter'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'لماذا تختار Flutter؟',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,
            ),
            SizedBox(height: 16),
            ListTile(
              trailing: Icon(Icons.check),
              title: Text(
                'تطوير عبر المنصات',
                textAlign: TextAlign.right,
              ),
            ),
            ListTile(
              trailing: Icon(Icons.check),
              title: Text(
                'أداء سريع وعالي',
                textAlign: TextAlign.right,
              ),
            ),
            ListTile(
              trailing: Icon(Icons.check),
              title: Text(
                'إعادة التحميل السريع للمعاينة الفورية',
                textAlign: TextAlign.right,
              ),
            ),
            ListTile(
              trailing: Icon(Icons.check),
              title: Text(
                'مجموعة غنية من عناصر الواجهة القابلة للتخصيص',
                textAlign: TextAlign.right,
              ),
            ),
            ListTile(
              trailing: Icon(Icons.check),
              title: Text(
                'تصميم استجابة واجهة مستخدم',
                textAlign: TextAlign.right,
              ),
            ),
            ListTile(
              trailing: Icon(Icons.check),
              title: Text(
                'دعم مجتمع نشط ومتفاعل',
                textAlign: TextAlign.right,
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text('تعلم المزيد'),
              onPressed: () {
                // إضافة الإجراء المطلوب عند النقر على الزر "تعلم المزيد"
              },
            ),
          ],
        ),
      ),
    
        drawer: Drawer(   
          
      backgroundColor:Color.fromRGBO(145, 186, 206, 0.49),
       child: 
          ListView(
            children: [
                    
                  UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(
                      radius: 50,
                  backgroundImage: AssetImage("images/.jpg"),),
                      accountName:Text('Ali'),

                      accountEmail:Text('Ail@gmail.com'),
                      decoration:BoxDecoration(
                        color: Colors.green,
                         image: DecorationImage(
                          
                          image:AssetImage("images/.jpg"),fit: BoxFit.cover),

                      ),
                      ),
                  Divider(color: Colors.black,height: 20,thickness: 2.0,),
                  ListTile(
                //iconColor: Color.fromARGB(201, 5, 2, 39),
                title: Text("الصفحة الرئيسة"),
                leading: Icon(Icons.home),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ));
                }
              ),
                Divider(color: Color.fromARGB(255, 252, 254, 255),height: 20,thickness: 2.0,),
                  ListTile(
                iconColor: Color.fromARGB(201, 5, 2, 39),
                title: Text('الدخول'),
                leading: Icon(Icons.login),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()) );
                }
              ),
               Divider(color: Color.fromARGB(255, 252, 254, 255),height: 20,thickness: 2.0,),
              ListTile(
                iconColor: Color.fromARGB(201, 5, 2, 39),
                title: Text('حاسبه '),
                leading: Icon(Icons.no_meals),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => CalculatorScreen()));
                }
              ),
               Divider(color: Color.fromARGB(255, 252, 254, 255),height: 20,thickness: 2.0,),
              ListTile(
                iconColor: Color.fromARGB(201, 5, 2, 39),
                
                title: Text('مساعدة ',),
                leading: Icon(Icons.manage_history),
                onTap: (){
                }
              ),
                Divider(color: Color.fromARGB(255, 252, 254, 255),height: 20,thickness: 2.0,),
              ListTile(
                iconColor: Color.fromARGB(201, 5, 2, 39),
                title: Text('الاعدادات'),
                leading: Icon(Icons.settings),
                onTap: (){},
              ),
                Divider(color: Color.fromARGB(255, 252, 254, 255),height: 20,thickness: 2.0,),
          
              ListTile(
                iconColor: Color.fromARGB(201, 5, 2, 39),
                title: Text('الخروج'),
                leading: Icon(Icons.logout),
                onTap: (){
                   Navigator.push(context, MaterialPageRoute(
                    builder: (context) => HomePage()));
                },
              ),
              
              ],)
          
  
          
          ) ,
          
      );
       }}