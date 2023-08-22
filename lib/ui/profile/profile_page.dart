import 'package:auth_task/core/extensions/context_extension.dart';
import 'package:auth_task/core/extensions/textstyle_extension.dart';
import 'package:auth_task/domain/user_cubit/interfaces/i_user_cubit.dart';
import 'package:auth_task/domain/user_cubit/user_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const route = "/profile_page";

  @override
  Widget build(BuildContext context) {
    final userCubit = context.read<IUserCubit>();
    return BlocBuilder<IUserCubit, UserState>(
        bloc: userCubit,
        builder: (context, state) {
          if (state is UserUnauthorized) return const SizedBox.shrink();

          final user = (state as UserAuthorized).user;

          return SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 38,
                  ),
                  const Icon(
                    Icons.account_circle_outlined,
                    color: CupertinoColors.black,
                    size: 96,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    user.nickname,
                    style: context.textTheme.bodyMedium.w600!
                        .copyWith(fontSize: 24),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    user.email,
                    style: context.textTheme.bodyMedium.w400!.copyWith(
                      fontSize: 16,
                      color: CupertinoColors.inactiveGray,
                    ),
                  ),
                  const SizedBox(
                    height: 27,
                  ),
                  Container(
                    width: context.screenWidth,
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 20),
                    decoration: const BoxDecoration(
                      color: CupertinoColors.white,
                    ),
                    child: CupertinoButton(
                      child: Text(
                        "Выйти",
                        style: context.textTheme.bodyMedium.w400!.copyWith(
                          fontSize: 16,
                          color: CupertinoColors.destructiveRed,
                        ),
                      ),
                      onPressed: () async => await userCubit.logout(),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
