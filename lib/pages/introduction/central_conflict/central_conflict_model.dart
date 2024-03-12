import '/components/header_introduction/header_introduction_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'central_conflict_widget.dart' show CentralConflictWidget;
import 'package:flutter/material.dart';

class CentralConflictModel extends FlutterFlowModel<CentralConflictWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for headerIntroduction component.
  late HeaderIntroductionModel headerIntroductionModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    headerIntroductionModel =
        createModel(context, () => HeaderIntroductionModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    headerIntroductionModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
