import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mjk_apps/core/app_constants/route.dart';
import 'package:mjk_apps/core/networks/authentication_network.dart';
import 'package:mjk_apps/core/services/authentication_service.dart';
import 'package:mjk_apps/core/services/navigation_service.dart';
import 'package:mjk_apps/core/services/shared_preferences_service.dart';
import 'package:mjk_apps/core/utilities/text_styles.dart';
import 'package:mjk_apps/core/view_models/authentication/login_view_model.dart';
import 'package:mjk_apps/core/view_models/view_model.dart';
import 'package:mjk_apps/ui/shared/loading_overlay.dart';
import 'package:mjk_apps/ui/shared/spacings.dart';
import 'package:mjk_apps/ui/shared/unfocus_helper.dart';
import 'package:mjk_apps/ui/widgets/buttons.dart';
import 'package:mjk_apps/ui/widgets/text_inputs.dart';

class LoginViewParam {
  LoginViewParam({
    this.tokenFCM,
  });

  final String? tokenFCM;
}

class LoginView extends ConsumerStatefulWidget {
  const LoginView({
    required this.param,
    Key? key,
  }) : super(key: key);

  final LoginViewParam param;

  @override
  ConsumerState<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends ConsumerState<LoginView> {
  final FocusNode _focus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return ViewModel<LoginViewModel>(
        model: LoginViewModel(
          // dioService: ref.read(dioProvider),
          sharedPreferencesService: ref.read(sharedPrefProvider),
          navigationService: ref.read(navigationProvider),
          authenticationApi: ref.read(authenticationApi),
          authenticationService: ref.read(authProvider),
        ),
        builder: (_, LoginViewModel model, __) {
          return LoadingOverlay(
              isLoading: model.busy,
              child: UnfocusHelper(
                child: Scaffold(
                  backgroundColor: Colors.white,
                  body: SingleChildScrollView(
                    child: SafeArea(
                      child: Column(
                        children: <Widget>[
                          Spacings.horSpace(double.infinity),
                          Spacings.verSpace(34),
                          Image.asset('assets/icons/mjk-logo.png'),
                          Spacings.verSpace(36),
                          Text(
                            'Login',
                            style: buildTextStyle(
                              fontSize: 36,
                              fontWeight: 700,
                              color: Colors.black,
                            ),
                          ),
                          Spacings.verSpace(34),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                MjkTextInput(
                                  controller: model.usernameController,
                                  hintText: 'username',
                                  label: 'Username',
                                ),
                                Spacings.verSpace(22),
                                MjkTextInput(
                                  controller: model.passwordController,
                                  enableFocusBorder: true,
                                  enableObscureText: true,
                                  focusNode: _focus,
                                  hintText: 'password',
                                  label: 'Password',
                                ),
                                Spacings.verSpace(34),
                                Button(
                                  buttonType: ButtonType.primary,
                                  buttonSize: ButtonSize.medium,
                                  text: 'Login',
                                  onTap: () async {
                                    print("${model.usernameController.text} data username");
                                    print("${model.passwordController.text} data password");

                                    String usernameText = model.usernameController.text;
                                    String passwordText = model.passwordController.text;

                                    // print(passwordText.isNotEmpty);
                                    if (usernameText == 'sales' && passwordText.isNotEmpty) {
                                      Navigator.pushNamed(
                                        context,
                                        Routes.navBarSales,
                                      );
                                    } else if (usernameText == 'owner' && passwordText.isNotEmpty) {
                                      Navigator.pushNamed(
                                        context,
                                        Routes.navBarOwner,
                                      );
                                    }
                                    // Navigator.pushNamed(
                                    //   context,
                                    //   Routes.navBarOwner,
                                    // );
                                    // Navigator.pushNamed(
                                    //   context,
                                    //   Routes.navBarSales,
                                    // );
                                    // if (model.usernameController.text.isEmpty ||
                                    //     model.passwordController.text.isEmpty) {
                                    //   //TODO: handle required field
                                    //   return;
                                    // }

                                    // final bool response =
                                    //     await model.requestLogin();

                                    // if (response && mounted) {
                                    //   Navigator.pushNamed(
                                    //     context,
                                    //     Routes.dashboard,
                                    //   );
                                    // } else {
                                    //   //TODO: Handle login failed
                                    //   showErrorToast(
                                    //       'Username/Password Salah!');
                                    // }
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ));
        });
  }

  void showErrorToast(String text) {
    BotToast.showSimpleNotification(
      title: text,
      backgroundColor: const Color(0xffEA6767),
      hideCloseButton: true,
      titleStyle: buildTextStyle(
        fontSize: 14,
        fontWeight: 400,
        color: Colors.white,
      ),
    );
  }
}
