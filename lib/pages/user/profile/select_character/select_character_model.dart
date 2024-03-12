import '/components/charactaer_select/charactaer_select_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'select_character_widget.dart' show SelectCharacterWidget;
import 'package:flutter/material.dart';

class SelectCharacterModel extends FlutterFlowModel<SelectCharacterWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for charactaerSelect component.
  late CharactaerSelectModel charactaerSelectModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    charactaerSelectModel = createModel(context, () => CharactaerSelectModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    charactaerSelectModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
