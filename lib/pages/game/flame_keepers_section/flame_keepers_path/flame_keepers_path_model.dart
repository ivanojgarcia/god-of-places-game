import '/backend/backend.dart';
import '/components/header_game/header_game_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'flame_keepers_path_widget.dart' show FlameKeepersPathWidget;
import 'package:flutter/material.dart';

class FlameKeepersPathModel extends FlutterFlowModel<FlameKeepersPathWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for headerGame component.
  late HeaderGameModel headerGameModel;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UserCardsRecord? userCardReference;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  UserCardsRecord? userCard;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    headerGameModel = createModel(context, () => HeaderGameModel());
  }

  @override
  void dispose() {
    headerGameModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
