import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';


import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const ScrLandingWidget() : const ScrLoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const ScrLandingWidget() : const ScrLoginWidget(),
          routes: [
            FFRoute(
              name: 'scrLogin',
              path: 'scrLogin',
              builder: (context, params) => const ScrLoginWidget(),
            ),
            FFRoute(
              name: 'scrRecuperarPass',
              path: 'scrRecuperarPass',
              builder: (context, params) => const ScrRecuperarPassWidget(),
            ),
            FFRoute(
              name: 'scrRegistro',
              path: 'scrRegistro',
              builder: (context, params) => const ScrRegistroWidget(),
            ),
            FFRoute(
              name: 'scrEscuelas',
              path: 'scrEscuelas',
              requireAuth: true,
              builder: (context, params) => const ScrEscuelasWidget(),
            ),
            FFRoute(
              name: 'scrUserAutorizado',
              path: 'scrUserAutorizado',
              builder: (context, params) => const ScrUserAutorizadoWidget(),
            ),
            FFRoute(
              name: 'scrArchivos',
              path: 'scrArchivos',
              requireAuth: true,
              builder: (context, params) => const ScrArchivosWidget(),
            ),
            FFRoute(
              name: 'scrHome',
              path: 'scrHome',
              requireAuth: true,
              builder: (context, params) => const ScrHomeWidget(),
            ),
            FFRoute(
              name: 'scrUsuarios',
              path: 'scrUsuarios',
              requireAuth: true,
              builder: (context, params) => const ScrUsuariosWidget(),
            ),
            FFRoute(
              name: 'scrMultipantalla',
              path: 'scrMultipantalla',
              requireAuth: true,
              builder: (context, params) => const ScrMultipantallaWidget(),
            ),
            FFRoute(
              name: 'scrLanding',
              path: 'scrLanding',
              requireAuth: true,
              builder: (context, params) => const ScrLandingWidget(),
            ),
            FFRoute(
              name: 'scrCel',
              path: 'scrCel',
              requireAuth: true,
              builder: (context, params) => const ScrCelWidget(),
            ),
            FFRoute(
              name: 'scrLibros',
              path: 'scrLibros',
              requireAuth: true,
              builder: (context, params) => const ScrLibrosWidget(),
            ),
            FFRoute(
              name: 'scrContenido',
              path: 'scrContenido',
              requireAuth: true,
              builder: (context, params) => ScrContenidoWidget(
                tipo: params.getParam(
                  'tipo',
                  ParamType.String,
                ),
                idLibro: params.getParam(
                  'idLibro',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: 'scrActividad',
              path: 'scrActividad',
              requireAuth: true,
              builder: (context, params) => const ScrActividadWidget(),
            ),
            FFRoute(
              name: 'scrBase',
              path: 'scrBase',
              requireAuth: true,
              builder: (context, params) => const ScrBaseWidget(),
            ),
            FFRoute(
              name: 'appForgot',
              path: 'appForgot',
              builder: (context, params) => const AppForgotWidget(),
            ),
            FFRoute(
              name: 'appRegister',
              path: 'appRegister',
              builder: (context, params) => AppRegisterWidget(
                id: params.getParam(
                  'id',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: 'appAddQR',
              path: 'appQr',
              requireAuth: true,
              builder: (context, params) => const AppAddQRWidget(),
            ),
            FFRoute(
              name: 'appHome',
              path: 'appHome',
              requireAuth: true,
              builder: (context, params) => const AppHomeWidget(),
            ),
            FFRoute(
              name: 'appBooks',
              path: 'appBooks',
              requireAuth: true,
              builder: (context, params) => const AppBooksWidget(),
            ),
            FFRoute(
              name: 'appSongs',
              path: 'appSongs',
              requireAuth: true,
              builder: (context, params) => const AppSongsWidget(),
            ),
            FFRoute(
              name: 'appPlayer',
              path: 'appPlayer',
              requireAuth: true,
              builder: (context, params) => const AppPlayerWidget(),
            ),
            FFRoute(
              name: 'appProfile',
              path: 'appProfile',
              requireAuth: true,
              builder: (context, params) => const AppProfileWidget(),
            ),
            FFRoute(
              name: 'scr404',
              path: 'scr404',
              requireAuth: true,
              builder: (context, params) => const Scr404Widget(),
            ),
            FFRoute(
              name: 'appLogin',
              path: 'appLogin',
              builder: (context, params) => const AppLoginWidget(),
            ),
            FFRoute(
              name: 'scrCambiarpass',
              path: 'scrCambiarpass',
              requireAuth: true,
              builder: (context, params) => const ScrCambiarpassWidget(),
            ),
            FFRoute(
              name: 'scrNvoPassword',
              path: 'scrNvoPassword',
              builder: (context, params) => const ScrNvoPasswordWidget(),
            ),
            FFRoute(
              name: 'appQRInvalido',
              path: 'appQRInvalido',
              builder: (context, params) => const AppQRInvalidoWidget(),
            ),
            FFRoute(
              name: 'scrRecomendaciones',
              path: 'scrRecomendaciones',
              requireAuth: true,
              builder: (context, params) => const ScrRecomendacionesWidget(),
            ),
            FFRoute(
              name: 'scrPadres',
              path: 'scrPadres',
              requireAuth: true,
              builder: (context, params) => const ScrPadresWidget(),
            ),
            FFRoute(
              name: 'scrQRs',
              path: 'scrQRs',
              requireAuth: true,
              builder: (context, params) => const ScrQRsWidget(),
            ),
            FFRoute(
              name: 'appVideoplayer',
              path: 'appVideoPlayer',
              requireAuth: true,
              builder: (context, params) => AppVideoplayerWidget(
                url: params.getParam(
                  'url',
                  ParamType.String,
                ),
                titulo: params.getParam(
                  'titulo',
                  ParamType.String,
                ),
                descripcion: params.getParam(
                  'descripcion',
                  ParamType.String,
                ),
              ),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/scrLogin';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? isWeb
                  ? Container()
                  : Container(
                      color: Colors.transparent,
                      child: Center(
                        child: Image.asset(
                          'assets/images/neuromusic_500x456.png',
                          width: 300.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(
        hasTransition: true,
        transitionType: PageTransitionType.fade,
        duration: Duration(milliseconds: 300),
      );
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
