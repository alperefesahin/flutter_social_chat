// ignore_for_file: no_logic_in_create_state
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_social_chat/application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart';
import 'package:flutter_social_chat/presentation/common_widgets/colors.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneNumberSignInSection extends StatefulWidget {
  const PhoneNumberSignInSection({super.key, required this.state});

  final PhoneNumberSignInState state;
  @override
  State<PhoneNumberSignInSection> createState() => _PhoneNumberSignInSectionState(state);
}

class _PhoneNumberSignInSectionState extends State<PhoneNumberSignInSection> {
  final PhoneNumberSignInState state;
  final PhoneNumber initialPhone = PhoneNumber(isoCode: "TR");

  @override
  void didChangeDependencies() {
    context
        .read<PhoneNumberSignInCubit>()
        .phoneNumberChanged(phoneNumber: initialPhone.phoneNumber ?? "");
    super.didChangeDependencies();
  }

  _PhoneNumberSignInSectionState(this.state);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhoneNumberSignInCubit, PhoneNumberSignInState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
            top: 20,
          ),
          child: InternationalPhoneNumberInput(
            onInputChanged: (PhoneNumber phoneNumber) {
              context.read<PhoneNumberSignInCubit>().phoneNumberChanged(
                    phoneNumber: phoneNumber.phoneNumber!,
                  );
            },
            onInputValidated: (bool isPhoneNumberInputValidated) {
              context.read<PhoneNumberSignInCubit>().updateNextButtonStatus(
                    isPhoneNumberInputValidated: isPhoneNumberInputValidated,
                  );
            },
            inputDecoration: InputDecoration(
              hintText: AppLocalizations.of(context).phoneNumber,
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: customIndigoColor,
                ),
              ),
            ),
            selectorConfig: const SelectorConfig(
              selectorType: PhoneInputSelectorType.DIALOG,
            ),
            autoValidateMode: AutovalidateMode.onUserInteraction,
            initialValue: initialPhone,
            formatInput: false,
            inputBorder: const OutlineInputBorder(),
          ),
        );
      },
    );
  }
}
