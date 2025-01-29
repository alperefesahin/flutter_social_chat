import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_social_chat/application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart';
import 'package:flutter_social_chat/application/auth/phone_number_sign_in/phone_number_sign_in_state.dart';
import 'package:flutter_social_chat/core/constants/colors.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneNumberInputField extends StatefulWidget {
  const PhoneNumberInputField({super.key, required this.state});

  final PhoneNumberSignInState state;

  @override
  State<PhoneNumberInputField> createState() => _PhoneNumberInputFieldState(state);
}

class _PhoneNumberInputFieldState extends State<PhoneNumberInputField> {
  final PhoneNumberSignInState state;
  final PhoneNumber initialPhone = PhoneNumber(isoCode: 'TR');

  @override
  void didChangeDependencies() {
    context.read<PhoneNumberSignInCubit>().phoneNumberChanged(phoneNumber: initialPhone.phoneNumber ?? '');
    super.didChangeDependencies();
  }

  _PhoneNumberInputFieldState(this.state);

  @override
  Widget build(BuildContext context) {
    final String hintText = AppLocalizations.of(context)?.phoneNumber ?? '';

    return BlocBuilder<PhoneNumberSignInCubit, PhoneNumberSignInState>(
      builder: (context, state) {
        return Container(
          width: double.infinity,
          height: 100,
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: InternationalPhoneNumberInput(
            onInputChanged: (PhoneNumber phoneNumber) {
              context.read<PhoneNumberSignInCubit>().phoneNumberChanged(phoneNumber: phoneNumber.phoneNumber!);
            },
            onInputValidated: (bool isPhoneNumberInputValidated) {
              context
                  .read<PhoneNumberSignInCubit>()
                  .updateNextButtonStatus(isPhoneNumberInputValidated: isPhoneNumberInputValidated);
            },
            inputDecoration: InputDecoration(
              hintText: hintText,
              focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: customIndigoColor)),
            ),
            selectorConfig:
                const SelectorConfig(selectorType: PhoneInputSelectorType.BOTTOM_SHEET, useBottomSheetSafeArea: true),
            autoValidateMode: AutovalidateMode.onUserInteraction,
            initialValue: initialPhone,
            formatInput: false,
            inputBorder: const OutlineInputBorder(),
            cursorColor: customIndigoColor,
          ),
        );
      },
    );
  }
}
