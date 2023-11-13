// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemons_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pokemon _$PokemonFromJson(Map<String, dynamic> json) {
  return _Pokemon.fromJson(json);
}

/// @nodoc
mixin _$Pokemon {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  List<Type> get types => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonCopyWith<Pokemon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonCopyWith<$Res> {
  factory $PokemonCopyWith(Pokemon value, $Res Function(Pokemon) then) =
      _$PokemonCopyWithImpl<$Res, Pokemon>;
  @useResult
  $Res call(
      {int id, String name, int weight, String imageUrl, List<Type> types});
}

/// @nodoc
class _$PokemonCopyWithImpl<$Res, $Val extends Pokemon>
    implements $PokemonCopyWith<$Res> {
  _$PokemonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? weight = null,
    Object? imageUrl = null,
    Object? types = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<Type>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonImplCopyWith<$Res> implements $PokemonCopyWith<$Res> {
  factory _$$PokemonImplCopyWith(
          _$PokemonImpl value, $Res Function(_$PokemonImpl) then) =
      __$$PokemonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String name, int weight, String imageUrl, List<Type> types});
}

/// @nodoc
class __$$PokemonImplCopyWithImpl<$Res>
    extends _$PokemonCopyWithImpl<$Res, _$PokemonImpl>
    implements _$$PokemonImplCopyWith<$Res> {
  __$$PokemonImplCopyWithImpl(
      _$PokemonImpl _value, $Res Function(_$PokemonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? weight = null,
    Object? imageUrl = null,
    Object? types = null,
  }) {
    return _then(_$PokemonImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<Type>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonImpl implements _Pokemon {
  const _$PokemonImpl(
      {required this.id,
      required this.name,
      required this.weight,
      required this.imageUrl,
      required final List<Type> types})
      : _types = types;

  factory _$PokemonImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int weight;
  @override
  final String imageUrl;
  final List<Type> _types;
  @override
  List<Type> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  String toString() {
    return 'Pokemon(id: $id, name: $name, weight: $weight, imageUrl: $imageUrl, types: $types)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, weight, imageUrl,
      const DeepCollectionEquality().hash(_types));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonImplCopyWith<_$PokemonImpl> get copyWith =>
      __$$PokemonImplCopyWithImpl<_$PokemonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonImplToJson(
      this,
    );
  }
}

abstract class _Pokemon implements Pokemon {
  const factory _Pokemon(
      {required final int id,
      required final String name,
      required final int weight,
      required final String imageUrl,
      required final List<Type> types}) = _$PokemonImpl;

  factory _Pokemon.fromJson(Map<String, dynamic> json) = _$PokemonImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get weight;
  @override
  String get imageUrl;
  @override
  List<Type> get types;
  @override
  @JsonKey(ignore: true)
  _$$PokemonImplCopyWith<_$PokemonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonEntity _$PokemonEntityFromJson(Map<String, dynamic> json) {
  return _PokemonEntity.fromJson(json);
}

/// @nodoc
mixin _$PokemonEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get types => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonEntityCopyWith<PokemonEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonEntityCopyWith<$Res> {
  factory $PokemonEntityCopyWith(
          PokemonEntity value, $Res Function(PokemonEntity) then) =
      _$PokemonEntityCopyWithImpl<$Res, PokemonEntity>;
  @useResult
  $Res call(
      {int id, String name, int weight, List<Map<String, dynamic>> types});
}

/// @nodoc
class _$PokemonEntityCopyWithImpl<$Res, $Val extends PokemonEntity>
    implements $PokemonEntityCopyWith<$Res> {
  _$PokemonEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? weight = null,
    Object? types = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonEntityImplCopyWith<$Res>
    implements $PokemonEntityCopyWith<$Res> {
  factory _$$PokemonEntityImplCopyWith(
          _$PokemonEntityImpl value, $Res Function(_$PokemonEntityImpl) then) =
      __$$PokemonEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String name, int weight, List<Map<String, dynamic>> types});
}

/// @nodoc
class __$$PokemonEntityImplCopyWithImpl<$Res>
    extends _$PokemonEntityCopyWithImpl<$Res, _$PokemonEntityImpl>
    implements _$$PokemonEntityImplCopyWith<$Res> {
  __$$PokemonEntityImplCopyWithImpl(
      _$PokemonEntityImpl _value, $Res Function(_$PokemonEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? weight = null,
    Object? types = null,
  }) {
    return _then(_$PokemonEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonEntityImpl implements _PokemonEntity {
  const _$PokemonEntityImpl(
      {required this.id,
      required this.name,
      required this.weight,
      required final List<Map<String, dynamic>> types})
      : _types = types;

  factory _$PokemonEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int weight;
  final List<Map<String, dynamic>> _types;
  @override
  List<Map<String, dynamic>> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  String toString() {
    return 'PokemonEntity(id: $id, name: $name, weight: $weight, types: $types)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, weight,
      const DeepCollectionEquality().hash(_types));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonEntityImplCopyWith<_$PokemonEntityImpl> get copyWith =>
      __$$PokemonEntityImplCopyWithImpl<_$PokemonEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonEntityImplToJson(
      this,
    );
  }
}

abstract class _PokemonEntity implements PokemonEntity {
  const factory _PokemonEntity(
      {required final int id,
      required final String name,
      required final int weight,
      required final List<Map<String, dynamic>> types}) = _$PokemonEntityImpl;

  factory _PokemonEntity.fromJson(Map<String, dynamic> json) =
      _$PokemonEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get weight;
  @override
  List<Map<String, dynamic>> get types;
  @override
  @JsonKey(ignore: true)
  _$$PokemonEntityImplCopyWith<_$PokemonEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonMinimal _$PokemonMinimalFromJson(Map<String, dynamic> json) {
  return _PokemonMinimal.fromJson(json);
}

/// @nodoc
mixin _$PokemonMinimal {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonMinimalCopyWith<PokemonMinimal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonMinimalCopyWith<$Res> {
  factory $PokemonMinimalCopyWith(
          PokemonMinimal value, $Res Function(PokemonMinimal) then) =
      _$PokemonMinimalCopyWithImpl<$Res, PokemonMinimal>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$PokemonMinimalCopyWithImpl<$Res, $Val extends PokemonMinimal>
    implements $PokemonMinimalCopyWith<$Res> {
  _$PokemonMinimalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonMinimalImplCopyWith<$Res>
    implements $PokemonMinimalCopyWith<$Res> {
  factory _$$PokemonMinimalImplCopyWith(_$PokemonMinimalImpl value,
          $Res Function(_$PokemonMinimalImpl) then) =
      __$$PokemonMinimalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$PokemonMinimalImplCopyWithImpl<$Res>
    extends _$PokemonMinimalCopyWithImpl<$Res, _$PokemonMinimalImpl>
    implements _$$PokemonMinimalImplCopyWith<$Res> {
  __$$PokemonMinimalImplCopyWithImpl(
      _$PokemonMinimalImpl _value, $Res Function(_$PokemonMinimalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$PokemonMinimalImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonMinimalImpl implements _PokemonMinimal {
  const _$PokemonMinimalImpl({required this.name, required this.url});

  factory _$PokemonMinimalImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonMinimalImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'PokemonMinimal(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonMinimalImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonMinimalImplCopyWith<_$PokemonMinimalImpl> get copyWith =>
      __$$PokemonMinimalImplCopyWithImpl<_$PokemonMinimalImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonMinimalImplToJson(
      this,
    );
  }
}

abstract class _PokemonMinimal implements PokemonMinimal {
  const factory _PokemonMinimal(
      {required final String name,
      required final String url}) = _$PokemonMinimalImpl;

  factory _PokemonMinimal.fromJson(Map<String, dynamic> json) =
      _$PokemonMinimalImpl.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$PokemonMinimalImplCopyWith<_$PokemonMinimalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Type _$TypeFromJson(Map<String, dynamic> json) {
  return _Type.fromJson(json);
}

/// @nodoc
mixin _$Type {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeCopyWith<Type> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeCopyWith<$Res> {
  factory $TypeCopyWith(Type value, $Res Function(Type) then) =
      _$TypeCopyWithImpl<$Res, Type>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$TypeCopyWithImpl<$Res, $Val extends Type>
    implements $TypeCopyWith<$Res> {
  _$TypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TypeImplCopyWith<$Res> implements $TypeCopyWith<$Res> {
  factory _$$TypeImplCopyWith(
          _$TypeImpl value, $Res Function(_$TypeImpl) then) =
      __$$TypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$TypeImplCopyWithImpl<$Res>
    extends _$TypeCopyWithImpl<$Res, _$TypeImpl>
    implements _$$TypeImplCopyWith<$Res> {
  __$$TypeImplCopyWithImpl(_$TypeImpl _value, $Res Function(_$TypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$TypeImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TypeImpl extends _Type {
  const _$TypeImpl({required this.name}) : super._();

  factory _$TypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$TypeImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'Type(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeImplCopyWith<_$TypeImpl> get copyWith =>
      __$$TypeImplCopyWithImpl<_$TypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TypeImplToJson(
      this,
    );
  }
}

abstract class _Type extends Type {
  const factory _Type({required final String name}) = _$TypeImpl;
  const _Type._() : super._();

  factory _Type.fromJson(Map<String, dynamic> json) = _$TypeImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$TypeImplCopyWith<_$TypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
