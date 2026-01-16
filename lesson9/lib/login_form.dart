import 'package:flutter/material.dart';
import 'login_icon.dart';

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
        padding: EdgeInsets.only(top: 20, left: 20, bottom: 40),
        content: Text(
          'Функция востановления пароля',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  void _createNewAccount() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.green,
        padding: EdgeInsets.only(top: 20, left: 20, bottom: 40),
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


    // Проверяем валидность формы
    final form = _formKey.currentState;
    if (form == null || !form.validate()) {
      // Форма не построена или не валидна
      return;
    }

    // Устанавливаем состояние загрузки
    setState(() {
      _isGoodData = true;
    });

    await Future.delayed(Duration(seconds: 2));

    if (!mounted) return;

    if (form.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.green,
          padding: const EdgeInsets.only(top: 20, left: 20, bottom: 40),
          content: const Text('Вход выполнен успешно', style: TextStyle(color: Colors.white)),
        ),
      );
    }

    if (mounted) {
      setState(() => _isGoodData = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey, // Ключ формы
      child: Column(
        children: [
          const SizedBox(height: 32),

          const LoginIcon(),

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
            obscureText: _obscureText ,//?? true,
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
            alignment: Alignment.centerRight,
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
            alignment: Alignment.center,
            child: InkWell(
              onTap: _createNewAccount,
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
