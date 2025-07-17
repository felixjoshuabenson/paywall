import 'package:flutter/material.dart';
import 'package:paywell/src/screens/annual_plan_tab.dart';
import 'package:paywell/src/screens/monthly_plan_tab.dart';

class PaywallScreen extends StatefulWidget {
  const PaywallScreen({super.key});

  @override
  State<PaywallScreen> createState() => _PaywallScreenState();
}

class _PaywallScreenState extends State<PaywallScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  List tabItem = ['Annual', 'Monthly'];

  String _subtitle = 'First 14 days free, then \$69.99 (\$5.83/month)';

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) return;
      setState(() {
        _subtitle = _tabController.index == 0
            ? 'First 14 days free, then \$69.99 (\$5.83/month)'
            : 'First 7 days free, then \$12.99 / month';
      });
    });
  }

  @override
  void dispose() {
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
            height: 200,
            fit: BoxFit.cover,
          ),

          const SizedBox(height: 20),
          Text(
            'How your trial works',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            _subtitle,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
              fontFamily: 'Manrope',
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 100),
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: TabBar(
                    controller: _tabController,
                    dividerColor: Colors.transparent,
                    labelColor: Theme.of(context).primaryColor,
                    unselectedLabelColor: Colors.grey,
                    splashBorderRadius: BorderRadius.circular(20),
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),

                    tabs: List.generate(tabItem.length, (index) {
                      final key = tabItem.elementAt(index);
                      return Tab(
                        child: Row(
                          children: [Text(key, style: TextStyle(fontSize: 12))],
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
              children: [AnnualPlanTab(), MonthlyPlanTab()],
            ),
          ),
        ],
      ),
    );
  }
}
