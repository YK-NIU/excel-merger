; 脚本名称：Excel工作簿合并工具 安装脚本
#define MyAppName "Excel工作簿合并工具"
#define MyAppVersion "1.0"
#define MyAppExeName "ExcelMerger.exe"

[Setup]
AppId={{0C9FF740-A6F2-4847-96E9-6F5E7C24C556}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}
UninstallDisplayIcon={app}\{#MyAppExeName}
OutputBaseFilename=Excel工作簿合并工具_安装程序
SolidCompression=yes
WizardStyle=modern
DisableProgramGroupPage=no

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "创建桌面图标"; GroupDescription: "附加图标:"

[Files]
Source: "C:\Users\Administrator\OneDrive\Desktop\合并EXCEL2.0 - 副本\dist\ExcelMerger.exe"; DestDir: "{app}"; Flags: ignoreversion
; 如果您的程序还有其他文件（如dll、配置文件等），请取消注释下面一行并修改路径
; Source: "C:\Users\Administrator\OneDrive\Desktop\合并EXCEL2.0 - 副本\dist\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\卸载 {#MyAppName}"; Filename: "{uninstallexe}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "运行 Excel工作簿合并工具"; Flags: nowait postinstall skipifsilent