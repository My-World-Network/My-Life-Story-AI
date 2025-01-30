import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/profile_folder/profile_page_folder/profile_page_header/profile_page_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'profile_settings_page_model.dart';
export 'profile_settings_page_model.dart';

/// Design a user-friendly and comprehensive ProfileSettings page within
/// FlutterFlow that enables users to:
///
/// View and edit personal information (e.g., name, email, profile picture).
///
///
/// Change account credentials (e.g., password).
/// Adjust general app preferences (e.g., language, notifications).
/// Access privacy and security settings related to their profile.
/// Manage connected accounts (e.g., social media integrations).
/// View app-related information and support options.
/// 1. Create a New Page
/// Page Name: ProfileSettingsPage
/// Starting Template: Use a blank page or a pre-defined settings template if
/// available.
/// 2. Page Layout
/// Use a Column Widget to organize content vertically.
/// Set crossAxisAlignment to CrossAxisAlignment.stretch for full-width
/// elements.
/// Add a SingleChildScrollView to enable scrolling if content exceeds the
/// screen height.
/// 3. AppBar
/// Add an AppBar at the top of the page.
/// Title: "Profile Settings"
/// Use a Text widget with styling:
/// Font size: 22
/// Font weight: Bold
/// Leading Icon:
/// Back Arrow (Icons.arrow_back): Allows users to navigate back to the
/// HomePage.
/// OnPressed: Add an action to navigate back.
/// Background Color: Match the app's primary color.
/// Elevation: Set to 1 for subtle depth.
/// 4. Profile Header Section
/// Components:
///
/// Profile Picture
///
/// Widget: CircleAvatar
/// Radius: 50
/// Background Image: User's profile picture.
/// Placeholder: Use a default avatar image if none is set.
/// OnTap: Allow users to tap and change their profile picture.
/// Action: Open a modal with options to:
/// Take Photo (using camera)
/// Choose from Gallery
/// Remove Photo
/// User Name and Email
///
/// Widget: Column containing two Text widgets.
/// User Name: Bold font, font size 20.
/// Email: Regular font, font size 16, color: secondary text color.
/// Edit Icon:
/// Widget: IconButton with Icons.edit
/// OnPressed: Open a dialog to edit name and email.
/// Layout:
///
/// Use a Row or Column to position the profile picture and user information
/// appropriately.
/// Alignment: Center all components horizontally.
/// 5. Personal Information
/// Components:
///
/// Edit Name
///
/// Widget: ListTile
/// Leading Icon: Icons.person
/// Title: "Name"
/// Subtitle: Display the current name.
/// Trailing Icon: Icons.edit
/// OnTap: Open a dialog to edit the name.
/// Edit Email
///
/// Widget: ListTile
/// Leading Icon: Icons.email
/// Title: "Email"
/// Subtitle: Display the current email.
/// Trailing Icon: Icons.edit
/// OnTap: Open a dialog to edit the email.
/// Verification Status:
/// If the email is unverified, display a warning icon (Icons.warning) and a
/// prompt to verify.
/// Change Password
///
/// Widget: ListTile
/// Leading Icon: Icons.lock
/// Title: "Change Password"
/// OnTap: Navigate to a page or open a dialog to change the password.
/// 6. Account Settings
/// Components:
///
/// Connected Accounts
///
/// Widget: ListTile
/// Leading Icon: Icons.link
/// Title: "Connected Accounts"
/// Subtitle: E.g., "Google, Facebook"
/// OnTap: Navigate to a page where users can manage connected social
/// accounts.
/// Options:
/// Add Account: Button to connect new accounts.
/// Remove Account: Option to disconnect existing accounts.
/// Language Preferences
///
/// Widget: ListTile
/// Leading Icon: Icons.language
/// Title: "Language"
/// Subtitle: Display the current language setting.
/// OnTap: Open a modal to select a preferred language from a list.
/// Notification Settings
///
/// Widget: ListTile
/// Leading Icon: Icons.notifications
/// Title: "Notifications"
/// Subtitle: E.g., "On"
/// OnTap: Navigate to a NotificationSettingsPage (to be created separately).
/// 7. Accessibility Settings
/// Components:
///
/// Text Size Adjustment
///
/// Widget: ListTile
/// Leading Icon: Icons.format_size
/// Title: "Text Size"
/// Subtitle: E.g., "Medium"
/// OnTap: Open a dialog with a Slider to adjust text size.
/// Slider Properties:
/// Min: Small
/// Max: Large
/// Divisions: 2
/// Labels: "Small", "Medium", "Large"
/// Contrast Mode
///
/// Widget: SwitchListTile
/// Leading Icon: Icons.contrast
/// Title: "High Contrast Mode"
/// Value: Bind to isHighContrastMode
/// OnChanged: Toggle high contrast mode for better visibility.
/// VoiceOver Support
///
/// Widget: SwitchListTile
/// Leading Icon: Icons.record_voice_over
/// Title: "Enable VoiceOver"
/// Value: Bind to isVoiceOverEnabled
/// OnChanged: Enable or disable VoiceOver features.
/// 8. Privacy and Security
/// Components:
///
/// Privacy Settings
///
/// Widget: ListTile
/// Leading Icon: Icons.privacy_tip
/// Title: "Privacy Settings"
/// OnTap: Navigate to a PrivacySettingsPage.
/// Security Settings
///
/// Widget: ListTile
/// Leading Icon: Icons.security
/// Title: "Security Settings"
/// OnTap: Navigate to a SecuritySettingsPage.
/// Two-Factor Authentication
///
/// Widget: SwitchListTile
/// Leading Icon: Icons.verified_user
/// Title: "Two-Factor Authentication"
/// Value: Bind to isTwoFactorEnabled
/// OnChanged: Enable or disable 2FA.
/// OnTap: If enabling, navigate to setup process.
/// 9. App Information and Support
/// Components:
///
/// App Version
///
/// Widget: ListTile
/// Leading Icon: Icons.info
/// Title: "App Version"
/// Subtitle: Display the current app version (e.g., "1.0.0")
/// Terms of Service
///
/// Widget: ListTile
/// Leading Icon: Icons.description
/// Title: "Terms of Service"
/// OnTap: Navigate to a page displaying the terms.
/// Privacy Policy
///
/// Widget: ListTile
/// Leading Icon: Icons.policy
/// Title: "Privacy Policy"
/// OnTap: Navigate to a page displaying the privacy policy.
/// Help and Support
///
/// Widget: ListTile
/// Leading Icon: Icons.help_outline
/// Title: "Help & Support"
/// OnTap: Navigate to a HelpAndSupportPage.
/// Feedback
///
/// Widget: ListTile
/// Leading Icon: Icons.feedback
/// Title: "Send Feedback"
/// OnTap: Open a form for users to submit feedback or rate the app.
/// 10. Account Management
/// Components:
///
/// Sign Out
///
/// Widget: ListTile
/// Leading Icon: Icons.exit_to_app
/// Title: "Sign Out"
/// Title Text Color: Use a prominent color to stand out.
/// OnTap: Show a confirmation dialog, then sign the user out if confirmed.
/// Delete Account
///
/// Widget: ListTile
/// Leading Icon: Icons.delete_forever
/// Title: "Delete Account"
/// Title Text Color: Use a warning color (e.g., red).
/// OnTap: Show a confirmation dialog explaining the consequences.
/// Require the user to enter their password to confirm.
/// Provide options to cancel or proceed.
/// 11. Styling and Theming
/// Consistent Styling:
///
/// ListTiles:
///
/// Use contentPadding for adequate spacing.
/// Trailing Icons: Use Icons.arrow_forward_ios for navigable items.
/// Dividers: Add Divider widgets between sections.
/// Text Styles:
///
/// Headers: Use bold fonts and slightly larger sizes for section headers.
/// Subtitles: Use a secondary text color for clarity.
/// Colors:
///
/// Match the app's color scheme.
/// Ensure sufficient contrast between text and background.
/// Icons:
///
/// Use material icons that clearly represent the associated action.
/// 12. Accessibility Considerations
/// Tap Targets:
///
/// Ensure all interactive elements are at least 48x48 pixels.
/// Labels and Semantics:
///
/// Provide semanticLabel for screen readers on all interactive elements.
/// Dynamic Type Support:
///
/// Allow text to scale according to user's device settings.
/// 13. Responsive Design
/// Layout Adaptation:
///
/// Use Expanded and Flexible widgets to ensure the UI adapts to different
/// screen sizes and orientations.
/// Scrolling:
///
/// Ensure content is scrollable if it exceeds the viewport height.
/// 14. Additional Features
/// a. Notification Settings Page
/// Create a NotificationSettingsPage accessible from the "Notifications"
/// ListTile.
///
/// Components:
///
/// Email Notifications
///
/// Widget: SwitchListTile
/// Title: "Email Notifications"
/// Value: Bind to emailNotificationsEnabled
/// OnChanged: Update the preference.
/// Push Notifications
///
/// Widget: SwitchListTile
/// Title: "Push Notifications"
/// Value: Bind to pushNotificationsEnabled
/// OnChanged: Update the preference.
/// Notification Frequency
///
/// Widget: ListTile
/// Title: "Notification Frequency"
/// Subtitle: E.g., "Daily"
/// OnTap: Open a modal to select frequency (e.g., Real-time, Daily, Weekly).
/// b. Help and Support Page
/// Create a HelpAndSupportPage accessible from the "Help & Support" ListTile.
///
/// Components:
///
/// FAQ Section
///
/// Widget: ExpansionTile widgets for common questions.
/// Contact Support
///
/// Widget: ListTile
/// Leading Icon: Icons.contact_support
/// Title: "Contact Support"
/// OnTap: Open an email intent or contact form.
/// Tutorials
///
/// Widget: ListTile
/// Leading Icon: Icons.school
/// Title: "App Tutorials"
/// OnTap: Navigate to tutorial content or videos.
/// 15. Final Touches
/// Confirmation Dialogs:
///
/// For actions like "Sign Out" or "Delete Account", implement dialogs with
/// clear messaging.
/// Feedback Messages:
///
/// Use SnackBar to show confirmation of changes (e.g., "Profile updated
/// successfully").
/// Loading Indicators:
///
/// If any actions take time, display a CircularProgressIndicator.
/// Error Handling:
///
/// Display user-friendly error messages if actions fail.
class ProfileSettingsPageWidget extends StatefulWidget {
  const ProfileSettingsPageWidget({
    super.key,
    this.refAutobiography,
    this.refUser,
  });

