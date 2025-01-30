import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_appChapterData') != null) {
        try {
          final serializedData =
              await secureStorage.getString('ff_appChapterData') ?? '{}';
          _appChapterData = AIChapterDataStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      _toggle1stAutobiographyCreated =
          await secureStorage.getBool('ff_toggle1stAutobiographyCreated') ??
              _toggle1stAutobiographyCreated;
    });
    await _safeInitAsync(() async {
      _toggleSideBar =
          await secureStorage.getBool('ff_toggleSideBar') ?? _toggleSideBar;
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_appFrontCovers') != null) {
        try {
          final serializedData =
              await secureStorage.getString('ff_appFrontCovers') ?? '{}';
          _appFrontCovers =
              AutobiographyFrontCoverDataStruct.fromSerializableMap(
                  jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      _createAutobiographyTitle =
          await secureStorage.getString('ff_createAutobiographyTitle') ??
              _createAutobiographyTitle;
    });
    await _safeInitAsync(() async {
      _createAuthorName =
          await secureStorage.getString('ff_createAuthorName') ??
              _createAuthorName;
    });
    await _safeInitAsync(() async {
      _createAuthorBackground =
          await secureStorage.getString('ff_createAuthorBackground') ??
              _createAuthorBackground;
    });
    await _safeInitAsync(() async {
      _createAuthorDOB =
          await secureStorage.read(key: 'ff_createAuthorDOB') != null
              ? DateTime.fromMillisecondsSinceEpoch(
                  (await secureStorage.getInt('ff_createAuthorDOB'))!)
              : _createAuthorDOB;
    });
    await _safeInitAsync(() async {
      _createChapter1 =
          await secureStorage.getString('ff_createChapter1') ?? _createChapter1;
    });
    await _safeInitAsync(() async {
      _createAutobiographyCoverColour =
          await secureStorage.getString('ff_createAutobiographyCoverColour') ??
              _createAutobiographyCoverColour;
    });
    await _safeInitAsync(() async {
      _createAutobiographyCoverImage =
          await secureStorage.getString('ff_createAutobiographyCoverImage') ??
              _createAutobiographyCoverImage;
    });
    await _safeInitAsync(() async {
      _createAudioConversationSet =
          await secureStorage.getBool('ff_createAudioConversationSet') ??
              _createAudioConversationSet;
    });
    await _safeInitAsync(() async {
      _createAccompanimentName =
          await secureStorage.getString('ff_createAccompanimentName') ??
              _createAccompanimentName;
    });
    await _safeInitAsync(() async {
      _createOpenAIUserAPISet =
          await secureStorage.getBool('ff_createOpenAIUserAPISet') ??
              _createOpenAIUserAPISet;
    });
    await _safeInitAsync(() async {
      _createUserOpenAIAPIKey =
          await secureStorage.getString('ff_createUserOpenAIAPIKey') ??
              _createUserOpenAIAPIKey;
    });
    await _safeInitAsync(() async {
      _createAIModel =
          await secureStorage.getString('ff_createAIModel') ?? _createAIModel;
    });
    await _safeInitAsync(() async {
      _createAIAssistantType =
          await secureStorage.getString('ff_createAIAssistantType') ??
              _createAIAssistantType;
    });
    await _safeInitAsync(() async {
      _createAutobiographyButtonHomePage =
          await secureStorage.getBool('ff_createAutobiographyButtonHomePage') ??
              _createAutobiographyButtonHomePage;
    });
    await _safeInitAsync(() async {
      _sortAutobiographySelectPage =
          await secureStorage.getString('ff_sortAutobiographySelectPage') ??
              _sortAutobiographySelectPage;
    });
    await _safeInitAsync(() async {
      _sortAutobiographyChapterSelectPage = await secureStorage
              .getString('ff_sortAutobiographyChapterSelectPage') ??
          _sortAutobiographyChapterSelectPage;
    });
    await _safeInitAsync(() async {
      _createAutobiographyButtonAutobiographySelectPage = await secureStorage
              .getBool('ff_createAutobiographyButtonAutobiographySelectPage') ??
          _createAutobiographyButtonAutobiographySelectPage;
    });
    await _safeInitAsync(() async {
      _toggleAIChapterSelectPage =
          await secureStorage.getBool('ff_toggleAIChapterSelectPage') ??
              _toggleAIChapterSelectPage;
    });
    await _safeInitAsync(() async {
      _toggleAutobiographyCreatingProcessBegun = await secureStorage
              .getBool('ff_toggleAutobiographyCreatingProcessBegun') ??
          _toggleAutobiographyCreatingProcessBegun;
    });
    await _safeInitAsync(() async {
      _editAutobiographyProcess =
          await secureStorage.getBool('ff_editAutobiographyProcess') ??
              _editAutobiographyProcess;
    });
    await _safeInitAsync(() async {
      _editAutobiographyTitle =
          await secureStorage.getBool('ff_editAutobiographyTitle') ??
              _editAutobiographyTitle;
    });
    await _safeInitAsync(() async {
      _editAutobiographyAuthor =
          await secureStorage.getBool('ff_editAutobiographyAuthor') ??
              _editAutobiographyAuthor;
    });
    await _safeInitAsync(() async {
      _editAutobiographyAudioConversation = await secureStorage
              .getBool('ff_editAutobiographyAudioConversation') ??
          _editAutobiographyAudioConversation;
    });
    await _safeInitAsync(() async {
      _editAutobiographyAccompany =
          await secureStorage.getBool('ff_editAutobiographyAccompany') ??
              _editAutobiographyAccompany;
    });
    await _safeInitAsync(() async {
      _editAutobiographyOpenAIKey =
          await secureStorage.getBool('ff_editAutobiographyOpenAIKey') ??
              _editAutobiographyOpenAIKey;
    });
    await _safeInitAsync(() async {
      _editAutobiographyOpenAIKeyText =
          await secureStorage.getBool('ff_editAutobiographyOpenAIKeyText') ??
              _editAutobiographyOpenAIKeyText;
    });
    await _safeInitAsync(() async {
      _editAutobiographyModel =
          await secureStorage.getBool('ff_editAutobiographyModel') ??
              _editAutobiographyModel;
    });
    await _safeInitAsync(() async {
      _editAutobiographyType =
          await secureStorage.getBool('ff_editAutobiographyType') ??
              _editAutobiographyType;
    });
    await _safeInitAsync(() async {
      _editAutobiographyCoverColour =
          await secureStorage.getBool('ff_editAutobiographyCoverColour') ??
              _editAutobiographyCoverColour;
    });
    await _safeInitAsync(() async {
      _toggleSelectAutobiographyHideCoverImage = await secureStorage
              .getBool('ff_toggleSelectAutobiographyHideCoverImage') ??
          _toggleSelectAutobiographyHideCoverImage;
    });
    await _safeInitAsync(() async {
      _appCurrentChapter =
          (await secureStorage.getString('ff_appCurrentChapter'))?.ref ??
              _appCurrentChapter;
    });
    await _safeInitAsync(() async {
      _appChapterNumberSequence =
          await secureStorage.getInt('ff_appChapterNumberSequence') ??
              _appChapterNumberSequence;
    });
    await _safeInitAsync(() async {
      _oldIndex = await secureStorage.getInt('ff_oldIndex') ?? _oldIndex;
    });
    await _safeInitAsync(() async {
      _newIndex = await secureStorage.getInt('ff_newIndex') ?? _newIndex;
    });
    await _safeInitAsync(() async {
      _toggleCannotReorderChapterContent =
          await secureStorage.getBool('ff_toggleCannotReorderChapterContent') ??
              _toggleCannotReorderChapterContent;
    });
    await _safeInitAsync(() async {
      _toggleAddAIResponseToChapter =
          await secureStorage.getBool('ff_toggleAddAIResponseToChapter') ??
              _toggleAddAIResponseToChapter;
    });
    await _safeInitAsync(() async {
      _toggleReorderChapterSelect =
          await secureStorage.getBool('ff_toggleReorderChapterSelect') ??
              _toggleReorderChapterSelect;
    });
    await _safeInitAsync(() async {
      _appAudioFileNumber =
          await secureStorage.getInt('ff_appAudioFileNumber') ??
              _appAudioFileNumber;
    });
    await _safeInitAsync(() async {
      _toggleAudioExists =
          await secureStorage.getBool('ff_toggleAudioExists') ??
              _toggleAudioExists;
    });
    await _safeInitAsync(() async {
      _selectUserAudioFile =
          (await secureStorage.getString('ff_selectUserAudioFile'))?.ref ??
              _selectUserAudioFile;
    });
    await _safeInitAsync(() async {
      _selectedAudioPath =
          await secureStorage.getString('ff_selectedAudioPath') ??
              _selectedAudioPath;
    });
    await _safeInitAsync(() async {
      _selectedSpeechToText =
          await secureStorage.getString('ff_selectedSpeechToText') ??
              _selectedSpeechToText;
    });
    await _safeInitAsync(() async {
      _selectedAudioTitle =
          await secureStorage.getString('ff_selectedAudioTitle') ??
              _selectedAudioTitle;
    });
    await _safeInitAsync(() async {
      _toggleAudioEntry = await secureStorage.getBool('ff_toggleAudioEntry') ??
          _toggleAudioEntry;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  AIChapterDataStruct _appChapterData = AIChapterDataStruct();
  AIChapterDataStruct get appChapterData => _appChapterData;
  set appChapterData(AIChapterDataStruct value) {
    _appChapterData = value;
    secureStorage.setString('ff_appChapterData', value.serialize());
  }

  void deleteAppChapterData() {
    secureStorage.delete(key: 'ff_appChapterData');
  }

  void updateAppChapterDataStruct(Function(AIChapterDataStruct) updateFn) {
    updateFn(_appChapterData);
    secureStorage.setString('ff_appChapterData', _appChapterData.serialize());
  }

  bool _toggle1stAutobiographyCreated = false;
  bool get toggle1stAutobiographyCreated => _toggle1stAutobiographyCreated;
  set toggle1stAutobiographyCreated(bool value) {
    _toggle1stAutobiographyCreated = value;
    secureStorage.setBool('ff_toggle1stAutobiographyCreated', value);
  }

  void deleteToggle1stAutobiographyCreated() {
    secureStorage.delete(key: 'ff_toggle1stAutobiographyCreated');
  }

  bool _toggleSideBar = false;
  bool get toggleSideBar => _toggleSideBar;
  set toggleSideBar(bool value) {
    _toggleSideBar = value;
    secureStorage.setBool('ff_toggleSideBar', value);
  }

  void deleteToggleSideBar() {
    secureStorage.delete(key: 'ff_toggleSideBar');
  }

  AutobiographyFrontCoverDataStruct _appFrontCovers =
      AutobiographyFrontCoverDataStruct();
  AutobiographyFrontCoverDataStruct get appFrontCovers => _appFrontCovers;
  set appFrontCovers(AutobiographyFrontCoverDataStruct value) {
    _appFrontCovers = value;
    secureStorage.setString('ff_appFrontCovers', value.serialize());
  }

  void deleteAppFrontCovers() {
    secureStorage.delete(key: 'ff_appFrontCovers');
  }

  void updateAppFrontCoversStruct(
      Function(AutobiographyFrontCoverDataStruct) updateFn) {
    updateFn(_appFrontCovers);
    secureStorage.setString('ff_appFrontCovers', _appFrontCovers.serialize());
  }

  String _createAutobiographyTitle = '';
  String get createAutobiographyTitle => _createAutobiographyTitle;
  set createAutobiographyTitle(String value) {
    _createAutobiographyTitle = value;
    secureStorage.setString('ff_createAutobiographyTitle', value);
  }

  void deleteCreateAutobiographyTitle() {
    secureStorage.delete(key: 'ff_createAutobiographyTitle');
  }

  String _createAuthorName = '';
  String get createAuthorName => _createAuthorName;
  set createAuthorName(String value) {
    _createAuthorName = value;
    secureStorage.setString('ff_createAuthorName', value);
  }

  void deleteCreateAuthorName() {
    secureStorage.delete(key: 'ff_createAuthorName');
  }

  String _createAuthorBackground = '';
  String get createAuthorBackground => _createAuthorBackground;
  set createAuthorBackground(String value) {
    _createAuthorBackground = value;
    secureStorage.setString('ff_createAuthorBackground', value);
  }

  void deleteCreateAuthorBackground() {
    secureStorage.delete(key: 'ff_createAuthorBackground');
  }

  DateTime? _createAuthorDOB;
  DateTime? get createAuthorDOB => _createAuthorDOB;
  set createAuthorDOB(DateTime? value) {
    _createAuthorDOB = value;
    value != null
        ? secureStorage.setInt(
            'ff_createAuthorDOB', value.millisecondsSinceEpoch)
        : secureStorage.remove('ff_createAuthorDOB');
  }

  void deleteCreateAuthorDOB() {
    secureStorage.delete(key: 'ff_createAuthorDOB');
  }

  String _createChapter1 = '';
  String get createChapter1 => _createChapter1;
  set createChapter1(String value) {
    _createChapter1 = value;
    secureStorage.setString('ff_createChapter1', value);
  }

  void deleteCreateChapter1() {
    secureStorage.delete(key: 'ff_createChapter1');
  }

  String _createAutobiographyCoverColour = '';
  String get createAutobiographyCoverColour => _createAutobiographyCoverColour;
  set createAutobiographyCoverColour(String value) {
    _createAutobiographyCoverColour = value;
    secureStorage.setString('ff_createAutobiographyCoverColour', value);
  }

  void deleteCreateAutobiographyCoverColour() {
    secureStorage.delete(key: 'ff_createAutobiographyCoverColour');
  }

  String _createAutobiographyCoverImage = '';
  String get createAutobiographyCoverImage => _createAutobiographyCoverImage;
  set createAutobiographyCoverImage(String value) {
    _createAutobiographyCoverImage = value;
    secureStorage.setString('ff_createAutobiographyCoverImage', value);
  }

  void deleteCreateAutobiographyCoverImage() {
    secureStorage.delete(key: 'ff_createAutobiographyCoverImage');
  }

  bool _createAudioConversationSet = false;
  bool get createAudioConversationSet => _createAudioConversationSet;
  set createAudioConversationSet(bool value) {
    _createAudioConversationSet = value;
    secureStorage.setBool('ff_createAudioConversationSet', value);
  }

  void deleteCreateAudioConversationSet() {
    secureStorage.delete(key: 'ff_createAudioConversationSet');
  }

  String _createAccompanimentName = '';
  String get createAccompanimentName => _createAccompanimentName;
  set createAccompanimentName(String value) {
    _createAccompanimentName = value;
    secureStorage.setString('ff_createAccompanimentName', value);
  }

  void deleteCreateAccompanimentName() {
    secureStorage.delete(key: 'ff_createAccompanimentName');
  }

  bool _createOpenAIUserAPISet = false;
  bool get createOpenAIUserAPISet => _createOpenAIUserAPISet;
  set createOpenAIUserAPISet(bool value) {
    _createOpenAIUserAPISet = value;
    secureStorage.setBool('ff_createOpenAIUserAPISet', value);
  }

  void deleteCreateOpenAIUserAPISet() {
    secureStorage.delete(key: 'ff_createOpenAIUserAPISet');
  }

  String _createUserOpenAIAPIKey = '';
  String get createUserOpenAIAPIKey => _createUserOpenAIAPIKey;
  set createUserOpenAIAPIKey(String value) {
    _createUserOpenAIAPIKey = value;
    secureStorage.setString('ff_createUserOpenAIAPIKey', value);
  }

  void deleteCreateUserOpenAIAPIKey() {
    secureStorage.delete(key: 'ff_createUserOpenAIAPIKey');
  }

  String _createAIModel = '';
  String get createAIModel => _createAIModel;
  set createAIModel(String value) {
    _createAIModel = value;
    secureStorage.setString('ff_createAIModel', value);
  }

  void deleteCreateAIModel() {
    secureStorage.delete(key: 'ff_createAIModel');
  }

  String _createAIAssistantType = '';
  String get createAIAssistantType => _createAIAssistantType;
  set createAIAssistantType(String value) {
    _createAIAssistantType = value;
    secureStorage.setString('ff_createAIAssistantType', value);
  }

  void deleteCreateAIAssistantType() {
    secureStorage.delete(key: 'ff_createAIAssistantType');
  }

  bool _createAutobiographyButtonHomePage = false;
  bool get createAutobiographyButtonHomePage =>
      _createAutobiographyButtonHomePage;
  set createAutobiographyButtonHomePage(bool value) {
    _createAutobiographyButtonHomePage = value;
    secureStorage.setBool('ff_createAutobiographyButtonHomePage', value);
  }

  void deleteCreateAutobiographyButtonHomePage() {
    secureStorage.delete(key: 'ff_createAutobiographyButtonHomePage');
  }

  String _sortAutobiographySelectPage = '';
  String get sortAutobiographySelectPage => _sortAutobiographySelectPage;
  set sortAutobiographySelectPage(String value) {
    _sortAutobiographySelectPage = value;
    secureStorage.setString('ff_sortAutobiographySelectPage', value);
  }

  void deleteSortAutobiographySelectPage() {
    secureStorage.delete(key: 'ff_sortAutobiographySelectPage');
  }

  String _sortAutobiographyChapterSelectPage = '';
  String get sortAutobiographyChapterSelectPage =>
      _sortAutobiographyChapterSelectPage;
  set sortAutobiographyChapterSelectPage(String value) {
    _sortAutobiographyChapterSelectPage = value;
    secureStorage.setString('ff_sortAutobiographyChapterSelectPage', value);
  }

  void deleteSortAutobiographyChapterSelectPage() {
    secureStorage.delete(key: 'ff_sortAutobiographyChapterSelectPage');
  }

  bool _createAutobiographyButtonAutobiographySelectPage = false;
  bool get createAutobiographyButtonAutobiographySelectPage =>
      _createAutobiographyButtonAutobiographySelectPage;
  set createAutobiographyButtonAutobiographySelectPage(bool value) {
    _createAutobiographyButtonAutobiographySelectPage = value;
    secureStorage.setBool(
        'ff_createAutobiographyButtonAutobiographySelectPage', value);
  }

  void deleteCreateAutobiographyButtonAutobiographySelectPage() {
    secureStorage.delete(
        key: 'ff_createAutobiographyButtonAutobiographySelectPage');
  }

  bool _toggleAIChapterSelectPage = false;
  bool get toggleAIChapterSelectPage => _toggleAIChapterSelectPage;
  set toggleAIChapterSelectPage(bool value) {
    _toggleAIChapterSelectPage = value;
    secureStorage.setBool('ff_toggleAIChapterSelectPage', value);
  }

  void deleteToggleAIChapterSelectPage() {
    secureStorage.delete(key: 'ff_toggleAIChapterSelectPage');
  }

  bool _toggleAutobiographyCreatingProcessBegun = false;
  bool get toggleAutobiographyCreatingProcessBegun =>
      _toggleAutobiographyCreatingProcessBegun;
  set toggleAutobiographyCreatingProcessBegun(bool value) {
    _toggleAutobiographyCreatingProcessBegun = value;
    secureStorage.setBool('ff_toggleAutobiographyCreatingProcessBegun', value);
  }

  void deleteToggleAutobiographyCreatingProcessBegun() {
    secureStorage.delete(key: 'ff_toggleAutobiographyCreatingProcessBegun');
  }

  bool _editAutobiographyProcess = false;
  bool get editAutobiographyProcess => _editAutobiographyProcess;
  set editAutobiographyProcess(bool value) {
    _editAutobiographyProcess = value;
    secureStorage.setBool('ff_editAutobiographyProcess', value);
  }

  void deleteEditAutobiographyProcess() {
    secureStorage.delete(key: 'ff_editAutobiographyProcess');
  }

  bool _editAutobiographyTitle = false;
  bool get editAutobiographyTitle => _editAutobiographyTitle;
  set editAutobiographyTitle(bool value) {
    _editAutobiographyTitle = value;
    secureStorage.setBool('ff_editAutobiographyTitle', value);
  }

  void deleteEditAutobiographyTitle() {
    secureStorage.delete(key: 'ff_editAutobiographyTitle');
  }

  bool _editAutobiographyAuthor = false;
  bool get editAutobiographyAuthor => _editAutobiographyAuthor;
  set editAutobiographyAuthor(bool value) {
    _editAutobiographyAuthor = value;
    secureStorage.setBool('ff_editAutobiographyAuthor', value);
  }

  void deleteEditAutobiographyAuthor() {
    secureStorage.delete(key: 'ff_editAutobiographyAuthor');
  }

  bool _editAutobiographyAudioConversation = false;
  bool get editAutobiographyAudioConversation =>
      _editAutobiographyAudioConversation;
  set editAutobiographyAudioConversation(bool value) {
    _editAutobiographyAudioConversation = value;
    secureStorage.setBool('ff_editAutobiographyAudioConversation', value);
  }

  void deleteEditAutobiographyAudioConversation() {
    secureStorage.delete(key: 'ff_editAutobiographyAudioConversation');
  }

  bool _editAutobiographyAccompany = false;
  bool get editAutobiographyAccompany => _editAutobiographyAccompany;
  set editAutobiographyAccompany(bool value) {
    _editAutobiographyAccompany = value;
    secureStorage.setBool('ff_editAutobiographyAccompany', value);
  }

  void deleteEditAutobiographyAccompany() {
    secureStorage.delete(key: 'ff_editAutobiographyAccompany');
  }

  bool _editAutobiographyOpenAIKey = false;
  bool get editAutobiographyOpenAIKey => _editAutobiographyOpenAIKey;
  set editAutobiographyOpenAIKey(bool value) {
    _editAutobiographyOpenAIKey = value;
    secureStorage.setBool('ff_editAutobiographyOpenAIKey', value);
  }

  void deleteEditAutobiographyOpenAIKey() {
    secureStorage.delete(key: 'ff_editAutobiographyOpenAIKey');
  }

  bool _editAutobiographyOpenAIKeyText = false;
  bool get editAutobiographyOpenAIKeyText => _editAutobiographyOpenAIKeyText;
  set editAutobiographyOpenAIKeyText(bool value) {
    _editAutobiographyOpenAIKeyText = value;
    secureStorage.setBool('ff_editAutobiographyOpenAIKeyText', value);
  }

  void deleteEditAutobiographyOpenAIKeyText() {
    secureStorage.delete(key: 'ff_editAutobiographyOpenAIKeyText');
  }

  bool _editAutobiographyModel = false;
  bool get editAutobiographyModel => _editAutobiographyModel;
  set editAutobiographyModel(bool value) {
    _editAutobiographyModel = value;
    secureStorage.setBool('ff_editAutobiographyModel', value);
  }

  void deleteEditAutobiographyModel() {
    secureStorage.delete(key: 'ff_editAutobiographyModel');
  }

  bool _editAutobiographyType = false;
  bool get editAutobiographyType => _editAutobiographyType;
  set editAutobiographyType(bool value) {
    _editAutobiographyType = value;
    secureStorage.setBool('ff_editAutobiographyType', value);
  }

  void deleteEditAutobiographyType() {
    secureStorage.delete(key: 'ff_editAutobiographyType');
  }

  bool _editAutobiographyCoverColour = false;
  bool get editAutobiographyCoverColour => _editAutobiographyCoverColour;
  set editAutobiographyCoverColour(bool value) {
    _editAutobiographyCoverColour = value;
    secureStorage.setBool('ff_editAutobiographyCoverColour', value);
  }

  void deleteEditAutobiographyCoverColour() {
    secureStorage.delete(key: 'ff_editAutobiographyCoverColour');
  }

  bool _toggleSelectAutobiographyHideCoverImage = false;
  bool get toggleSelectAutobiographyHideCoverImage =>
      _toggleSelectAutobiographyHideCoverImage;
  set toggleSelectAutobiographyHideCoverImage(bool value) {
    _toggleSelectAutobiographyHideCoverImage = value;
    secureStorage.setBool('ff_toggleSelectAutobiographyHideCoverImage', value);
  }

  void deleteToggleSelectAutobiographyHideCoverImage() {
    secureStorage.delete(key: 'ff_toggleSelectAutobiographyHideCoverImage');
  }

  DocumentReference? _appCurrentChapter;
  DocumentReference? get appCurrentChapter => _appCurrentChapter;
  set appCurrentChapter(DocumentReference? value) {
    _appCurrentChapter = value;
    value != null
        ? secureStorage.setString('ff_appCurrentChapter', value.path)
        : secureStorage.remove('ff_appCurrentChapter');
  }

  void deleteAppCurrentChapter() {
    secureStorage.delete(key: 'ff_appCurrentChapter');
  }

  int _appChapterNumberSequence = 1;
  int get appChapterNumberSequence => _appChapterNumberSequence;
  set appChapterNumberSequence(int value) {
    _appChapterNumberSequence = value;
    secureStorage.setInt('ff_appChapterNumberSequence', value);
  }

  void deleteAppChapterNumberSequence() {
    secureStorage.delete(key: 'ff_appChapterNumberSequence');
  }

  int _oldIndex = 0;
  int get oldIndex => _oldIndex;
  set oldIndex(int value) {
    _oldIndex = value;
    secureStorage.setInt('ff_oldIndex', value);
  }

  void deleteOldIndex() {
    secureStorage.delete(key: 'ff_oldIndex');
  }

  int _newIndex = 0;
  int get newIndex => _newIndex;
  set newIndex(int value) {
    _newIndex = value;
    secureStorage.setInt('ff_newIndex', value);
  }

  void deleteNewIndex() {
    secureStorage.delete(key: 'ff_newIndex');
  }

  bool _toggleCannotReorderChapterContent = false;
  bool get toggleCannotReorderChapterContent =>
      _toggleCannotReorderChapterContent;
  set toggleCannotReorderChapterContent(bool value) {
    _toggleCannotReorderChapterContent = value;
    secureStorage.setBool('ff_toggleCannotReorderChapterContent', value);
  }

  void deleteToggleCannotReorderChapterContent() {
    secureStorage.delete(key: 'ff_toggleCannotReorderChapterContent');
  }

  bool _toggleAddAIResponseToChapter = false;
  bool get toggleAddAIResponseToChapter => _toggleAddAIResponseToChapter;
  set toggleAddAIResponseToChapter(bool value) {
    _toggleAddAIResponseToChapter = value;
    secureStorage.setBool('ff_toggleAddAIResponseToChapter', value);
  }

  void deleteToggleAddAIResponseToChapter() {
    secureStorage.delete(key: 'ff_toggleAddAIResponseToChapter');
  }

  bool _toggleReorderChapterSelect = false;
  bool get toggleReorderChapterSelect => _toggleReorderChapterSelect;
  set toggleReorderChapterSelect(bool value) {
    _toggleReorderChapterSelect = value;
    secureStorage.setBool('ff_toggleReorderChapterSelect', value);
  }

  void deleteToggleReorderChapterSelect() {
    secureStorage.delete(key: 'ff_toggleReorderChapterSelect');
  }

  int _appAudioFileNumber = 0;
  int get appAudioFileNumber => _appAudioFileNumber;
  set appAudioFileNumber(int value) {
    _appAudioFileNumber = value;
    secureStorage.setInt('ff_appAudioFileNumber', value);
  }

  void deleteAppAudioFileNumber() {
    secureStorage.delete(key: 'ff_appAudioFileNumber');
  }

  bool _toggleAudioExists = false;
  bool get toggleAudioExists => _toggleAudioExists;
  set toggleAudioExists(bool value) {
    _toggleAudioExists = value;
    secureStorage.setBool('ff_toggleAudioExists', value);
  }

  void deleteToggleAudioExists() {
    secureStorage.delete(key: 'ff_toggleAudioExists');
  }

  DocumentReference? _selectUserAudioFile;
  DocumentReference? get selectUserAudioFile => _selectUserAudioFile;
  set selectUserAudioFile(DocumentReference? value) {
    _selectUserAudioFile = value;
    value != null
        ? secureStorage.setString('ff_selectUserAudioFile', value.path)
        : secureStorage.remove('ff_selectUserAudioFile');
  }

  void deleteSelectUserAudioFile() {
    secureStorage.delete(key: 'ff_selectUserAudioFile');
  }

  String _selectedAudioPath = '';
  String get selectedAudioPath => _selectedAudioPath;
  set selectedAudioPath(String value) {
    _selectedAudioPath = value;
    secureStorage.setString('ff_selectedAudioPath', value);
  }

  void deleteSelectedAudioPath() {
    secureStorage.delete(key: 'ff_selectedAudioPath');
  }

  String _selectedSpeechToText = '';
  String get selectedSpeechToText => _selectedSpeechToText;
  set selectedSpeechToText(String value) {
    _selectedSpeechToText = value;
    secureStorage.setString('ff_selectedSpeechToText', value);
  }

  void deleteSelectedSpeechToText() {
    secureStorage.delete(key: 'ff_selectedSpeechToText');
  }

  String _selectedAudioTitle = '';
  String get selectedAudioTitle => _selectedAudioTitle;
  set selectedAudioTitle(String value) {
    _selectedAudioTitle = value;
    secureStorage.setString('ff_selectedAudioTitle', value);
  }

  void deleteSelectedAudioTitle() {
    secureStorage.delete(key: 'ff_selectedAudioTitle');
  }

  bool _toggleAudioEntry = false;
  bool get toggleAudioEntry => _toggleAudioEntry;
  set toggleAudioEntry(bool value) {
    _toggleAudioEntry = value;
    secureStorage.setBool('ff_toggleAudioEntry', value);
  }

  void deleteToggleAudioEntry() {
    secureStorage.delete(key: 'ff_toggleAudioEntry');
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}
