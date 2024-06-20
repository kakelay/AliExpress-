import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_review/app/index.dart';
import 'package:food_review/app/modules/index.dart';
import 'package:food_review/app/modules/shared_widgets/containers/base_scaffold.dart';
import 'package:food_review/app/modules/shared_widgets/index.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  final List<String> _images = [
    'https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fwp-content%2Fblogs.dir%2F6%2Ffiles%2F2022%2F12%2Fbuttercarameljapan-1.jpg?cbr=1&q=90',
    'https://www.usatoday.com/gcdn/authoring/authoring-images/2023/08/23/USAT/70655313007-starbucks-fall-beverages.png?crop=957,719,x241,y0',
    'https://s7d1.scene7.com/is/image/mcdonalds/Header_2PUB_Ingredients_2336x1040:2-column-desktop?resmode=sharp2',
    'https://s7d1.scene7.com/is/image/mcdonalds/Header_2PUB_Ingredients_2336x1040:2-column-desktop?resmode=sharp2',
    'https://s7d1.scene7.com/is/image/mcdonalds/Header_2PUB_Ingredients_2336x1040:2-column-desktop?resmode=sharp2',
    'https://s7d1.scene7.com/is/image/mcdonalds/Header_2PUB_Ingredients_2336x1040:2-column-desktop?resmode=sharp2',
    'https://s7d1.scene7.com/is/image/mcdonalds/Header_2PUB_Ingredients_2336x1040:2-column-desktop?resmode=sharp2',
    'https://s7d1.scene7.com/is/image/mcdonalds/Header_2PUB_Ingredients_2336x1040:2-column-desktop?resmode=sharp2',
  ];

  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  Widget _buildPageIndicator() {
    int totalIndicators = _images.length;
    int maxVisibleIndicators = 5;
    int startIndex = (_currentPage - maxVisibleIndicators ~/ 2)
        .clamp(0, totalIndicators - maxVisibleIndicators);
    int endIndex =
        (startIndex + maxVisibleIndicators).clamp(0, totalIndicators);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        endIndex - startIndex,
        (index) {
          final actualIndex = startIndex + index;
          return _currentPage == actualIndex
              ? _indicator(true)
              : _indicator(false);
        },
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 2),
      height: 6,
      width: isActive ? 16.0 : 14.0,
      decoration: BoxDecoration(
        color: isActive ? AppColors.blue0A4B78 : AppColors.greyECECEC,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      leadingsvgAssetPath: SvgAsset.map,
      centerTitle: false,
      title: 'បុរីពិភពថ្មីចំការដូង',
      titleFontWeight: FontWeight.w600,
      topPadding: 0,
      horizontalPadding: 0,
      body: BaseScaffold(
        horizontalPadding: AppStyle.SPACING_8,
        topPadding: AppStyle.SPACING_8,
        leadingsvgAssetPath: SvgAsset.logo,
        appBarColor: AppColors.green00A753,
        showTitle: false,
        title: '.',
        body: ListView(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: SizedBox(
                    height: 165,
                    child: PageView.builder(
                      controller: _pageController,
                      onPageChanged: _onPageChanged,
                      itemCount: _images.length,
                      allowImplicitScrolling: true,
                      itemBuilder: (context, index) {
                        return Image.network(
                          _images[index],
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.grey32313B.withOpacity(0.5),
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                    ),
                    padding: const EdgeInsets.all(AppStyle.SPACING_6),
                    child: _buildPageIndicator(),
                  ),
                ),
              ],
            ),
            const Gap(AppStyle.SPACING_16),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: AppStyle.SPACING_8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: ContainerDecoration.rounded(
                      borderColor: AppColors.greyECECEC,
                      borderRadius: 8,
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://media.karousell.com/media/photos/products/2023/5/22/starbucks_caff_latte_coffee_po_1684751687_c326376d_progressive.jpg',
                        ),
                      ),
                    ),
                  ),
                  const Gap(AppStyle.SPACING_12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        'ROSE Coffee & Tea',
                        fontSize: AppStyle.SPACING_16,
                        weight: FontWeight.w700,
                        color: AppColors.blue0A4B78,
                      ),
                      const Gap(AppStyle.SPACING_10),
                      const Row(
                        children: [
                          Icon(Icons.star, color: AppColors.blue0A4B78),
                          Icon(Icons.star, color: AppColors.blue0A4B78),
                          Icon(Icons.star, color: AppColors.blue0A4B78),
                          Icon(Icons.star, color: AppColors.blue0A4B78),
                          Icon(
                            Icons.star_border_outlined,
                            color: AppColors.blue0A4B78,
                          ),
                        ],
                      ),
                      const Gap(AppStyle.SPACING_10),
                      Row(
                        children: [
                          const Icon(
                            Icons.file_download_rounded,
                            color: AppColors.green00A753,
                          ),
                          const Gap(AppStyle.SPACING_4),
                          TextWidget(
                            'Save QR Code',
                            weight: FontWeight.w500,
                            color: AppColors.green00A753,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Gap(AppStyle.SPACING_16),
            Container(
              height: AppStyle.SPACING_8,
              color: AppColors.greyECECEC,
            ),
            DefaultTabController(
              length: 3,
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      constraints: const BoxConstraints.expand(height: 50),
                      child: const TabBar(
                        indicatorColor: AppColors.green00A753,
                        labelColor: AppColors.green00A753,
                        unselectedLabelColor: AppColors.grey9E9E9E,
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                        unselectedLabelStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                        automaticIndicatorColorAdjustment: false,
                        tabs: [
                          Tab(text: 'Home'),
                          Tab(text: 'About'),
                          Tab(text: 'Reviews'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Get.height,
                      child: const TabBarView(
                        children: [
                          TabContent(
                            imageUrl:
                                'https://upload.wikimedia.org/wikipedia/en/thumb/d/d3/Starbucks_Corporation_Logo_2011.svg/1024px-Starbucks_Corporation_Logo_2011.svg.png',
                            text: 'Home Page',
                          ),
                          TabContent(
                            imageUrl:
                                'https://upload.wikimedia.org/wikipedia/en/thumb/d/d3/Starbucks_Corporation_Logo_2011.svg/1024px-Starbucks_Corporation_Logo_2011.svg.png',
                            text: 'About Page',
                          ),
                          TabContent(
                            imageUrl:
                                'https://upload.wikimedia.org/wikipedia/en/thumb/d/d3/Starbucks_Corporation_Logo_2011.svg/1024px-Starbucks_Corporation_Logo_2011.svg.png',
                            text: 'Review Page',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TabContent extends StatelessWidget {
  final String imageUrl;
  final String text;

  const TabContent({
    required this.imageUrl,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          const Gap(AppStyle.SPACING_20),
          Container(
            height: 200,
            width: 200,
            child: Image.network(
              imageUrl,
            ),
          ),
          const SizedBox(height: 20),
          TextWidget(
            text,
            fontSize: AppStyle.SPACING_24,
            weight: FontWeight.w700,
          ),
          const Gap(AppStyle.SPACING_16),
          Container(
            height: 200,
            width: 200,
            child: Image.network(
              'https://cdn.britannica.com/17/155017-050-9AC96FC8/Example-QR-code.jpg',
            ),
          ),
        ],
      ),
    );
  }
}
