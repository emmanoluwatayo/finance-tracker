import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_finance_tracker/application/bloc/authentication/auth_bloc.dart';
import 'package:personal_finance_tracker/application/bloc/complete_registration/complete_reg_bloc.dart';
import 'package:personal_finance_tracker/application/bloc/finance_tracker/finance_tracker_bloc.dart';
import 'package:personal_finance_tracker/application/bloc/forgot_password/forgot_password_bloc.dart';
import 'package:personal_finance_tracker/application/bloc/profile/profile_bloc.dart';
import 'package:personal_finance_tracker/application/bloc/sign_in/sign_in_bloc.dart';
import 'package:personal_finance_tracker/application/bloc/sign_up/sign_up_bloc.dart';
import 'package:personal_finance_tracker/core/dependency_injectables/injection.dart';

class AppBlocProviders {
  static get allBlocProviders => [
        BlocProvider(create: (_) => getIt<AuthenticationBloc>()),
        BlocProvider(create: (_) => getIt<SignInBloc>()),
        BlocProvider(create: (_) => getIt<SignUpBloc>()),
        BlocProvider(create: (_) => getIt<ForgotPasswordBloc>()),
        BlocProvider(create: (_) => getIt<CompleteRegBloc>()),
        BlocProvider(create: (_) => getIt<ProfileBloc>()),
        BlocProvider(create: (_) => getIt<FinanceTrackerBloc>()),
        // BlocProvider(create: (_) => getIt<InventoryBloc>()),
        // BlocProvider(create: (_) => getIt<PatientBloc>()),
        // BlocProvider(create: (_) => getIt<PricingPlansBloc>()),
        // BlocProvider(create: (_) => getIt<PricingSetupBloc>()),
      ];
}
