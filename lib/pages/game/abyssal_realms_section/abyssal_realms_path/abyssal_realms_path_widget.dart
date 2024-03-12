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
import 'abyssal_realms_path_model.dart';
export 'abyssal_realms_path_model.dart';

class AbyssalRealmsPathWidget extends StatefulWidget {
  const AbyssalRealmsPathWidget({super.key});

  @override
  State<AbyssalRealmsPathWidget> createState() =>
      _AbyssalRealmsPathWidgetState();
}

class _AbyssalRealmsPathWidgetState extends State<AbyssalRealmsPathWidget>
    with TickerProviderStateMixin {
  late AbyssalRealmsPathModel _model;

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
    _model = createModel(context, () => AbyssalRealmsPathModel());
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
              isEqualTo: 'Coral Kindoms',
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
        List<UserPathRecord> abyssalRealmsPathUserPathRecordList =
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
                    'assets/images/backgroun-beach.jpg',
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
                        'Abyssal Realms',
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
                              abyssalRealmsPathUserPathRecordList.toList();
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
                                      'CoralKindomsHistory',
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
                                                              .primary,
                                                        ),
                                                  ),
                                                  Icon(
                                                    Icons.arrow_forward_ios,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
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
                                                                        .secondary
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
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
                                                                          'AbyssalRealms',
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
                                                                'AbyssalRealms',
                                                            kronosName:
                                                                'Lord of the Abyssal Realms',
                                                            kronosDescription:
                                                                'The God of the Seas reigns over the vast and mysterious oceans of the world, from the abysmal depths to the teeming shores. This guardian of water beckons mortals to respect and protect our planet\'s blue heart, teaching the importance of marine conservation and the dangers of pollution.   By invoking his power, protectors can restore the oceans\' purity and ensure harmony for all its inhabitants.',
                                                            kronosMission:
                                                                'Cleanse polluted waters, save endangered marine life, and restore the beauty and biodiversity of our oceans.',
                                                            logo:
                                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/god-of-places-game-ddglln/assets/e4wavzn18pdu/abissal-realms-logo.png',
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
                                                        _model.userCardCreated =
                                                            UserCardsRecord
                                                                .getDocumentFromData({
                                                          ...createUserCardsRecordData(
                                                            user:
                                                                currentUserReference,
                                                            godSection:
                                                                'AbyssalRealms',
                                                            kronosName:
                                                                'Lord of the Abyssal Realms',
                                                            kronosDescription:
                                                                'The God of the Seas reigns over the vast and mysterious oceans of the world, from the abysmal depths to the teeming shores. This guardian of water beckons mortals to respect and protect our planet\'s blue heart, teaching the importance of marine conservation and the dangers of pollution.   By invoking his power, protectors can restore the oceans\' purity and ensure harmony for all its inhabitants.',
                                                            kronosMission:
                                                                'Cleanse polluted waters, save endangered marine life, and restore the beauty and biodiversity of our oceans.',
                                                            logo:
                                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/god-of-places-game-ddglln/assets/e4wavzn18pdu/abissal-realms-logo.png',
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
                                                              _model
                                                                  .userCardCreated
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
                                                              .primary,
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
                          width: 200.0,
                          height: 200.0,
                          decoration: const BoxDecoration(),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/abissal-realms-logo.png',
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
