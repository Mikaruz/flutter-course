import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/screens/login/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: const _RegisterView(),
    );
  }
}

class _RegisterView extends StatelessWidget {
  const _RegisterView();

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              FlutterLogo(size: 100),
              SizedBox(height: 5),
              _RegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class _RegisterForm extends StatefulWidget {
  const _RegisterForm();

  @override
  State<_RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<_RegisterForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String username = '';
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(children: [
        SizedBox(height: 25),
        CustomTextFormField(
          label: 'Nombre de usuario',
          onChanged: (value) => username = value,
          validator: (value) {
            if (value == null || value.isEmpty) return 'Campo requerido';
            if (value.trim().isEmpty) return 'Campo requerido';
            if (value.length < 6) return 'Más de 6 letras';
            return null;
          },
        ),
        SizedBox(height: 15),
        CustomTextFormField(
          label: 'Correo electrónico',
          onChanged: (value) => email = value,
          validator: (value) {
            if (value == null || value.isEmpty) return 'Campo requerido';
            if (value.trim().isEmpty) return 'Campo requerido';
            final emailRegExp = RegExp(
              r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
            );
            if (!emailRegExp.hasMatch(value)) return 'Ingrese un correo válido';

            return null;
          },
        ),
        SizedBox(height: 15),
        CustomTextFormField(
          label: 'Contraseña',
          obscureText: true,
          onChanged: (value) => password = value,
          validator: (value) {
            if (value == null || value.isEmpty) return 'Campo requerido';
            if (value.trim().isEmpty) return 'Campo requerido';
            if (value.length < 6) return 'Más de 6 letras';
            return null;
          },
        ),
        const SizedBox(height: 20),
        FilledButton.tonalIcon(
            onPressed: () {
              final isValid = _formKey.currentState!.validate();
              if (!isValid) return;
              print('$username, $email, $password');
            },
            icon: const Icon(Icons.save),
            label: const Text('Crear usuario'))
      ]),
    );
  }
}
