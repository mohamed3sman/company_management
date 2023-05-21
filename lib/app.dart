import 'package:fingerPrint/Features/Splash/presentation/manger/locale_cubit/locale_cubit.dart';
import 'package:fingerPrint/Features/bottom_nav/presentation/cubit/bottom_nav_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/locale/app_localizations_setup.dart';
import 'core/utils/functions/setup_service_locator.dart';
import 'core/utils/routes/app_routes.dart';

class fingerPrint extends StatelessWidget {
  const fingerPrint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<BottomNavCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<LocaleCubit>(),
        ),
        // BlocProvider(
        //   create: (context) {
        //     return FeaturedBooksCubit(
        //       FetchFeaturedBooksUseCase(
        //         getIt.get<HomeRepoImpl>(),
        //       ),
        //     );
        //   },
        // ),
        // BlocProvider(
        //   create: (context) {
        //     return NewestBooksCubit(
        //       FetchNewestdBooksUseCase(
        //         getIt.get<HomeRepoImpl>(),
        //       ),
        //     );
        //   },
        // )
      ],
      child: BlocBuilder<LocaleCubit, LocaleState>(
        buildWhen: (previousState, currentState) =>
            previousState != currentState,
        builder: (_, localeState) {
          return ScreenUtilInit(
            designSize: const Size(360, 690),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (context, child) {
              return MaterialApp(
                locale: localeState.locale,
                onGenerateRoute: AppRoutes.onGenerateRoute,
                supportedLocales: AppLocalizationsSetup.supportedLocales,
                localeResolutionCallback:
                    AppLocalizationsSetup.localeResolutionCallback,
                localizationsDelegates:
                    AppLocalizationsSetup.localizationsDelegates,
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  primarySwatch: Colors.blue,
                  fontFamily: "Cairo-Bold",
                ),

                // ThemeData.dark().copyWith(
                //   scaffoldBackgroundColor: kPrimaryColor,
                //   textTheme:
                //       GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
                // ),
              );
            },
          );
        },
      ),
    );
  }
}
