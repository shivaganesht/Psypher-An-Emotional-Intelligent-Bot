@echo off
echo Activating virtual environment...

:: Navigate to the directory containing your Flask application
cd /d C:\Users\antha\OneDrive\Desktop\foss hack

:: Verify the presence of app.py
if not exist "app.py" (
    echo Error: app.py not found in the current directory.
    pause
    exit /b
)

:: Check if the venv directory exists
if not exist "venv\Scripts\activate.bat" (
    echo Error: Virtual environment not found. Please create it first.
    pause
    exit /b
)

:: Add venv\Scripts to the PATH
set "PATH=%CD%\venv\Scripts;%PATH%"

:: Activate the virtual environment
:: call venv\Scripts\activate.bat

:: Verify activation
if "%errorlevel%" neq "0" (
    echo Error: Could not activate the virtual environment.
    pause
    exit /b
)

:: Check if Flask is installed
pip show flask >nul 2>&1
if "%errorlevel%" neq "0" (
    echo Error: Flask is not installed in the virtual environment.
    echo Installing Flask...
    pip install flask
    if "%errorlevel%" neq "0" (
        echo Error: Failed to install Flask.
        pause
        exit /b
    )
)

:: Debugging Information
echo Virtual environment activated...
echo Setting environment variables...

:: Set environment variables
set "FLASK_APP=app.py"
set "FLASK_ENV=development"

:: Debugging Information
echo FLASK_APP=%FLASK_APP%
echo FLASK_ENV=%FLASK_ENV%

:: Run Flask
echo Running Flask...
flask run

:: Pause to keep the window open after execution
pause
