import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'core/core.dart';

class App extends StatefulWidget {
  const App._internal();

  static const App instance = App._internal();

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late AppRouter appRouter;

  @override
  void initState() {
    super.initState();
    appRouter = Managers.route;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppManagerCubit>(
      create: (BuildContext context) => getIt<AppManagerCubit>()..init(),
      child: ResponsiveSizer(
        builder:
            (BuildContext p0, Orientation p1, ScreenType p2) => LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                context.read<AppManagerCubit>().changeTextTheme(constraints);
                return BlocBuilder<AppManagerCubit, AppManagerState>(
                  builder: (BuildContext context, AppManagerState state) {
                    return MaterialApp.router(
                      title: ConstantManager.appName,
                      debugShowCheckedModeBanner: false,
                      localizationsDelegates: context.localizationDelegates,
                      supportedLocales: context.supportedLocales,
                      locale: context.locale,
                      theme: state.themeData,
                      routerConfig: appRouter.config(
                        navigatorObservers: () {
                          return <NavigatorObserver>[MyObserver()];
                        },
                      ),
                      builder: (BuildContext context, Widget? child) {
                        final MediaQueryData data = MediaQuery.of(context);
                        return MediaQuery(
                          data: data.copyWith(
                            textScaler: TextScaler.noScaling,
                            alwaysUse24HourFormat: true,
                          ),
                          child: child!,
                        );
                      },
                    );
                  },
                );
              },
            ),
      ),
    );
  }
}
