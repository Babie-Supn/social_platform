import 'package:social_platform/index.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'local_store.g.dart';
part 'local_store.freezed.dart';

/// Add [LocalStoreState] implements to [Persistence] layer
///
/// Naming the new keys, and provide default set/get methods
extension _Ext on Persistence {
  static const name = '${Persistence.prefix}_name';
  String? getName() {
    return sp.getString(name);
  }

  Future<bool> setName(String? value) async {
    if (value == null) return sp.remove(name);
    return sp.setString(name, value);
  }

  static const gender = '${Persistence.prefix}_gender';
  Gender? getGender() {
    final value = sp.getString(gender);
    return Gender.values.firstWhere(
      (element) => element.name == value,
      orElse: () => Gender.man,
    );
  }

  Future<bool> setGender(Gender? value) async {
    if (value == null) return sp.remove(gender);
    return sp.setString(gender, value.name);
  }
}

/// [LocalStoreState] which return by [ref.watch]
///
/// It contains [toString], [fromJson], [toJson], [copyWith] methods
@freezed
class LocalStoreState with _$LocalStoreState {
  const LocalStoreState._();

  const factory LocalStoreState({
    @JsonKey(name: _Ext.name) required String name,
    @JsonKey(name: _Ext.gender) required Gender gender,
  }) = _LocalStoreState;

  factory LocalStoreState.fromJson(Map<String, dynamic> json) =>
      _$LocalStoreStateFromJson(json);
}

/// State management for [LocalStoreState]
///
/// By watching [persistenceProvider],
/// its state reacts when [Persistence] change
@riverpod
class LocalStore extends _$LocalStore {
  late final Persistence _pers;

  @override
  LocalStoreState build() {
    _pers = ref.watch(persistenceProvider);
    return LocalStoreState(
      name: _pers.getName() ?? 'Barbie-Supn',
      gender: _pers.getGender() ?? Gender.man,
    );
  }

  Future<bool> setName(String value) async {
    state = state.copyWith(name: value);
    return _pers.setName(value);
  }

  Future<bool> setGender(Gender value) async {
    state = state.copyWith(gender: value);
    return _pers.setGender(value);
  }
}
