import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;

  Future<void> _login() async {
    setState(() {
      _isLoading = true;
    });

    // يمكنك هنا استدعاء خدمة أو واجهة برمجة تطبيقات (API) للتحقق من صحة بيانات تسجيل الدخول
    // يمكنك استخدام حزمة http أو dio لعمل طلب HTTP

    // افتراض أن الاستجابة تحتوي على رمز الاستجابة والبيانات المرتبطة بالمستخدم المسجل
    bool loginSuccess = true;
    String responseCode = '200';
    String responseData = '{"user": {"id": 1, "name": "John Doe"}}';

    await Future.delayed(Duration(seconds: 2)); // محاكاة تأخير للطلب

    setState(() {
      _isLoading = false;
    });

    if (loginSuccess && responseCode == '200') {
      // تم تسجيل الدخول بنجاح
      // يمكنك هنا استخدام بيانات المستخدم المرتجعة من الاستجابة
      print('تم تسجيل الدخول بنجاح!');
      print('البيانات المسترجعة: $responseData');
    } else {
      // حدث خطأ أثناء تسجيل الدخول
      print('فشل تسجيل الدخول!');
      print('رمز الاستجابة: $responseCode');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تسجيل الدخول'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'البريد الإلكتروني',
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'كلمة المرور',
              ),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _isLoading ? null : _login,
              child: _isLoading
                  ? CircularProgressIndicator() // إظهار مؤشر التحميل أثناء تسجيل الدخول
                  : Text('تسجيل الدخول'),
            ),
          ],
        ),
      ),
    );
  }
}