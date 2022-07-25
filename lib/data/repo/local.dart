import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_ordering/domain/entity/interface/unique.dart';

import '../../domain/repo/base.dart';

abstract class LocalRepo<T extends Unique> extends Repo<T> {
  final String path;

  LocalRepo(this.path);

  T map(Map<String, dynamic> json);

  @override
  Future<List<T>> getAll() async {
    final jsonList = await _fetch();
    return jsonList.map(map).toList();
  }

  @override
  Future<T> get(int id) async {
    final items = await getAll();
    return items.singleWhere((e) => e.id == id);
  }

  Future<List<Map<String, dynamic>>> _fetch() async {
    final bundle = PlatformAssetBundle();
    final string = await bundle.loadString(path);
    List<Map<String, dynamic>> json = List.castFrom(jsonDecode(string));
    return json;
  }
}