  final DocumentReference? refAutobiography;
  final DocumentReference? refUser;

  @override
  State<ProfileSettingsPageWidget> createState() =>
      _ProfileSettingsPageWidgetState();
}

class _ProfileSettingsPageWidgetState extends State<ProfileSettingsPageWidget> {
  late ProfileSettingsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileSettingsPageModel());

    _model.switchValue1 = false;
    _model.switchValue2 = false;
    _model.switchValue3 = false;
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: StreamBuilder<AutobiographiesRecord>(
          stream: AutobiographiesRecord.getDocument(widget.refAutobiography!),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return const Center(
                child: SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child: SpinKitFadingCircle(
                    color: Color(0xC84B59BC),
                    size: 50.0,
                  ),
                ),
              );
            }

            final containerAutobiographiesRecord = snapshot.data!;

            return Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFC3DAEC), Color(0xFF9CB9DF)],
                  stops: [0.0, 1.0],
                  begin: AlignmentDirectional(0.0, -1.0),
                  end: AlignmentDirectional(0, 1.0),
                ),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        valueOrDefault<double>(
                          () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 0.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 0.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 0.0;
                            } else {
                              return 372.0;
                            }
                          }(),
                          0.0,
                        ),
                        0.0,
                        valueOrDefault<double>(
                          () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 0.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 0.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 0.0;
                            } else {
                              return 372.0;
                            }
                          }(),
                          0.0,
                        ),
                        0.0),
                    child: StreamBuilder<UsersRecord>(
                      stream: UsersRecord.getDocument(widget.refUser!),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return const Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: SpinKitFadingCircle(
                                color: Color(0xC84B59BC),
                                size: 50.0,
                              ),
                            ),
                          );
                        }

                        final columnUsersRecord = snapshot.data!;

                        return SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 387.0,
                                height: 100.0,
                                decoration: const BoxDecoration(),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 6.0, 12.0, 0.0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        offset: const Offset(
                                          0.0,
                                          0.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(12.0),
                                      bottomRight: Radius.circular(12.0),
                                      topLeft: Radius.circular(12.0),
                                      topRight: Radius.circular(12.0),
                                    ),
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 24.0, 24.0, 24.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Stack(
                                          children: [
                                            Container(
                                              width: 120.0,
                                              height: 120.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent1,
                                                borderRadius:
                                                    BorderRadius.circular(60.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  width: 3.0,
                                                ),
                                              ),
                                              child: Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          60.0),
                                                  child: Image.network(
                                                    'https://images.unsplash.com/photo-1615529609972-1864841e3da3?w=500&h=500',
                                                    width: 120.0,
                                                    height: 120.0,
                                                    fit: BoxFit.cover,
                                                    alignment:
                                                        const Alignment(0.0, 0.0),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  valueOrDefault<String>(
                                                    columnUsersRecord
                                                        .displayName,
                                                    'Display Name',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineSmall
                                                      .override(
                                                        fontFamily:
                                                            'Inter Tight',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                Text(
                                                  valueOrDefault<String>(
                                                    columnUsersRecord.email,
                                                    'User Email',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ].divide(const SizedBox(height: 4.0)),
                                            ),
                                          ],
                                        ),
                                      ].divide(const SizedBox(height: 16.0)),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        offset: const Offset(
                                          0.0,
                                          0.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(12.0),
                                      bottomRight: Radius.circular(12.0),
                                      topLeft: Radius.circular(12.0),
                                      topRight: Radius.circular(12.0),
                                    ),
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20.0, 20.0, 20.0, 20.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'Account Settings',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Inter Tight',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.lock_outline,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 24.0,
                                                ),
                                                Text(
                                                  'Change Password',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ].divide(const SizedBox(width: 12.0)),
                                            ),
                                            Icon(
                                              Icons.chevron_right,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.language,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 24.0,
                                                ),
                                                Text(
                                                  'Language',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ].divide(const SizedBox(width: 12.0)),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'English',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                Icon(
                                                  Icons.chevron_right,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                              ].divide(const SizedBox(width: 8.0)),
                                            ),
                                          ],
                                        ),
                                      ].divide(const SizedBox(height: 16.0)),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        offset: const Offset(
                                          0.0,
                                          0.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(12.0),
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20.0, 20.0, 20.0, 20.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'Notifications',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Inter Tight',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.notifications_none,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 24.0,
                                                ),
                                                Text(
                                                  'Push Notifications',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ].divide(const SizedBox(width: 12.0)),
                                            ),
                                            Switch(
                                              value: _model.switchValue1!,
                                              onChanged: (newValue) async {
                                                safeSetState(() => _model
                                                    .switchValue1 = newValue);
                                              },
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              activeTrackColor:
                                                  FlutterFlowTheme.of(context)
                                                      .switchColour,
                                              inactiveTrackColor:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              inactiveThumbColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.mail_outline,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 24.0,
                                                ),
                                                Text(
                                                  'Email Notifications',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ].divide(const SizedBox(width: 12.0)),
                                            ),
                                            Switch(
                                              value: _model.switchValue2!,
                                              onChanged: (newValue) async {
                                                safeSetState(() => _model
                                                    .switchValue2 = newValue);
                                              },
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              activeTrackColor:
                                                  FlutterFlowTheme.of(context)
                                                      .switchColour,
                                              inactiveTrackColor:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              inactiveThumbColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ],
                                        ),
                                      ].divide(const SizedBox(height: 16.0)),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        offset: const Offset(
                                          0.0,
                                          0.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(12.0),
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20.0, 20.0, 20.0, 20.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'Privacy & Security',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Inter Tight',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.privacy_tip_outlined,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 24.0,
                                                ),
                                                Text(
                                                  'Privacy Settings',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ].divide(const SizedBox(width: 12.0)),
                                            ),
                                            Icon(
                                              Icons.chevron_right,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.verified_user,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 24.0,
                                                ),
                                                Text(
                                                  'Two-Factor Authentication',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ].divide(const SizedBox(width: 12.0)),
                                            ),
                                            Switch(
                                              value: _model.switchValue3!,
                                              onChanged: (newValue) async {
                                                safeSetState(() => _model
                                                    .switchValue3 = newValue);
                                              },
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              activeTrackColor:
                                                  FlutterFlowTheme.of(context)
                                                      .switchColour,
                                              inactiveTrackColor:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              inactiveThumbColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ],
                                        ),
                                      ].divide(const SizedBox(height: 16.0)),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        offset: const Offset(
                                          0.0,
                                          0.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(12.0),
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20.0, 20.0, 20.0, 20.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'Support',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Inter Tight',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.help_outline,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 24.0,
                                                ),
                                                Text(
                                                  'Help Center',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ].divide(const SizedBox(width: 12.0)),
                                            ),
                                            Icon(
                                              Icons.chevron_right,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.info_outline,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 24.0,
                                                ),
                                                Text(
                                                  'About',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ].divide(const SizedBox(width: 12.0)),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'Version 2.0.1',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                Icon(
                                                  Icons.chevron_right,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                              ].divide(const SizedBox(width: 8.0)),
                                            ),
                                          ],
                                        ),
                                      ].divide(const SizedBox(height: 16.0)),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        offset: const Offset(
                                          0.0,
                                          0.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(12.0),
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20.0, 20.0, 20.0, 20.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.logout,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  size: 24.0,
                                                ),
                                                Text(
                                                  'Sign Out',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ].divide(const SizedBox(width: 12.0)),
                                            ),
                                          ],
                                        ),
                                      ].divide(const SizedBox(height: 16.0)),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 387.0,
                                height: 79.0,
                                decoration: const BoxDecoration(),
                              ),
                            ].divide(const SizedBox(height: 24.0)),
                          ),
                        );
                      },
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      wrapWithModel(
                        model: _model.profilePageHeaderModel,
                        updateCallback: () => safeSetState(() {}),
                        child: const ProfilePageHeaderWidget(),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
