import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  bool _obscureText = true;
  bool _isGoodData = false;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _recoveryPassword() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.black,
        padding: EdgeInsetsGeometry.only(top: 20, left: 20, bottom: 40),
        content: Text(
          'Функция востановления пароля',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  void _createNewAccaunt() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.green,
        padding: EdgeInsetsGeometry.only(top: 20, left: 20, bottom: 40),
        content: Text(
          'Переход к регистрации',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Очищаем контроллеры при удалении виджета

    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _loginInApp() async {
    setState(() {
      _isGoodData = true;
    });

    // Проверяем валидность формы
    final isValid = _formKey.currentState!.validate();

    await Future.delayed(Duration(seconds: 2));

    if (isValid) {
      // Если форма валидна, обрабатываем данные
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.green,
          padding: EdgeInsetsGeometry.only(top: 20, left: 20, bottom: 40),
          content: Text('Вход выполнен успешно'),
        ),
      );
    }

    setState(() {
      _isGoodData = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey, // Ключ формы
      child: Column(
        children: [
          const SizedBox(height: 32),

          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Color(0x80c9e9FF), // цвет круга
              shape: BoxShape.circle, // делаем круг
              // Можно добавить градиент или тень:
              // gradient: LinearGradient(...),
              // boxShadow: [...],
            ),
            child: const Icon(
              Icons.lock, // иконка замка
              color: Colors.blue, // цвет иконки
              size: 30,
            ),
          ),

          const SizedBox(height: 16),

          const Text(
            'Вход в систему',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),

          const SizedBox(height: 32),

          TextFormField(
            controller: _emailController,
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'Введите email',
              prefixIcon: Icon(Icons.email, color: Colors.black),
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Пожалуйста, введите email';
              }
              if (!value.contains('@')) {
                return 'Введите корректный email';
              }
              return null;
            },
          ),

          const SizedBox(height: 16),

          TextFormField(
            controller: _passwordController,
            obscureText: _obscureText ?? true,
            decoration: InputDecoration(
              labelText: 'Пароль',
              hintText: 'Введите ваш пароль',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.lock_outline, color: Colors.grey),
              suffixIcon: IconButton(
                icon: Icon(
                  _obscureText
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  color: Colors.grey[600],
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Пожалуйста, введите пароль';
              }

              if (value.length < 6) {
                return 'Пароль должен быть не менее 6 символов';
              }
              return null;
            },
          ),

          Align(
            alignment: AlignmentGeometry.centerRight,
            child: InkWell(
              onTap: _recoveryPassword,
              child: Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                child: const Text(
                  'Забыли пароль?',
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 13, color: Colors.blue),
                ),
              ),
            ),
          ),

          const SizedBox(height: 32),

          ElevatedButton(
            onPressed: _loginInApp,
            style: ElevatedButton.styleFrom(
              minimumSize: Size(200, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: _isGoodData
                ? CircularProgressIndicator(color: Colors.white)
                : const Text('Войти'),
          ),

          const SizedBox(height: 16),

          Row(
            children: [
              Expanded(
                child: Divider(color: Colors.grey.shade300, thickness: 1),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'или',
                  style: TextStyle(color: Colors.grey.shade600),
                ),
              ),
              Expanded(
                child: Divider(color: Colors.grey.shade300, thickness: 1),
              ),
            ],
          ),

          const SizedBox(height: 16),

          Align(
            alignment: AlignmentGeometry.center,
            child: InkWell(
              onTap: _createNewAccaunt,
              child: Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                child: const Text(
                  'Создать новый аккаунт',
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 13, color: Colors.blue),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
