import '/components/header_introduction/header_introduction_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'start_history_widget.dart' show StartHistoryWidget;
import 'package:flutter/material.dart';

class StartHistoryModel extends FlutterFlowModel<StartHistoryWidget> {
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
