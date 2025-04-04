// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DashboardData _$DashboardDataFromJson(Map<String, dynamic> json) =>
    _DashboardData(
      name: json['name'] as String,
      description: json['description'] as String,
      overviewText: json['overviewText'] as String,
      viewedCount: (json['viewedCount'] as num?)?.toInt(),
      viewedText: json['viewedText'] as String?,
      interestedCount: (json['interestedCount'] as num?)?.toInt(),
      interestedText: json['interestedText'] as String?,
      contactedYouCount: (json['contactedYouCount'] as num?)?.toInt(),
      contactedText: json['contactedText'] as String?,
      billBoardsDropDown: (json['billBoardsDropDown'] as List<dynamic>)
          .map((e) => BillBoardsDropDown.fromJson(e as Map<String, dynamic>))
          .toList(),
      statistics: (json['statistics'] as List<dynamic>?)
          ?.map((e) => Statistics.fromJson(e as Map<String, dynamic>))
          .toList(),
      notificationCount: (json['notificationCount'] as num).toInt(),
    );

_BillBoardsDropDown _$BillBoardsDropDownFromJson(Map<String, dynamic> json) =>
    _BillBoardsDropDown(
      billBoardId: (json['billBoardId'] as num).toInt(),
      billBoardName: json['billBoardName'] as String,
    );

_Statistics _$StatisticsFromJson(Map<String, dynamic> json) => _Statistics(
      weeklyStatistics: (json['weeklyStatistics'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      monthlyStatistics: (json['monthlyStatistics'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      bannerName: json['bannerName'] as String,
      bannerId: (json['bannerId'] as num).toInt(),
    );
