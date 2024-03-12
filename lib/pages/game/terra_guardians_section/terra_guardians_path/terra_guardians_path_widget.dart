import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/header_game/header_game_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'terra_guardians_path_model.dart';
export 'terra_guardians_path_model.dart';

class TerraGuardiansPathWidget extends StatefulWidget {
  const TerraGuardiansPathWidget({super.key});

  @override
  State<TerraGuardiansPathWidget> createState() =>
      _TerraGuardiansPathWidgetState();
}

class _TerraGuardiansPathWidgetState extends State<TerraGuardiansPathWidget>
    with TickerProviderStateMixin {
  late TerraGuardiansPathModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TerraGuardiansPathModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<UserPathRecord>>(
      stream: queryUserPathRecord(
        queryBuilder: (userPathRecord) => userPathRecord
            .where(
              'user',
              isEqualTo: currentUserReference,
            )
            .where(
              'path_name',
              isEqualTo: 'Soil Saviors',
            ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitRipple(
                  color: FlutterFlowTheme.of(context).secondary,
                  size: 50.0,
                ),
              ),
            ),
          );
        }
        List<UserPathRecord> terraGuardiansPathUserPathRecordList =
            snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          body: SafeArea(
            top: true,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/background-jungle-1.jpg',
                  ).image,
                ),
              ),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xBB1C1C1C),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    wrapWithModel(
                      model: _model.headerGameModel,
                      updateCallback: () => setState(() {}),
                      child: const HeaderGameWidget(),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 0.0, 0.0),
                      child: Text(
                        'Terra Guardians',
                        style:
                            FlutterFlowTheme.of(context).headlineLarge.override(
                                  fontFamily: 'Outfit',
                                  color: FlutterFlowTheme.of(context).info,
                                ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 0.0, 0.0),
                      child: Text(
                        'Explore, Protect, Play.',
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Outfit',
                                  color: FlutterFlowTheme.of(context).info,
                                ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          final userPath =
                              terraGuardiansPathUserPathRecordList.toList();
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: userPath.length,
                            itemBuilder: (context, userPathIndex) {
                              final userPathItem = userPath[userPathIndex];
                              return Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      'SoilSaviorsHistory',
                                      queryParameters: {
                                        'userPathReference': serializeParam(
                                          userPathItem.reference,
                                          ParamType.DocumentReference,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 12.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 16.0,
                                              height: 16.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                            Container(
                                              width: 2.0,
                                              height: 110.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 0.0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.85,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    userPathItem.pathName,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                        ),
                                                  ),
                                                  Icon(
                                                    Icons.arrow_forward_ios,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    size: 30.0,
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 4.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      userPathItem.completed
                                                          ? 'Complete!'
                                                          : 'In progress!',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                color: userPathItem.completed
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiary
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                                fontSize: 12.0,
                                                              ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              if (userPathItem.completed)
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 0.0),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      _model.userCardReference =
                                                          await queryUserCardsRecordOnce(
                                                        queryBuilder:
                                                            (userCardsRecord) =>
                                                                userCardsRecord
                                                                    .where(
                                                                      'user',
                                                                      isEqualTo:
                                                                          currentUserReference,
                                                                    )
                                                                    .where(
                                                                      'god_section',
                                                                      isEqualTo:
                                                                          'TerraGuardians',
                                                                    ),
                                                        singleRecord: true,
                                                      ).then((s) =>
                                                              s.firstOrNull);
                                                      if (_model
                                                              .userCardReference
                                                              ?.reference !=
                                                          null) {
                                                        context.pushNamed(
                                                          'QRKronosCard',
                                                          queryParameters: {
                                                            'kronosId':
                                                                serializeParam(
                                                              _model
                                                                  .userCardReference
                                                                  ?.reference,
                                                              ParamType
                                                                  .DocumentReference,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      } else {
                                                        var userCardsRecordReference =
                                                            UserCardsRecord
                                                                .collection
                                                                .doc();
                                                        await userCardsRecordReference
                                                            .set({
                                                          ...createUserCardsRecordData(
                                                            user:
                                                                currentUserReference,
                                                            godSection:
                                                                'TerraGuardians',
                                                            kronosName:
                                                                'Lord of the  Terra Guardians',
                                                            kronosDescription:
                                                                'The God of the Earth watches over the world\'s rich soils and vast meadows, fostering harmony between nature and civilizations. This defender of terrestrial life inspires mortals to embrace sustainability and recycling, fighting soil degradation and promoting a green future. Through his wisdom, we can learn to nourish and preserve the land that sustains us.',
                                                            kronosMission:
                                                                'Revitalize barren lands, advocate for recycling and reforestation practices, and protect the Earth\'s rich biodiversity.',
                                                            logo:
                                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/god-of-places-game-ddglln/assets/sghvrg1zomyd/terra-guardians-logo.png',
                                                            progress: 1,
                                                            complete: true,
                                                            colorCard:
                                                                '#A2224D6D',
                                                          ),
                                                          ...mapToFirestore(
                                                            {
                                                              'created_time':
                                                                  FieldValue
                                                                      .serverTimestamp(),
                                                            },
                                                          ),
                                                        });
                                                        _model.userCard =
                                                            UserCardsRecord
                                                                .getDocumentFromData({
                                                          ...createUserCardsRecordData(
                                                            user:
                                                                currentUserReference,
                                                            godSection:
                                                                'TerraGuardians',
                                                            kronosName:
                                                                'Lord of the  Terra Guardians',
                                                            kronosDescription:
                                                                'The God of the Earth watches over the world\'s rich soils and vast meadows, fostering harmony between nature and civilizations. This defender of terrestrial life inspires mortals to embrace sustainability and recycling, fighting soil degradation and promoting a green future. Through his wisdom, we can learn to nourish and preserve the land that sustains us.',
                                                            kronosMission:
                                                                'Revitalize barren lands, advocate for recycling and reforestation practices, and protect the Earth\'s rich biodiversity.',
                                                            logo:
                                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/god-of-places-game-ddglln/assets/sghvrg1zomyd/terra-guardians-logo.png',
                                                            progress: 1,
                                                            complete: true,
                                                            colorCard:
                                                                '#A2224D6D',
                                                          ),
                                                          ...mapToFirestore(
                                                            {
                                                              'created_time':
                                                                  DateTime
                                                                      .now(),
                                                            },
                                                          ),
                                                        }, userCardsRecordReference);

                                                        context.pushNamed(
                                                          'QRKronosCard',
                                                          queryParameters: {
                                                            'kronosId':
                                                                serializeParam(
                                                              _model.userCard
                                                                  ?.reference,
                                                              ParamType
                                                                  .DocumentReference,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      }

                                                      setState(() {});
                                                    },
                                                    text: 'Get Kronos!',
                                                    options: FFButtonOptions(
                                                      height: 40.0,
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  24.0,
                                                                  0.0,
                                                                  24.0,
                                                                  0.0),
                                                      iconPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                      elevation: 3.0,
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                        child: Container(
                          width: 300.0,
                          height: 200.0,
                          decoration: const BoxDecoration(),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/terra-guardians-logo.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
          ),
        );
      },
    );
  }
}
