import 'package:flutter/cupertino.dart';

class Scsz {
  final BuildContext ctx;
  Scsz(this.ctx);
  double get width => MediaQuery.of(ctx).size.width;
  double get height => MediaQuery.of(ctx).size.height;
}
