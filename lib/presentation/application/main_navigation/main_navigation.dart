import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_finance_tracker/application/bloc/authentication/auth_bloc.dart';
import 'package:personal_finance_tracker/application/services/operations/after_operations.dart';
import 'package:personal_finance_tracker/core/constants/app_colors.dart';
import 'package:personal_finance_tracker/core/extensions/loading.dart';
import 'package:personal_finance_tracker/core/shared/enums/processing_status.dart';
import 'package:personal_finance_tracker/core/shared/enums/status.dart';
import 'package:personal_finance_tracker/core/theme/styles_manager.dart';
import 'package:personal_finance_tracker/gen/assets.gen.dart';
import 'package:personal_finance_tracker/presentation/application/analytics/analytics_screen.dart';
import 'package:personal_finance_tracker/presentation/application/budget/budget_screen.dart';
import 'package:personal_finance_tracker/presentation/application/home/home_screen.dart';
import 'package:personal_finance_tracker/presentation/application/profile/profile_screen.dart';
import 'package:personal_finance_tracker/presentation/application/transaction/transaction_screen.dart';
import 'package:personal_finance_tracker/presentation/core/are_you_sure_dialog.dart';
import 'package:personal_finance_tracker/presentation/core/toast_info.dart';

class MainNavigationScreen extends StatefulWidget {
  
  const MainNavigationScreen({
    super.key,
    this.index = 0,
  });

  final int index;

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  bool isExtended = true;
  PageController pageController = PageController();
  SideMenuController sideMenu = SideMenuController();

  @override
  void initState() {
    sideMenu.addListener((index) {
      if (mounted) {
        pageController.jumpToPage(index);
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    sideMenu.dispose();
    pageController.dispose();
    super.dispose();
  }

  toggleIsExtended() {
    setState(() {
      isExtended = !isExtended;
    });
  }

  logout() async {
    context.read<AuthenticationBloc>().add(const SignOutEvent());
  }

  logoutDialog() {
    areYouSureDialog(
      title: 'Logout',
      content: 'Are you sure you want to logout?',
      context: context,
      action: logout,
    );
  }

  List _buildMenuItems() {
    return [
      SideMenuItem(
        title: 'Home',
        onTap: (index, _) {
          sideMenu.changePage(index);
        },
        icon: const Icon(
          FontAwesomeIcons.home,
        ),
      ),
      SideMenuItem(
        title: 'Transactions',
        onTap: (index, _) {
          sideMenu.changePage(index);
        },
        icon: const Icon(
          FontAwesomeIcons.moneyBill,
        ),
      ),
      SideMenuItem(
        title: 'Budgets',
        onTap: (index, _) {
          sideMenu.changePage(index);
        },
        icon: const Icon(
          FontAwesomeIcons.moneyCheck,
        ),
      ),
      SideMenuItem(
        title: 'Analytics',
        onTap: (index, _) {
          sideMenu.changePage(index);
        },
        icon: const Icon(
          FontAwesomeIcons.moneyBillTrendUp,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        if (state.processingStatus == ProcessingStatus.waiting) {
          context.showLoader();
        } else if (state.processingStatus == ProcessingStatus.error) {
          context.hideLoader();
          toastInfo(
            msg: 'Ops! ${state.error.errorMsg}',
            status: Status.error,
          );
        } else if (state.processingStatus == ProcessingStatus.success) {
          context.hideLoader();
          AfterOperationNavigation.navigateToLogin(context: context);
        }
      },
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: AppBar(
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: AppColors.liteAccentColor,
                    width: 1.0,
                  ),
                ),
              ),
            ),
            automaticallyImplyLeading: false,
            backgroundColor: AppColors.rateConColor3,
            elevation: 0,
            centerTitle: true,
            actions: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: size.width > 800 ? 155 : 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: AppColors.rateConColor3,
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(
                        5.0,
                      ),
                      child: Center(
                        child: Text(
                          'August 3rd, 2024 - 08:32pm',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: getLightStyle(
                            color: Colors.black,
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        sideMenu.changePage(19);
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            Assets.images.profile.path,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Hello Jane',
                            style: getRegularStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  SvgPicture.asset(
                    Assets.icons.notification,
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                ],
              )
            ],
            leadingWidth: 200,
            leading: Row(
              children: [
                IconButton(
                  onPressed: () => setState(() {
                    isExtended = !isExtended;
                  }),
                  icon: const Icon(
                    Icons.menu,
                    color: AppColors.greyText,
                    size: 20,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                  Assets.images.finLogo.path,
                ),
              ],
            ),
          ),
        ),
        body: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(0),
              child: LayoutBuilder(builder: (context, constraint) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints:
                        BoxConstraints(minHeight: constraint.maxHeight),
                    child: IntrinsicHeight(
                      child: Container(
                        color: AppColors.rateConColor3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: size.height / 1.3,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SideMenu(
                                    controller: sideMenu,
                                    collapseWidth: 300,
                                    style: SideMenuStyle(
                                      showTooltip: false,
                                      displayMode: isExtended
                                          ? SideMenuDisplayMode.open
                                          : SideMenuDisplayMode.compact,
                                      showHamburger: false,
                                      arrowOpen: AppColors.primaryColor
                                          .withOpacity(0.3),
                                      arrowCollapse: AppColors.primaryColor
                                          .withOpacity(0.3),
                                      hoverColor: Colors.grey.withOpacity(0.1),
                                      selectedIconColorExpandable:
                                          AppColors.vistaYellow,
                                      unselectedIconColorExpandable:
                                          AppColors.greyText,
                                      selectedTitleTextStyleExpandable:
                                          getRegularStyle(
                                        color: AppColors.vistaYellow,
                                      ),
                                      selectedColor: AppColors.vistaYellow,
                                      selectedTitleTextStyle: getMediumStyle(
                                        color: Colors.white,
                                      ),
                                      unselectedTitleTextStyle: getLightStyle(
                                        color: AppColors.greyText,
                                      ),
                                      selectedIconColor: Colors.white,
                                      iconSize: 18,
                                      unselectedIconColor: AppColors.greyText,
                                    ),
                                    items: _buildMenuItems(),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 10.0,
                                left: isExtended ? 20.0 : 10,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: GestureDetector(
                                      onTap: () => logoutDialog(),
                                      child: Wrap(
                                        crossAxisAlignment:
                                            WrapCrossAlignment.center,
                                        spacing: 8,
                                        children: [
                                          Text(
                                            'Log out',
                                            style: getRegularStyle(
                                              color: AppColors.greyText,
                                            ),
                                          ),
                                          const Icon(
                                            Icons.logout,
                                            color: AppColors.greyText,
                                            size: 20,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 50,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top,
                ),
                child: PageView(
                  controller: pageController,
                  children: const [
                    HomeScreen(),
                    TransactionScreen(),
                    BudgetScreen(),
                    AnalyticsScreen(),
                    ProfileScreen(),
                    // UserProfileScreen(
                    //   sideMenu: sideMenu,
                    // ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
