import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:star_test_app/base_modal.dart';
import 'package:star_test_app/text_base.dart';

class CategoriesView extends StatefulWidget {
  const CategoriesView({Key? key}) : super(key: key);

  @override
  CategoriesViewState createState() => CategoriesViewState();
}

class CategoriesViewState extends State<CategoriesView> {
  double rate = 4.5;
  String valueName = "Venue Name";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTitle(context),
        _buildCategoryList(),
        _buildFeaturedVenues(),
      ],
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const TextBase(
          text: 'Categories',
          fontWeight: FontWeight.w700,
        ),
        TextButton(
          onPressed: () => _showAllCategoriesModal(context),
          child: const TextBase(
            text: 'See all',
            fontSize: 14,
          ),
        )
      ],
    );
  }

  void _showAllCategoriesModal(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const BaseModal(
        paddingValue: 20,
        heightFactor: .22,
        widthFactor: .9,
        content: Center(
          child: TextBase(
            text:
                'Here must be the event to change view to all Categories Page (navigator)',
            fontWeight: FontWeight.w300,
            fontSize: 15,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryList() {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildCircleCategory(
            iconPath: 'assets/hair_salon_icon.svg',
            title: 'Hair Salon',
          ),
          _buildCircleCategory(
            iconPath: 'assets/office_space_icon.svg',
            title: 'Office Space',
          ),
          _buildCircleCategory(
            iconPath: 'assets/barber_shop_icon.svg',
            title: 'Barber shop',
          ),
          _buildCircleCategory(
            iconPath: 'assets/med_spa.svg',
            title: 'MedSpa',
          ),
          _buildCircleCategory(
            iconPath: 'assets/hair_salon_icon.svg',
            title: 'Hair Salon',
          ),
          _buildCircleCategory(
            iconPath: 'assets/office_space_icon.svg',
            title: 'Office Space',
          ),
          _buildCircleCategory(
            iconPath: 'assets/barber_shop_icon.svg',
            title: 'Barber shop',
          ),
          _buildCircleCategory(
            iconPath: 'assets/med_spa.svg',
            title: 'MedSpa',
          ),
        ],
      ),
    );
  }

  Widget _buildCircleCategory({
    required String iconPath,
    required String title,
  }) {
    return GestureDetector(
      onTap: () {
        setState(() {
          valueName = title;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 2, right: 15),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 34,
              child: SvgPicture.asset(
                iconPath,
                height: 29.34,
              ),
            ),
            const SizedBox(height: 5),
            TextBase(
              text: title,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildFeaturedVenues() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        const TextBase(
          text: 'Featured venues',
          fontWeight: FontWeight.w700,
          fontSize: 20,
        ),
        const SizedBox(height: 20),
        Center(
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                child: Image.asset('assets/picture.png'),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: _buildVenueDetails(),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _buildVenueDetails() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      width: MediaQuery.of(context).size.width,
      height: 80,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextBase(
              text: valueName,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                RatingBar.builder(
                  itemSize: 15,
                  initialRating: rate,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (double value) {},
                ),
                const SizedBox(width: 2.5),
                TextBase(
                  text: rate.toString(),
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
