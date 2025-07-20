import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paywell/screens/plan_tab.dart';
import 'package:paywell/subvalues.dart';
import 'package:paywell/theme.dart';

class PaywallScreen extends StatefulWidget {
  const PaywallScreen({super.key});

  @override
  State<PaywallScreen> createState() => _PaywallScreenState();
}

class _PaywallScreenState extends State<PaywallScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late String _currentSubtitle;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _currentSubtitle = Subvalues.getSubtitle(
      0,
    ); // Initialize with first tab's subtitle

    _tabController.addListener(_handleTabChange);
  }

  void _handleTabChange() {
    if (!_tabController.indexIsChanging) {
      setState(() {
        _currentSubtitle = Subvalues.getSubtitle(_tabController.index);
      });
    }
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabChange);
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'assets/paywall_graphic.png',
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.3,
            fit: BoxFit.cover,
          ),

          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Text(
            'How your trial works',
            style: AppTextStyles.title.copyWith(color: AppColors.whiteColor),
          ),
          Text(
            _currentSubtitle,
            softWrap: true,
            style: AppTextStyles.subtitle.copyWith(
              color: AppColors.subtitleText,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.04,

                  margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.28,
                  ),

                  decoration: BoxDecoration(
                    color: AppColors.tabBackground,
                    borderRadius: BorderRadius.circular(32.r),
                  ),
                  child: TabBar(
                    controller: _tabController,
                    dividerColor: Colors.transparent,
                    unselectedLabelColor: AppColors.tabUnselected,
                    splashBorderRadius: BorderRadius.circular(24.r),
                    indicatorSize: TabBarIndicatorSize.tab,

                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.r),
                      color: AppColors.whiteColor,
                    ),

                    tabs: List.generate(Subvalues.tabItems.length, (index) {
                      final key = Subvalues.tabItems.elementAt(index);
                      return Tab(
                        child: Text(
                          key,
                          textAlign: TextAlign.center, //this did not work
                          style: AppTextStyles.tabLabel,
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                PlanTab(
                  timelineItems: Subvalues.annualTimelineItems,
                  payButtonText: 'Try for \$0.00',
                  onPayPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Starting annual trial...')),
                    );
                  },
                  onRestorePressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Restoring purchase...')),
                    );
                  },
                ),
                PlanTab(
                  timelineItems: Subvalues.monthlyTimelineItems,
                  payButtonText: 'Try for \$0.00',
                  onPayPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Starting monthly trial...'),
                      ),
                    );
                  },
                  onRestorePressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Restoring purchase...')),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
