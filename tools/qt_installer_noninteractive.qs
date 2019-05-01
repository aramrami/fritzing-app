function Controller() {
  installer.autoRejectMessageBoxes();
  installer.installationFinished.connect(function() {
    gui.clickButton(buttons.NextButton);
  })
}

gui.clickButton(buttons.NextButton, 3000);

Controller.prototype.WelcomePageCallback = function() {
  gui.clickButton(buttons.NextButton);
}

Controller.prototype.CredentialsPageCallback = function() {
  gui.clickButton(buttons.NextButton);
}

Controller.prototype.IntroductionPageCallback = function() {
  gui.clickButton(buttons.NextButton);
}

Controller.prototype.TargetDirectoryPageCallback = function() {
  gui.currentPageWidget().TargetDirectoryLineEdit.setText("C:/Qt/Qt5.12.3");
  gui.clickButton(buttons.NextButton);
}

Controller.prototype.ComponentSelectionPageCallback = function() {
  var widget = gui.currentPageWidget();

  widget.deselectAll();
  widget.selectComponent("qt.qt5.5123.win32_msvc2017");
  widget.selectComponent("qt.qt5.5123.win64_msvc2017_64");

// Cannot get older version of Qt qit Quick Scripts
// Cannot programatically select LTS releases
//  widget.selectComponent("qt.qt5.598.win64_msvc2017_64");
  // widget.selectComponent("qt.55.qt3d");
  // widget.selectComponent("qt.55.qtcanvas3d");
  // widget.selectComponent("qt.55.qtquick1");
  // widget.selectComponent("qt.55.qtscript");
  // widget.selectComponent("qt.55.qtwebengine");
  // widget.selectComponent("qt.55.qtquickcontrols");
  // widget.selectComponent("qt.55.qtlocation");

  gui.clickButton(buttons.NextButton);
}

Controller.prototype.LicenseAgreementPageCallback = function() {
  gui.currentPageWidget().AcceptLicenseRadioButton.setChecked(true);
  gui.clickButton(buttons.NextButton);
}

Controller.prototype.StartMenuDirectoryPageCallback = function() {
  gui.clickButton(buttons.NextButton);
}

Controller.prototype.ReadyForInstallationPageCallback = function()
{
  gui.clickButton(buttons.NextButton);
}

Controller.prototype.FinishedPageCallback = function() {
  var checkBoxForm = gui.currentPageWidget().LaunchQtCreatorCheckBoxForm
  if (checkBoxForm && checkBoxForm.launchQtCreatorCheckBox) {
    checkBoxForm.launchQtCreatorCheckBox.checked = false;
  }
  gui.clickButton(buttons.FinishButton);
}
