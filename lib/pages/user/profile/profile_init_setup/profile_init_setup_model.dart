import '/flutter_flow/flutter_flow_util.dart';
import 'profile_init_setup_widget.dart' show ProfileInitSetupWidget;
import 'package:flutter/material.dart';

class ProfileInitSetupModel extends FlutterFlowModel<ProfileInitSetupWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for heroName widget.
  FocusNode? heroNameFocusNode;
  TextEditingController? heroNameController;
  String? Function(BuildContext, String?)? heroNameControllerValidator;
  String? _heroNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    heroNameControllerValidator = _heroNameControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    heroNameFocusNode?.dispose();
    heroNameController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
