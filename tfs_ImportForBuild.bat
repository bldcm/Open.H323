rem Depends-on: OpenSource\pwlib

call %MAKEVERSION_DIR%\TfsImport FileList  OpenSource\pwlib  lib       import\pwlib  *.lib
call %MAKEVERSION_DIR%\TfsImport Tree      OpenSource\pwlib  include   import\pwlib
