// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../production_employee_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetProductionEmployeeCollection on Isar {
  IsarCollection<ProductionEmployee> get productionEmployees =>
      this.collection();
}

const ProductionEmployeeSchema = CollectionSchema(
  name: r'ProductionEmployee',
  id: -8159248375302291860,
  properties: {
    r'employee_id': PropertySchema(
      id: 0,
      name: r'employee_id',
      type: IsarType.long,
    ),
    r'quantity': PropertySchema(
      id: 1,
      name: r'quantity',
      type: IsarType.double,
    ),
    r'scoreserviceitem_id': PropertySchema(
      id: 2,
      name: r'scoreserviceitem_id',
      type: IsarType.long,
    ),
    r'serviceName': PropertySchema(
      id: 3,
      name: r'serviceName',
      type: IsarType.string,
    ),
    r'totalPartialScore': PropertySchema(
      id: 4,
      name: r'totalPartialScore',
      type: IsarType.double,
    ),
    r'unitaryValue': PropertySchema(
      id: 5,
      name: r'unitaryValue',
      type: IsarType.double,
    )
  },
  estimateSize: _productionEmployeeEstimateSize,
  serialize: _productionEmployeeSerialize,
  deserialize: _productionEmployeeDeserialize,
  deserializeProp: _productionEmployeeDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _productionEmployeeGetId,
  getLinks: _productionEmployeeGetLinks,
  attach: _productionEmployeeAttach,
  version: '3.0.5',
);

int _productionEmployeeEstimateSize(
  ProductionEmployee object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.serviceName.length * 3;
  return bytesCount;
}

void _productionEmployeeSerialize(
  ProductionEmployee object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.employee_id);
  writer.writeDouble(offsets[1], object.quantity);
  writer.writeLong(offsets[2], object.scoreserviceitem_id);
  writer.writeString(offsets[3], object.serviceName);
  writer.writeDouble(offsets[4], object.totalPartialScore);
  writer.writeDouble(offsets[5], object.unitaryValue);
}

ProductionEmployee _productionEmployeeDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ProductionEmployee(
    employee_id: reader.readLong(offsets[0]),
    quantity: reader.readDouble(offsets[1]),
    scoreserviceitem_id: reader.readLong(offsets[2]),
    serviceName: reader.readString(offsets[3]),
    totalPartialScore: reader.readDouble(offsets[4]),
    unitaryValue: reader.readDouble(offsets[5]),
  );
  return object;
}

P _productionEmployeeDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readDouble(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readDouble(offset)) as P;
    case 5:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _productionEmployeeGetId(ProductionEmployee object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _productionEmployeeGetLinks(
    ProductionEmployee object) {
  return [];
}

void _productionEmployeeAttach(
    IsarCollection<dynamic> col, Id id, ProductionEmployee object) {}

extension ProductionEmployeeQueryWhereSort
    on QueryBuilder<ProductionEmployee, ProductionEmployee, QWhere> {
  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ProductionEmployeeQueryWhere
    on QueryBuilder<ProductionEmployee, ProductionEmployee, QWhereClause> {
  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterWhereClause>
      idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ProductionEmployeeQueryFilter
    on QueryBuilder<ProductionEmployee, ProductionEmployee, QFilterCondition> {
  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterFilterCondition>
      employee_idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'employee_id',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterFilterCondition>
      employee_idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'employee_id',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterFilterCondition>
      employee_idLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'employee_id',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterFilterCondition>
      employee_idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'employee_id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterFilterCondition>
      quantityEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quantity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterFilterCondition>
      quantityGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quantity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterFilterCondition>
      quantityLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quantity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterFilterCondition>
      quantityBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quantity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterFilterCondition>
      scoreserviceitem_idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'scoreserviceitem_id',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterFilterCondition>
      scoreserviceitem_idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'scoreserviceitem_id',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterFilterCondition>
      scoreserviceitem_idLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'scoreserviceitem_id',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterFilterCondition>
      scoreserviceitem_idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'scoreserviceitem_id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterFilterCondition>
      serviceNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serviceName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterFilterCondition>
      serviceNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'serviceName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterFilterCondition>
      serviceNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'serviceName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterFilterCondition>
      serviceNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'serviceName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterFilterCondition>
      serviceNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'serviceName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterFilterCondition>
      serviceNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'serviceName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterFilterCondition>
      serviceNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'serviceName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterFilterCondition>
      serviceNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'serviceName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterFilterCondition>
      serviceNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serviceName',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterFilterCondition>
      serviceNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'serviceName',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterFilterCondition>
      totalPartialScoreEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalPartialScore',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterFilterCondition>
      totalPartialScoreGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalPartialScore',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterFilterCondition>
      totalPartialScoreLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalPartialScore',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterFilterCondition>
      totalPartialScoreBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalPartialScore',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterFilterCondition>
      unitaryValueEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unitaryValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterFilterCondition>
      unitaryValueGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'unitaryValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterFilterCondition>
      unitaryValueLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'unitaryValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterFilterCondition>
      unitaryValueBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'unitaryValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension ProductionEmployeeQueryObject
    on QueryBuilder<ProductionEmployee, ProductionEmployee, QFilterCondition> {}

extension ProductionEmployeeQueryLinks
    on QueryBuilder<ProductionEmployee, ProductionEmployee, QFilterCondition> {}

extension ProductionEmployeeQuerySortBy
    on QueryBuilder<ProductionEmployee, ProductionEmployee, QSortBy> {
  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterSortBy>
      sortByEmployee_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employee_id', Sort.asc);
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterSortBy>
      sortByEmployee_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employee_id', Sort.desc);
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterSortBy>
      sortByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.asc);
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterSortBy>
      sortByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.desc);
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterSortBy>
      sortByScoreserviceitem_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scoreserviceitem_id', Sort.asc);
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterSortBy>
      sortByScoreserviceitem_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scoreserviceitem_id', Sort.desc);
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterSortBy>
      sortByServiceName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceName', Sort.asc);
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterSortBy>
      sortByServiceNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceName', Sort.desc);
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterSortBy>
      sortByTotalPartialScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPartialScore', Sort.asc);
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterSortBy>
      sortByTotalPartialScoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPartialScore', Sort.desc);
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterSortBy>
      sortByUnitaryValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitaryValue', Sort.asc);
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterSortBy>
      sortByUnitaryValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitaryValue', Sort.desc);
    });
  }
}

