import 'package:flutter/material.dart';
import 'package:mjk_apps/core/app_constants/colors.dart';
import 'package:mjk_apps/core/utilities/text_styles.dart';
import 'package:mjk_apps/core/view_models/approval_order_jual/approval_order_penjualan_view_model.dart';
import 'package:mjk_apps/ui/shared/spacings.dart';

class OrderJualSelectedCard extends StatefulWidget {
  const OrderJualSelectedCard({
    required this.selectedOrderJuals,
    required this.setSelected,
    super.key,
  });

  final OrderJualSelected selectedOrderJuals;
  final void Function(OrderJualSelected, bool) setSelected;

  @override
  State<OrderJualSelectedCard> createState() => _OrderJualSelectedCardState();
}

class _OrderJualSelectedCardState extends State<OrderJualSelectedCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.setSelected(
          widget.selectedOrderJuals,
          !widget.selectedOrderJuals.isSelected,
        );
        setState(() {});
      },
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(
              16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  widget.selectedOrderJuals.orderJual.barang,
                  style: buildTextStyle(
                    fontSize: 16,
                    fontHeight: 20,
                    color: Colors.red,
                  ),
                ),
                Spacings.verSpace(2),
                Row(
                  children: <Widget>[
                    Text(
                      'Customer: ',
                      style: buildTextStyle(
                        fontSize: 12,
                        fontHeight: 20,
                        color: MjkColor.black001,
                      ),
                    ),
                    Text(
                      widget.selectedOrderJuals.orderJual.customer,
                      style: buildTextStyle(
                        fontSize: 12,
                        fontHeight: 20,
                        color: MjkColor.black001,
                      ),
                    ),
                  ],
                ),
                Spacings.verSpace(2),
                Row(
                  children: <Widget>[
                    Text(
                      'Sales: ',
                      style: buildTextStyle(
                        fontSize: 12,
                        fontHeight: 20,
                        color: MjkColor.black001,
                      ),
                    ),
                    Text(
                      widget.selectedOrderJuals.orderJual.sales,
                      style: buildTextStyle(
                        fontSize: 12,
                        fontHeight: 20,
                        color: MjkColor.black001,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Nota: 300.000',
                      style: buildTextStyle(
                        fontSize: 12,
                        fontHeight: 20,
                        color: MjkColor.black001,
                      ),
                    ),
                    Image.asset(
                      widget.selectedOrderJuals.isSelected
                          ? 'assets/icons/selected-checkbox-icon.png'
                          : 'assets/icons/unselected-checkbox-icon.png',
                      width: 20,
                      height: 20,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
