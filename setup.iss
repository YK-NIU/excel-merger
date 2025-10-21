; 脚本名称：小河狸表格合并器 安装脚本
#define MyAppName "小河狸表格合并器"
#define MyAppNameEn "Little Beaver Table Merger"
#define MyAppVersion "1.0.1"
#define MyAppPublisher "小河狸工作室"
#define MyAppExeName "小河狸表格合并器.exe"

[Setup]
AppId={{C9F8A741-0A6F-4847-96E9-6F5E7C24C557}
AppName={#MyAppName}
AppVerName={#MyAppName} {#MyAppVersion}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={code:GetDefaultDirName}
DefaultGroupName={code:GetDefaultGroupName}
UninstallDisplayIcon={app}\{#MyAppExeName}
OutputBaseFilename=小河狸表格合并器安装程序
Compression=lzma
SolidCompression=yes
WizardStyle=modern
ShowLanguageDialog=yes

[Languages]
Name: "zh"; MessagesFile: "compiler:Languages\ChineseSimplified.isl"
Name: "en"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkedonce

[Files]
Source: "dist\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\{code:GetAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{code:GetAppName}}"; Filename: "{uninstallexe}"
Name: "{autodesktop}\{code:GetAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{code:GetAppName}}"; Flags: nowait postinstall skipifsilent

[CustomMessages]
zh.CreateDesktopIcon=创建桌面图标
zh.AdditionalIcons=附加图标:
en.CreateDesktopIcon=Create a desktop icon
en.AdditionalIcons=Additional icons:

[Code]
function GetDefaultDirName(Param: String): String;
begin
  if ActiveLanguage = 'en' then
    Result := ExpandConstant('{autopf}\{#MyAppNameEn}')
  else
    Result := ExpandConstant('{autopf}\{#MyAppName}');
end;

function GetDefaultGroupName(Param: String): String;
begin
  if ActiveLanguage = 'en' then
    Result := '{#MyAppNameEn}'
  else
    Result := '{#MyAppName}';
end;

function GetAppName(Param: String): String;
begin
  if ActiveLanguage = 'en' then
    Result := '{#MyAppNameEn}'
  else
    Result := '{#MyAppName}';
end;
