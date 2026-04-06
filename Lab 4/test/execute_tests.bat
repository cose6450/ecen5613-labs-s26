call ttpmacro.exe .\test\tests.ttl "%CD%"
if %ERRORLEVEL% neq 0 (
    echo Tests failed with exit code %ERRORLEVEL%
    exit /b %ERRORLEVEL%
)