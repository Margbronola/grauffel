// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../views/auth_wrapper/auth_wrapper_view.dart';

class Routes {
  static const String authWrapperView = '/';
  static const all = <String>{
    authWrapperView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.authWrapperView, page: AuthWrapperView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    AuthWrapperView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const AuthWrapperView(),
        settings: data,
      );
    },
  };
}
