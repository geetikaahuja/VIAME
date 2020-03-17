@echo off

REM Path to VIAME installation
SET VIAME_INSTALL=C:\Program Files\VIAME

REM Processing options
SET INPUT_DIRECTORY=videos
SET FRAME_RATE=5

REM Extra resource utilization options
SET TOTAL_GPU_COUNT=1
SET PIPES_PER_GPU=1

REM Setup paths and run command
CALL "%VIAME_INSTALL%\setup_viame.bat"

python.exe "%VIAME_INSTALL%\configs\process_video.py" --init -d "%INPUT_DIRECTORY%" -frate %FRAME_RATE% -p pipelines\index_full_frame.pipe -o database -gpus %TOTAL_GPU_COUNT% -pipes-per-gpu %PIPES_PER_GPU% --build-index -install "%VIAME_INSTALL%"

pause
