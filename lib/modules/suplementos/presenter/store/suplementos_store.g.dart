// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suplementos_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SuplementosStore on _SuplementosStoreBase, Store {
  late final _$isLoadingAtom =
      Atom(name: '_SuplementosStoreBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$_SuplementosStoreBaseActionController =
      ActionController(name: '_SuplementosStoreBase', context: context);

  @override
  void setIsLoading(dynamic value) {
    final _$actionInfo = _$_SuplementosStoreBaseActionController.startAction(
        name: '_SuplementosStoreBase.setIsLoading');
    try {
      return super.setIsLoading(value);
    } finally {
      _$_SuplementosStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading}
    ''';
  }
}
