// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DashboardData {
  String get name;
  String get description;
  String get overviewText;
  int? get viewedCount;
  String? get viewedText;
  int? get interestedCount;
  String? get interestedText;
  int? get contactedYouCount;
  String? get contactedText;
  List<BillBoardsDropDown> get billBoardsDropDown;
  List<Statistics>? get statistics;
  int get notificationCount;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DashboardData &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.overviewText, overviewText) ||
                other.overviewText == overviewText) &&
            (identical(other.viewedCount, viewedCount) ||
                other.viewedCount == viewedCount) &&
            (identical(other.viewedText, viewedText) ||
                other.viewedText == viewedText) &&
            (identical(other.interestedCount, interestedCount) ||
                other.interestedCount == interestedCount) &&
            (identical(other.interestedText, interestedText) ||
                other.interestedText == interestedText) &&
            (identical(other.contactedYouCount, contactedYouCount) ||
                other.contactedYouCount == contactedYouCount) &&
            (identical(other.contactedText, contactedText) ||
                other.contactedText == contactedText) &&
            const DeepCollectionEquality()
                .equals(other.billBoardsDropDown, billBoardsDropDown) &&
            const DeepCollectionEquality()
                .equals(other.statistics, statistics) &&
            (identical(other.notificationCount, notificationCount) ||
                other.notificationCount == notificationCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      description,
      overviewText,
      viewedCount,
      viewedText,
      interestedCount,
      interestedText,
      contactedYouCount,
      contactedText,
      const DeepCollectionEquality().hash(billBoardsDropDown),
      const DeepCollectionEquality().hash(statistics),
      notificationCount);

  @override
  String toString() {
    return 'DashboardData(name: $name, description: $description, overviewText: $overviewText, viewedCount: $viewedCount, viewedText: $viewedText, interestedCount: $interestedCount, interestedText: $interestedText, contactedYouCount: $contactedYouCount, contactedText: $contactedText, billBoardsDropDown: $billBoardsDropDown, statistics: $statistics, notificationCount: $notificationCount)';
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _DashboardData implements DashboardData {
  const _DashboardData(
      {required this.name,
      required this.description,
      required this.overviewText,
      this.viewedCount,
      this.viewedText,
      this.interestedCount,
      this.interestedText,
      this.contactedYouCount,
      this.contactedText,
      required final List<BillBoardsDropDown> billBoardsDropDown,
      final List<Statistics>? statistics,
      required this.notificationCount})
      : _billBoardsDropDown = billBoardsDropDown,
        _statistics = statistics;
  factory _DashboardData.fromJson(Map<String, dynamic> json) =>
      _$DashboardDataFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String overviewText;
  @override
  final int? viewedCount;
  @override
  final String? viewedText;
  @override
  final int? interestedCount;
  @override
  final String? interestedText;
  @override
  final int? contactedYouCount;
  @override
  final String? contactedText;
  final List<BillBoardsDropDown> _billBoardsDropDown;
  @override
  List<BillBoardsDropDown> get billBoardsDropDown {
    if (_billBoardsDropDown is EqualUnmodifiableListView)
      return _billBoardsDropDown;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_billBoardsDropDown);
  }

  final List<Statistics>? _statistics;
  @override
  List<Statistics>? get statistics {
    final value = _statistics;
    if (value == null) return null;
    if (_statistics is EqualUnmodifiableListView) return _statistics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int notificationCount;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DashboardData &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.overviewText, overviewText) ||
                other.overviewText == overviewText) &&
            (identical(other.viewedCount, viewedCount) ||
                other.viewedCount == viewedCount) &&
            (identical(other.viewedText, viewedText) ||
                other.viewedText == viewedText) &&
            (identical(other.interestedCount, interestedCount) ||
                other.interestedCount == interestedCount) &&
            (identical(other.interestedText, interestedText) ||
                other.interestedText == interestedText) &&
            (identical(other.contactedYouCount, contactedYouCount) ||
                other.contactedYouCount == contactedYouCount) &&
            (identical(other.contactedText, contactedText) ||
                other.contactedText == contactedText) &&
            const DeepCollectionEquality()
                .equals(other._billBoardsDropDown, _billBoardsDropDown) &&
            const DeepCollectionEquality()
                .equals(other._statistics, _statistics) &&
            (identical(other.notificationCount, notificationCount) ||
                other.notificationCount == notificationCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      description,
      overviewText,
      viewedCount,
      viewedText,
      interestedCount,
      interestedText,
      contactedYouCount,
      contactedText,
      const DeepCollectionEquality().hash(_billBoardsDropDown),
      const DeepCollectionEquality().hash(_statistics),
      notificationCount);

  @override
  String toString() {
    return 'DashboardData(name: $name, description: $description, overviewText: $overviewText, viewedCount: $viewedCount, viewedText: $viewedText, interestedCount: $interestedCount, interestedText: $interestedText, contactedYouCount: $contactedYouCount, contactedText: $contactedText, billBoardsDropDown: $billBoardsDropDown, statistics: $statistics, notificationCount: $notificationCount)';
  }
}

