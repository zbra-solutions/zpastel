echo off

flutter packages pub run build_runner build --delete-conflicting-outputs

ECHO Done
pause