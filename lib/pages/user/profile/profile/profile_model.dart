import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Query cache managers for this widget.

  final _userScoreManager = StreamRequestManager<List<UserScoreRecord>>();
  Stream<List<UserScoreRecord>> userScore({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<UserScoreRecord>> Function() requestFn,
  }) =>
      _userScoreManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUserScoreCache() => _userScoreManager.clear();
  void clearUserScoreCacheKey(String? uniqueKey) =>
      _userScoreManager.clearRequest(uniqueKey);

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();

    /// Dispose query cache managers for this widget.

    clearUserScoreCache();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
