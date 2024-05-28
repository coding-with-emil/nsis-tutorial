; You'll need to create your own license.txt

!include "MUI.nsh"

Name "My Program"
InstallDir "$PROGRAMFILES\MyProgram"
OutFile "Install.exe"

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
