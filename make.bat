@setlocal ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION
@CALL %MAKEVERSION_DIR%\ModuleBuildEntry "OpenH323" - %*

CALL %MAKEVERSION_DIR%\DeleteTree export
CALL %MAKEVERSION_DIR%\DeleteTree lib

CALL %MAKEVERSION_DIR%\make_vs VS2008 OpenH323.sln Release - %*
CALL %MAKEVERSION_DIR%\make_vs VS2008 OpenH323.sln Debug   - %*

CALL %MAKEVERSION_DIR%\AssertBuildTarget . lib OpenH323.dll  OpenH323.lib  OpenH323s.lib
CALL %MAKEVERSION_DIR%\AssertBuildTarget . lib OpenH323d.dll OpenH323d.lib OpenH323sd.lib
CALL %MAKEVERSION_DIR%\CopyFileList lib export OpenH323.dll OpenH323d.dll 
%MAKEVERSION_DIR%\ModuleBuildExit