extension ProductionEmployeeQuerySortThenBy
    on QueryBuilder<ProductionEmployee, ProductionEmployee, QSortThenBy> {
  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterSortBy>
      thenByEmployee_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employee_id', Sort.asc);
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterSortBy>
      thenByEmployee_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employee_id', Sort.desc);
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterSortBy>
      thenByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.asc);
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterSortBy>
      thenByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.desc);
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterSortBy>
      thenByScoreserviceitem_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scoreserviceitem_id', Sort.asc);
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterSortBy>
      thenByScoreserviceitem_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scoreserviceitem_id', Sort.desc);
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterSortBy>
      thenByServiceName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceName', Sort.asc);
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterSortBy>
      thenByServiceNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceName', Sort.desc);
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterSortBy>
      thenByTotalPartialScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPartialScore', Sort.asc);
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterSortBy>
      thenByTotalPartialScoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPartialScore', Sort.desc);
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterSortBy>
      thenByUnitaryValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitaryValue', Sort.asc);
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QAfterSortBy>
      thenByUnitaryValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitaryValue', Sort.desc);
    });
  }
}

extension ProductionEmployeeQueryWhereDistinct
    on QueryBuilder<ProductionEmployee, ProductionEmployee, QDistinct> {
  QueryBuilder<ProductionEmployee, ProductionEmployee, QDistinct>
      distinctByEmployee_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'employee_id');
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QDistinct>
      distinctByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quantity');
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QDistinct>
      distinctByScoreserviceitem_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'scoreserviceitem_id');
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QDistinct>
      distinctByServiceName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'serviceName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QDistinct>
      distinctByTotalPartialScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalPartialScore');
    });
  }

  QueryBuilder<ProductionEmployee, ProductionEmployee, QDistinct>
      distinctByUnitaryValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'unitaryValue');
    });
  }
}

extension ProductionEmployeeQueryProperty
    on QueryBuilder<ProductionEmployee, ProductionEmployee, QQueryProperty> {
  QueryBuilder<ProductionEmployee, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ProductionEmployee, int, QQueryOperations>
      employee_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'employee_id');
    });
  }

  QueryBuilder<ProductionEmployee, double, QQueryOperations>
      quantityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quantity');
    });
  }

  QueryBuilder<ProductionEmployee, int, QQueryOperations>
      scoreserviceitem_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'scoreserviceitem_id');
    });
  }

  QueryBuilder<ProductionEmployee, String, QQueryOperations>
      serviceNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'serviceName');
    });
  }

  QueryBuilder<ProductionEmployee, double, QQueryOperations>
      totalPartialScoreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalPartialScore');
    });
  }

  QueryBuilder<ProductionEmployee, double, QQueryOperations>
      unitaryValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'unitaryValue');
    });
  }
}
