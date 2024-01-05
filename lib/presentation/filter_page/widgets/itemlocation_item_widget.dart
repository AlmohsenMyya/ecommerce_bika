import '../models/itemlocation_item_model.dart';
import 'package:dhiwise_ecommerce/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemlocationItemWidget extends StatelessWidget {
  ItemlocationItemWidget(
    this.itemlocationItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ItemlocationItemModel itemlocationItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Theme(
        data: ThemeData(
          canvasColor: Colors.transparent,
        ),
        child: RawChip(
          padding: EdgeInsets.all(16.h),
          showCheckmark: false,
          labelPadding: EdgeInsets.zero,
          label: Text(
            itemlocationItemModelObj.uSOnly!.value,
            style: TextStyle(
              color: (itemlocationItemModelObj.isSelected?.value ?? false)
                  ? theme.colorScheme.primary.withOpacity(1)
                  : appTheme.blueGray300,
              fontSize: 12.fSize,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
          selected: (itemlocationItemModelObj.isSelected?.value ?? false),
          backgroundColor: Colors.transparent,
          selectedColor: theme.colorScheme.primary.withOpacity(0.1),
          shape: (itemlocationItemModelObj.isSelected?.value ?? false)
              ? RoundedRectangleBorder(
                  side: BorderSide.none,
                  borderRadius: BorderRadius.circular(
                    5.h,
                  ),
                )
              : RoundedRectangleBorder(
                  side: BorderSide(
                    color: appTheme.blue50,
                    width: 1.h,
                  ),
                  borderRadius: BorderRadius.circular(
                    5.h,
                  ),
                ),
          onSelected: (value) {
            itemlocationItemModelObj.isSelected!.value = value;
          },
        ),
      ),
    );
  }
}
