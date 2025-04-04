import 'package:united_end2end/core/utils/common_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_data.freezed.dart';
part 'dashboard_data.g.dart';

DashboardData dashboardDataFromJson(Map<String, dynamic> data) =>
    DashboardData.fromJson(data);

@freezedOnResponse
abstract class DashboardData with _$DashboardData {
  const factory DashboardData({
    required String name,
    required String description,
    required String overviewText,
    int? viewedCount,
    String? viewedText,
    int? interestedCount,
    String? interestedText,
    int? contactedYouCount,
    String? contactedText,
    required List<BillBoardsDropDown> billBoardsDropDown,
    List<Statistics>? statistics,
    required int notificationCount,
  }) = _DashboardData;

  factory DashboardData.fromJson(Map<String, dynamic> json) =>
      _$DashboardDataFromJson(json);
}

@freezedOnResponse
abstract class BillBoardsDropDown with _$BillBoardsDropDown {
  const factory BillBoardsDropDown({
    required int billBoardId,
    required String billBoardName,
  }) = _BillBoardsDropDown;

  factory BillBoardsDropDown.fromJson(Map<String, dynamic> json) =>
      _$BillBoardsDropDownFromJson(json);
}

@freezedOnResponse
abstract class Statistics with _$Statistics {
  const factory Statistics({
    required List<int> weeklyStatistics,
    required List<int> monthlyStatistics,
    required String bannerName,
    required int bannerId,
  }) = _Statistics;

  factory Statistics.fromJson(Map<String, dynamic> json) =>
      _$StatisticsFromJson(json);
}
