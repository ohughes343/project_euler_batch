@echo off
setlocal enableextensions
setlocal enabledelayedexpansion

set sum=0

for /L %%i in (1,1,999) do (
  set /a count = %%i
  set /a multiple = 0
  set /a remainder3 = !count! %% 3
  set /a remainder5 = !count! %% 5
  if !remainder3! == 0 (
    set /a multiple = 1
  )
  if !remainder5! == 0 (
    set /a multiple = 1
  )
  if !multiple! == 1 (
    set /a sum+=!count!
  )
  echo count is !count! and sum is !sum!
)
echo !sum!
pause
