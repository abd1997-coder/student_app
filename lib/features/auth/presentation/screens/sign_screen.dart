import 'package:flutter/material.dart';
import 'package:student_app/core/core.dart';
import 'package:student_app/features/auth/bloc/authentication_bloc.dart';

import '../widgets/decorated_page.dart';
import '../widgets/login_body.dart';
import '../widgets/signup_body.dart';

@RoutePage()
class SignScreen extends StatelessWidget {
  const SignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthenticationBloc>(
      create: (BuildContext context) => getIt<AuthenticationBloc>(),
      child: const SignView(),
    );
  }
}

class SignView extends StatefulWidget {
  const SignView({super.key});

  @override
  State<SignView> createState() => _SignViewState();
}

class _SignViewState extends State<SignView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: DecoratedPage(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 40),
            AssetsManager.images.decoratedLogo.image(
              width: ResponsiveUtils.responsiveSize(
                context,
                mobile: 88,
                tablet: 120,
                desktop: 120,
              ),
              height: ResponsiveUtils.responsiveSize(
                context,
                mobile: 88,
                tablet: 120,
                desktop: 120,
              ),
            ),
            const SizedBox(height: 40),
            TabBar(
              controller: _tabController,
              dividerColor: Colors.transparent,
              dividerHeight: 0,
              labelStyle: context.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
              ),

              physics: const NeverScrollableScrollPhysics(),
              isScrollable: false,
              labelColor: context.colorScheme.primary,
              unselectedLabelColor: context.colorScheme.surface,
              unselectedLabelStyle: context.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
              ),
              tabAlignment: TabAlignment.fill,

              indicator: BoxDecoration(
                color: context.theme.scaffoldBackgroundColor,

                borderRadius: const BorderRadiusDirectional.only(
                  topEnd: Radius.circular(16),
                  topStart: Radius.circular(16),
                ),
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              labelPadding: const EdgeInsets.symmetric(vertical: 8),
              tabs: <Widget>[
                Tab(text: LocaleKeys.signUp.tr()),
                Tab(text: LocaleKeys.signIn.tr()),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                physics: const NeverScrollableScrollPhysics(),

                children: const <Widget>[SignupBody(), LoginBody()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
