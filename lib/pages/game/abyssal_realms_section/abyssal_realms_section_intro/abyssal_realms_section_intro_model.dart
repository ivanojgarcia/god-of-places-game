import '/backend/backend.dart';
import '/components/header_game/header_game_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'abyssal_realms_section_intro_widget.dart'
    show AbyssalRealmsSectionIntroWidget;
import 'package:flutter/material.dart';

class AbyssalRealmsSectionIntroModel
    extends FlutterFlowModel<AbyssalRealmsSectionIntroWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for headerGame component.
  late HeaderGameModel headerGameModel;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UserPathRecord? userPathRecord;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    headerGameModel = createModel(context, () => HeaderGameModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    headerGameModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
