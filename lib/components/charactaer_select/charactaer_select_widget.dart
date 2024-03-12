import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'charactaer_select_model.dart';
export 'charactaer_select_model.dart';

class CharactaerSelectWidget extends StatefulWidget {
  const CharactaerSelectWidget({super.key});

  @override
  State<CharactaerSelectWidget> createState() => _CharactaerSelectWidgetState();
}

class _CharactaerSelectWidgetState extends State<CharactaerSelectWidget> {
  late CharactaerSelectModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CharactaerSelectModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  setState(() {
                    _model.characterSelected = 'cat';
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: _model.characterSelected == 'cat'
                        ? FlutterFlowTheme.of(context).secondary
                        : const Color(0x00000000),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/images/kitty-hero.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  setState(() {
                    _model.characterSelected = 'bird';
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: _model.characterSelected == 'bird'
                        ? FlutterFlowTheme.of(context).secondary
                        : const Color(0x00000000),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/images/bird-hero.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  setState(() {
                    _model.characterSelected = 'tigger';
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: _model.characterSelected == 'tigger'
                        ? FlutterFlowTheme.of(context).secondary
                        : const Color(0x00000000),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/images/tigger-hero.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ].divide(const SizedBox(width: 5.0)),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
            child: FFButtonWidget(
              onPressed: () async {
                setState(() {
                  _model.characterSelected = 'none';
                });
              },
              text: 'Clean selection',
              icon: const Icon(
                Icons.cleaning_services_rounded,
                size: 15.0,
              ),
              options: FFButtonOptions(
                height: 40.0,
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).secondary,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Plus Jakarta Sans',
                      color: Colors.white,
                    ),
                elevation: 3.0,
                borderSide: const BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
