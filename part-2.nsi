!include "MUI.nsh"

Name "My Program"
InstallDir "$PROGRAMFILES\MyProgram"
OutFile "Install.exe"
BrandingText "Company name"

!define MUI_HEADERIMAGE_BITMAP "header.bmp"
!define MUI_WELCOMEFINISHPAGE_BITMAP "wizard.bmp"

!define MUI_WELCOMEPAGE_TEXT "Setup will guide you through the installation process of My Program.\n\nYou should close all other application before continuing.\n\nClick Next to continue and Cancel to exit the Setup Wizard."

!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_LICENSE "license.txt"
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH

!insertmacro MUI_LANGUAGE "English"

Section ""
  SetOutPath $INSTDIR
  
  File "license.txt"
SectionEnd
