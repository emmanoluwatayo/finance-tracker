import 'package:flutter/material.dart';
import 'package:personal_finance_tracker/core/constants/app_colors.dart';
import 'package:personal_finance_tracker/core/theme/styles_manager.dart';

class DeleteTransactionModal extends StatelessWidget {
  const DeleteTransactionModal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 440,
      height: 200,
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Delete Transactions",
            style: getRegularStyle(
              color: AppColors.paymentTitleRowTextColor,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            "Confirm Delete",
            textAlign: TextAlign.center,
            style: getRegularStyle(
              color: AppColors.viewDetailsPaymentTextColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 44,
                    width: 139,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        width: 1,
                        color: AppColors.vistaYellow,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Back",
                        style: getRegularStyle(
                          color: AppColors.vistaYellow,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 52,
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const DeletedSuccessModal(),
                        );
                      },
                    );
                  },
                  child: Container(
                    height: 44,
                    width: 139,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: AppColors.vistaYellow,
                    ),
                    child: Center(
                      child: Text(
                        "Delete Item",
                        style: getRegularStyle(
                          color: AppColors.vistaWhite,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DeletedSuccessModal extends StatelessWidget {
  const DeletedSuccessModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 440,
      height: 200,
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Transactions Deleted",
            style: getRegularStyle(
              color: AppColors.paymentTitleRowTextColor,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            "The selected item has been successfully deleted and the relevant records have been updated.",
            textAlign: TextAlign.center,
            style: getRegularStyle(
              color: AppColors.viewDetailsPaymentTextColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                height: 52,
                width: 142,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: AppColors.vistaYellow,
                ),
                child: Center(
                  child: Text(
                    "Done",
                    style: getRegularStyle(
                      color: AppColors.vistaWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
