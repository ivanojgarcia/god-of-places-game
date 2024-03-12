import '/components/header_introduction/header_introduction_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'invitation_to_play_widget.dart' show InvitationToPlayWidget;
import 'package:flutter/material.dart';

class InvitationToPlayModel extends FlutterFlowModel<InvitationToPlayWidget> {
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