/// @nodoc
mixin _$BillBoardsDropDown {
  int get billBoardId;
  String get billBoardName;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BillBoardsDropDown &&
            (identical(other.billBoardId, billBoardId) ||
                other.billBoardId == billBoardId) &&
            (identical(other.billBoardName, billBoardName) ||
                other.billBoardName == billBoardName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, billBoardId, billBoardName);

  @override
  String toString() {
    return 'BillBoardsDropDown(billBoardId: $billBoardId, billBoardName: $billBoardName)';
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _BillBoardsDropDown implements BillBoardsDropDown {
  const _BillBoardsDropDown(
      {required this.billBoardId, required this.billBoardName});
  factory _BillBoardsDropDown.fromJson(Map<String, dynamic> json) =>
      _$BillBoardsDropDownFromJson(json);

  @override
  final int billBoardId;
  @override
  final String billBoardName;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BillBoardsDropDown &&
            (identical(other.billBoardId, billBoardId) ||
                other.billBoardId == billBoardId) &&
            (identical(other.billBoardName, billBoardName) ||
                other.billBoardName == billBoardName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, billBoardId, billBoardName);

  @override
  String toString() {
    return 'BillBoardsDropDown(billBoardId: $billBoardId, billBoardName: $billBoardName)';
  }
}

/// @nodoc
mixin _$Statistics {
  List<int> get weeklyStatistics;
  List<int> get monthlyStatistics;
  String get bannerName;
  int get bannerId;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Statistics &&
            const DeepCollectionEquality()
                .equals(other.weeklyStatistics, weeklyStatistics) &&
            const DeepCollectionEquality()
                .equals(other.monthlyStatistics, monthlyStatistics) &&
            (identical(other.bannerName, bannerName) ||
                other.bannerName == bannerName) &&
            (identical(other.bannerId, bannerId) ||
                other.bannerId == bannerId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(weeklyStatistics),
      const DeepCollectionEquality().hash(monthlyStatistics),
      bannerName,
      bannerId);

  @override
  String toString() {
    return 'Statistics(weeklyStatistics: $weeklyStatistics, monthlyStatistics: $monthlyStatistics, bannerName: $bannerName, bannerId: $bannerId)';
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _Statistics implements Statistics {
  const _Statistics(
      {required final List<int> weeklyStatistics,
      required final List<int> monthlyStatistics,
      required this.bannerName,
      required this.bannerId})
      : _weeklyStatistics = weeklyStatistics,
        _monthlyStatistics = monthlyStatistics;
  factory _Statistics.fromJson(Map<String, dynamic> json) =>
      _$StatisticsFromJson(json);

  final List<int> _weeklyStatistics;
  @override
  List<int> get weeklyStatistics {
    if (_weeklyStatistics is EqualUnmodifiableListView)
      return _weeklyStatistics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weeklyStatistics);
  }

  final List<int> _monthlyStatistics;
  @override
  List<int> get monthlyStatistics {
    if (_monthlyStatistics is EqualUnmodifiableListView)
      return _monthlyStatistics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_monthlyStatistics);
  }

  @override
  final String bannerName;
  @override
  final int bannerId;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Statistics &&
            const DeepCollectionEquality()
                .equals(other._weeklyStatistics, _weeklyStatistics) &&
            const DeepCollectionEquality()
                .equals(other._monthlyStatistics, _monthlyStatistics) &&
            (identical(other.bannerName, bannerName) ||
                other.bannerName == bannerName) &&
            (identical(other.bannerId, bannerId) ||
                other.bannerId == bannerId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_weeklyStatistics),
      const DeepCollectionEquality().hash(_monthlyStatistics),
      bannerName,
      bannerId);

  @override
  String toString() {
    return 'Statistics(weeklyStatistics: $weeklyStatistics, monthlyStatistics: $monthlyStatistics, bannerName: $bannerName, bannerId: $bannerId)';
  }
}

// dart format on
