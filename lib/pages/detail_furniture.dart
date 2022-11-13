import 'package:flutter/material.dart';
import 'package:flutter_furniture/models/furniture_models.dart';
import 'package:flutter_furniture/theme.dart';

class DetailFurniture extends StatefulWidget {
  const DetailFurniture({super.key, required this.furniture});

  final Furniture furniture;

  @override
  State<DetailFurniture> createState() => _DetailFurnitureState();
}

class _DetailFurnitureState extends State<DetailFurniture> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: headerAppBar(context),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Hero(
              tag: widget.furniture.image,
              child: Image.asset(
                widget.furniture.image,
                fit: BoxFit.cover,
                height: height * 0.6,
                width: double.infinity,
              ),
            ),
          ),
          Positioned(
            top: height * .55,
            left: 0,
            right: 0,
            child: Container(
              height: height,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: kWhiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // const HandleContainer(),
                  // FurnitureNameAndPrice(furniture: widget.furniture),
                  // FurnitureRating(furniture: widget.furniture),
                  // const FurnitureColor(),
                  // const FurnitureQuality(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14.0,
                      vertical: 28.0,
                    ),
                    child: Text(
                      'Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.',
                      style: TextStyle(
                        color: kBlackColor.withOpacity(0.3),
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    height: 48,
                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        backgroundColor: kBrownColor,
                      ),
                      child: const Text(
                        'ADD TO CART',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar headerAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      leading: InkWell(
        onTap: () => Navigator.pop(context),
        child: SizedBox(
          height: 18,
          width: 22,
          child: Image.asset('assets/icons/ic_back.png'),
        ),
      ),
      elevation: 0,
      title: const Text(
        'Detail',
        style: TextStyle(
          fontSize: 16,
          color: kFontPrimaryColor,
        ),
        textAlign: TextAlign.center,
      ),
      actions: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // FavoriteIcon(
            //   onTap: () {
            //     setState(() {
            //       widget.furniture.isFavorite == true
            //           ? widget.furniture.isFavorite = false
            //           : widget.furniture.isFavorite = true;
            //     });
            //   },
            //   icon: widget.furniture.isFavorite == true
            //       ? const Icon(
            //           Icons.favorite,
            //           size: 20,
            //           color: kRedColor,
            //         )
            //       : Image.asset('assets/icons/ic_heart.png'),
            // ),
            const SizedBox(width: 7),
            SizedBox(
              height: 18,
              width: 16,
              child: Image.asset('assets/icons/ic_share.png'),
            ),
            const SizedBox(width: 14),
          ],
        ),
      ],
    );
  }
}
