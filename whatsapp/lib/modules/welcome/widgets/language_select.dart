import 'package:flutter/material.dart';
import 'package:whatsapp/common/extension/custom_theme_extension.dart';
import 'package:whatsapp/common/utils/colors_common.dart';
import 'package:whatsapp/common/widgets/custom_icon_button.dart';

class LanguageSelect extends StatelessWidget {
  const LanguageSelect({
    super.key,
  });

  showButtonSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (sheetContext) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 4,
                width: 30,
                decoration: BoxDecoration(
                  color: sheetContext.theme.greyColor,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(width: 20),
                  CustomIconButton(
                    onTap: () => Navigator.of(context).pop(),
                    icon: Icons.close_outlined,
                    iconColor: ColorsCommon.greyDark,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'App Language',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Divider(
                color: context.theme.greyColor!.withOpacity(0.3),
                thickness: .5,
              ),
              RadioListTile(
                value: true,
                groupValue: true,
                onChanged: (value) {},
                activeColor: ColorsCommon.greenDark,
                title: const Text('English'),
                subtitle: Text(
                  "(phone's language)",
                  style: TextStyle(
                    color: context.theme.greyColor,
                  ),
                ),
              ),
              RadioListTile(
                value: true,
                groupValue: false,
                onChanged: (value) {},
                activeColor: ColorsCommon.greenDark,
                title: const Text('中文'),
                subtitle: Text(
                  "chinese",
                  style: TextStyle(
                    color: context.theme.greyColor,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.theme.langBtnBgColor,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () => showButtonSheet(context),
        borderRadius: BorderRadius.circular(20),
        splashFactory: NoSplash.splashFactory,
        highlightColor: context.theme.langBtnHighLightColor,
        child: const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.language,
                color: ColorsCommon.greenDark,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'English',
                style: TextStyle(color: ColorsCommon.greenDark),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: ColorsCommon.greenDark,
              )
            ],
          ),
        ),
      ),
    );
  }
}
