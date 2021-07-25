import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/presentation/localization/language_selector.dart';
import '../../core/presentation/localization/localizations.dart';
import '../../core/presentation/toasts.dart';
import '../../core/presentation/validator/validator.dart';
import '../application/auth_notifier.dart';
import '../shared/providers.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  ValueNotifier<bool> enableSaveButton = ValueNotifier(false);
  final _formKey = GlobalKey<FormState>();
  String userName = '';
  String password = '';
  bool _isSigningIn = false;

  @override
  Widget build(BuildContext context) {
    final labels = context.localizations;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/bg.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 48),
                    child: SingleChildScrollView(
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Image.asset('assets/images/logo.png'),
                            const SizedBox(height: 16),
                            _userNameTextFormFieldWidget(labels, context),
                            const SizedBox(height: 10),
                            _passwordTextFormFieldWidget(labels, context),
                            const SizedBox(height: 32),
                            _submitButtonWidget(labels, context)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: LanguageSelector(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _userNameTextFormFieldWidget(
      AppLocalizationsData labels, BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 8.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            labelText: labels.auth.userName,
            counterText: "",
          ),
          maxLength: 10,
          validator: Validator(labels).userName,
          onChanged: (value) {
            userName = value;
            shouldEnableButton(labels);
          },
        ),
      ),
    );
  }

  Widget _passwordTextFormFieldWidget(
      AppLocalizationsData labels, BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 8.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: labels.auth.password,
            counterText: "",
          ),
          maxLength: 10,
          validator: Validator(labels).password,
          onChanged: (value) {
            password = value;
            shouldEnableButton(labels);
          },
        ),
      ),
    );
  }

  Widget _submitButtonWidget(
      AppLocalizationsData labels, BuildContext context) {
    return ProviderListener<AuthState>(
      provider: authNotifierProvider,
      onChange: (context, state) {
        state.maybeMap(
            orElse: () {},
            failure: (_) {
              showToast(
                labels.auth.wrongTryLater,
                context,
              );
            });
      },
      child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: _isSigningIn
              ? const Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                )
              : ValueListenableBuilder<bool>(
                  valueListenable: enableSaveButton,
                  builder: (context, enableSaveButton, child) {
                    return OutlinedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            enableSaveButton ? Colors.blue : Colors.grey),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      onPressed: () async {
                        if (enableSaveButton) {
                          FocusScope.of(context).unfocus();
                          setState(() => _isSigningIn = true);
                          await context
                              .read(authNotifierProvider.notifier)
                              .login(userName, password);
                          setState(() => _isSigningIn = false);
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Text(
                          labels.action.submit,
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    );
                  })),
    );
  }

  void shouldEnableButton(AppLocalizationsData labels) {
    _formKey.currentState!.validate();
    if (Validator(labels).userName(userName) == null &&
        Validator(labels).password(password) == null) {
      enableSaveButton.value = true;
    } else {
      enableSaveButton.value = false;
    }
  }
}
