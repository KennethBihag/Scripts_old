if [%~1]==[] (
  echo ^< function name ^> ^< ^"'arg1' 'arg2' '...'^" ^> [output var]
  exit /b 0
)
set funcName=%~1
set args=%~2
call :!funcName! %args:'="% output
if not [%~3]==[] set %3=!output! 
exit /b 0

rem functions
 rem param 1: array, param 2: pos, param 3: result character
:get_char_at
  set array=%~1
  set pos=%~2
  for /L %%L in (0,1,1024) do (
    if %%L gtr %pos% ( 
	  goto :return
	)
    set ch=!array:~%%L,1!
	if not defined ch ( 
	  set ch=\0
	  goto :return
	) else (
	  if "%%L"=="%pos%" (
	    if "!ch!"==" " set ch=\s
		goto :return
	  )
	)
  )
:return
  set %~3=!ch!
  exit /b 0

 rem get vertex count and face count of an OBJ file
 rem :GetMeshDataCount <obj file path> <number of vertices variable> <number of faces variable>
 :GetMeshDataCount
set numVertices=0
set numFaces=0
for /f  %%f in ('type %1') do (
	set tkn=%%f
	set tkn=!tkn:~0,1!
	if "!tkn!"=="v" set /a numVertices = !numVertices! + 1
	if "!tkn!"=="f" set /a numFaces = !numFaces! + 1
)
set %2=!numVertices!
set %3=!numFaces!
if !numVertices! lss 3 ( set %4=false ) else ( set %4=true )
exit /b 0