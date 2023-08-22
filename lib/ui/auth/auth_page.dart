import 'package:auth_task/core/extensions/context_extension.dart';
import 'package:auth_task/core/extensions/textstyle_extension.dart';
import 'package:auth_task/data/net/api/v1/auth/requests/authorization_request_dto.dart';
import 'package:auth_task/domain/auth_cubit/auth_state.dart';
import 'package:auth_task/domain/auth_cubit/interfaces/i_auth_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class AuthPage extends HookWidget {
  const AuthPage({super.key});

  static const route = "/auth_page";

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final authCubit = context.read<IAuthCubit>();

    useOnStreamChange(
      authCubit.stream,
      onData: (state) {
        if (state is AuthStateError) {
          showCupertinoModalPopup(
              context: context,
              builder: (context) {
                return CupertinoActionSheet(
                  title: const Text('Oops, error occurred!'),
                  message: Text(state.message.toString()),
                  actions: [
                    CupertinoActionSheetAction(
                      child: const Text('OK'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                );
              });
        } else if (state is AuthStateAuthorized) {
          context.go("/home/profile_page");
        }
      },
    );

    return BlocBuilder<IAuthCubit, AuthState>(
        bloc: authCubit,
        builder: (context, state) {
          return CupertinoPageScaffold(
            backgroundColor: CupertinoColors.systemGroupedBackground,
            navigationBar: CupertinoNavigationBar(
              middle: Text(
                "Авторизация",
                style: context.textTheme.bodyMedium!.w500!.copyWith(
                  fontSize: 15,
                ),
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CupertinoTextField(
                    placeholder: "Логин или почта",
                    padding: const EdgeInsets.all(18),
                    controller: emailController,
                  ),
                  CupertinoTextField(
                    obscureText: true,
                    padding: const EdgeInsets.all(18),
                    placeholder: "Пароль",
                    controller: passwordController,
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CupertinoButton.filled(
                          padding: const EdgeInsets.all(18),
                          onPressed: () async => authCubit
                              .authorize(
                                AuthorizationRequestDto(
                                  email: emailController.text,
                                  password: passwordController.text,
                                ),
                              )
                              .run(),
                          child: Text(
                            "Войти",
                            style: context.textTheme.bodyMedium.bold!
                                .copyWith(color: CupertinoColors.white),
                          ),
                        ),
                        const SizedBox(
                          height: 19,
                        ),
                        CupertinoButton.filled(
                          padding: const EdgeInsets.all(18),
                          onPressed: () {},
                          child: Text(
                            "Зарегестрироваться",
                            style: context.textTheme.bodyMedium.bold!
                                .copyWith(color: CupertinoColors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
