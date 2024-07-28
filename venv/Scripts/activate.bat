@echo off
:: Debugging Information
echo Activating virtual environment...

:: Check if the venv directory exists
if not exist "venv\Scripts\activate.bat" (
    echo Error: Virtual environment not found. Please create it first.
    pause
    exit /b
)

:: Activate the virtual environment
call venv\Scripts\activate

:: Verify activation
if "%errorlevel%" neq "0" (
    echo Error: Could not activate the virtual environment.
    pause
    exit /b
)

echo Virtual environment activated.
echo Setting environment variables...

:: Set environment variables
set FLASK_APP=app.py
set FLASK_ENV=development

:: Debugging Information
echo FLASK_APP=%FLASK_APP%
echo FLASK_ENV=%FLASK_ENV%

:: Run Flask
echo Running Flask...
flask run

:: Pause to keep the window open after execution
pause
