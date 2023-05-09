import 'package:fingerPrint/Features/Splash/presentation/manger/locale_cubit/locale_cubit.dart';
import 'package:fingerPrint/Features/bottom_nav/presentation/cubit/bottom_nav_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Features/home/data/repos/home_repo_impl.dart';
import 'Features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'Features/home/domain/use_cases/fetch_newest_books_use_case.dart';
import 'Features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'Features/home/presentation/manger/newset_books_cubit/newest_books_cubit.dart';
import 'core/locale/app_localizations_setup.dart';
import 'core/utils/constants.dart';
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
          create: (context) => getIt<LocaleCubit>()..getSavedLang(),
        ),
        BlocProvider(
          create: (context) {
            return FeaturedBooksCubit(
              FetchFeaturedBooksUseCase(
                getIt.get<HomeRepoImpl>(),
              ),
            );
          },
        ),
        BlocProvider(
          create: (context) {
            return NewestBooksCubit(
              FetchNewestdBooksUseCase(
                getIt.get<HomeRepoImpl>(),
              ),
            );
          },
        )
      ],
      child: BlocBuilder<LocaleCubit, LocaleState>(
        buildWhen: (previousState, currentState) =>
            previousState != currentState,
        builder: (_, localeState) {
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
              textTheme: TextTheme().copyWith(
                headline1: TextStyle(fontSize: 12)
              ),
              primarySwatch: Colors.blue,
              
              fontFamily: localeState.locale.languageCode == "ar"
                  ? 'Hacen Tunisia'
                  : "Cairo-Bold",
            ),

            // ThemeData.dark().copyWith(
            //   scaffoldBackgroundColor: kPrimaryColor,
            //   textTheme:
            //       GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
            // ),
          );
        },
      ),
    );
  }
}
