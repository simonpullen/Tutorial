# Microsoft Developer Studio Generated NMAKE File, Based on StarDraw.dsp
!IF "$(CFG)" == ""
CFG=StarDraw - Macintosh Release
!MESSAGE No configuration specified.  Defaulting to StarDraw - Macintosh\
 Release.
!ENDIF 

!IF "$(CFG)" != "StarDraw - Macintosh Release" && "$(CFG)" !=\
 "StarDraw - Macintosh Debug" && "$(CFG)" != "StarDraw - Win32 Release" &&\
 "$(CFG)" != "StarDraw - Win32 Debug" && "$(CFG)" !=\
 "StarDraw - Power Macintosh Release" && "$(CFG)" !=\
 "StarDraw - Power Macintosh Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "StarDraw.mak" CFG="StarDraw - Macintosh Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "StarDraw - Macintosh Release" (based on "Macintosh Application")
!MESSAGE "StarDraw - Macintosh Debug" (based on "Macintosh Application")
!MESSAGE "StarDraw - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "StarDraw - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE "StarDraw - Power Macintosh Release" (based on\
 "Power Macintosh Application")
!MESSAGE "StarDraw - Power Macintosh Debug" (based on\
 "Power Macintosh Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "StarDraw - Macintosh Release"

OUTDIR=.\MacRel
INTDIR=.\MacRel

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

MFILE32=mfile.exe
MFILE32_FLAGS=COPY /NOLOGO 
MFILE32_FILES= \
	"$(OUTDIR)/StarDraw.exe"

"$(OUTDIR)\StarDraw.trg" : "$(OUTDIR)" $(MFILE32_FILES)
    $(MFILE32) $(MFILE32_FLAGS) .\MacRel\StarDraw.exe\
 "$(MFILE32_DEST):StarDraw.exe">"$(OUTDIR)\StarDraw.trg"

DOWNLOAD : "$(OUTDIR)" $(MFILE32_FILES)
    $(MFILE32) $(MFILE32_FLAGS) .\MacRel\StarDraw.exe\
 "$(MFILE32_DEST):StarDraw.exe">"$(OUTDIR)\StarDraw.trg"

LINK32=link.exe
LINK32_FLAGS=/nologo /MAC:bundle /MAC:type="APPL" /MAC:creator="SCRI"\
 /pdb:"$(OUTDIR)/StarDraw.pdb" /machine:M68K /out:"$(OUTDIR)/StarDraw.exe" 
LINK32_OBJS= \
	"$(INTDIR)/Starvw.obj" \
	"$(INTDIR)/StarDraw.obj" \
	"$(INTDIR)/stdafx.obj" \
	"$(INTDIR)/ipframe.obj" \
	"$(INTDIR)/Staritm.obj" \
	"$(INTDIR)/pendlg.obj" \
	"$(INTDIR)/childfrm.obj" \
	"$(INTDIR)/Stardoc.obj" \
	"$(INTDIR)/mainfrm.obj" \
	"$(INTDIR)/scrimac.rsc" \
	"$(INTDIR)/StarDraw.rsc"

"$(OUTDIR)\StarDraw.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)/StarDraw.bsc" 
BSC32_SBRS=
MRC=mrc.exe
MRC_PROJ=/D "_68K_" /D "_MAC" /D "NDEBUG" /l 0x409 /NOLOGO 
RSC=rc.exe
RSC_PROJ=/l 0x409 /r /m /fo"$(INTDIR)/StarDraw.rsc" /d "_MAC" /d "_68K_" /d\
 "NDEBUG" 
CPP=cl.exe
CPP_PROJ=/nologo /AL /Q68s /W3 /GX /O2 /D "_WINDOWS" /D "_MAC" /D "_68K_" /D\
 "WIN32" /D "NDEBUG" /D "_MBCS" /Fp"$(INTDIR)/StarDraw.pch" /Yu"stdafx.h"\
 /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\MacRel/
CPP_SBRS=

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

MTL=mktyplib.exe
MTL_PROJ=/nologo /D "NDEBUG" /mac 

CLEAN : 
	-@erase ".\MacRel\StarDraw.trg"
	-@erase ".\MacRel\StarDraw.exe"
	-@erase ".\MacRel\Starvw.obj"
	-@erase ".\MacRel\StarDraw.pch"
	-@erase ".\MacRel\StarDraw.obj"
	-@erase ".\MacRel\stdafx.obj"
	-@erase ".\MacRel\ipframe.obj"
	-@erase ".\MacRel\Staritm.obj"
	-@erase ".\MacRel\pendlg.obj"
	-@erase ".\MacRel\childfrm.obj"
	-@erase ".\MacRel\Stardoc.obj"
	-@erase ".\MacRel\mainfrm.obj"
	-@erase ".\MacRel\scrimac.rsc"
	-@erase ".\MacRel\StarDraw.rsc"
	-@erase ".\MacRel\StarDrawMac.hlp"

!ELSEIF  "$(CFG)" == "StarDraw - Macintosh Debug"

OUTDIR=.\MacDbg
INTDIR=.\MacDbg

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

MFILE32=mfile.exe
MFILE32_FLAGS=COPY /NOLOGO 
MFILE32_FILES= \
	"$(OUTDIR)/StarDraw.exe"

"$(OUTDIR)\StarDraw.trg" : "$(OUTDIR)" $(MFILE32_FILES)
    $(MFILE32) $(MFILE32_FLAGS) .\MacDbg\StarDraw.exe\
 "$(MFILE32_DEST):StarDraw.exe">"$(OUTDIR)\StarDraw.trg"

DOWNLOAD : "$(OUTDIR)" $(MFILE32_FILES)
    $(MFILE32) $(MFILE32_FLAGS) .\MacDbg\StarDraw.exe\
 "$(MFILE32_DEST):StarDraw.exe">"$(OUTDIR)\StarDraw.trg"

LINK32=link.exe
LINK32_FLAGS=/nologo /MAC:bundle /MAC:type="APPL" /MAC:creator="SCRI"\
 /pdb:"$(OUTDIR)/StarDraw.pdb" /debug /machine:M68K\
 /out:"$(OUTDIR)/StarDraw.exe" 
LINK32_OBJS= \
	"$(INTDIR)/stdafx.obj" \
	"$(INTDIR)/StarDraw.obj" \
	"$(INTDIR)/mainfrm.obj" \
	"$(INTDIR)/Staritm.obj" \
	"$(INTDIR)/Starvw.obj" \
	"$(INTDIR)/ipframe.obj" \
	"$(INTDIR)/pendlg.obj" \
	"$(INTDIR)/childfrm.obj" \
	"$(INTDIR)/Stardoc.obj" \
	"$(INTDIR)/scrimac.rsc" \
	"$(INTDIR)/StarDraw.rsc"

"$(OUTDIR)\StarDraw.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)/StarDraw.bsc" 
BSC32_SBRS=
MRC=mrc.exe
MRC_PROJ=/D "_68K_" /D "_MAC" /D "_DEBUG" /l 0x409 /NOLOGO 
RSC=rc.exe
RSC_PROJ=/l 0x409 /r /m /fo"$(INTDIR)/StarDraw.rsc" /d "_MAC" /d "_68K_" /d\
 "_DEBUG" 
CPP=cl.exe
CPP_PROJ=/nologo /AL /Q68s /Q68m /W3 /GX /Zi /Od /D "_WINDOWS" /D "_MAC" /D\
 "_68K_" /D "WIN32" /D "_DEBUG" /D "_MBCS" /Fp"$(INTDIR)/StarDraw.pch"\
 /Yu"stdafx.h" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\MacDbg/
CPP_SBRS=

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

MTL=mktyplib.exe
MTL_PROJ=/nologo /D "_DEBUG" /mac 

CLEAN : 
	-@erase ".\MacDbg\vc40.pdb"
	-@erase ".\MacDbg\StarDraw.pch"
	-@erase ".\MacDbg\StarDraw.pdb"
	-@erase ".\MacDbg\stdafx.obj"
	-@erase ".\MacDbg\StarDraw.obj"
	-@erase ".\MacDbg\mainfrm.obj"
	-@erase ".\MacDbg\Staritm.obj"
	-@erase ".\MacDbg\Starvw.obj"
	-@erase ".\MacDbg\ipframe.obj"
	-@erase ".\MacDbg\pendlg.obj"
	-@erase ".\MacDbg\childfrm.obj"
	-@erase ".\MacDbg\Stardoc.obj"
	-@erase ".\MacDbg\scrimac.rsc"
	-@erase ".\MacDbg\StarDraw.rsc"
	-@erase ".\MacDbg\StarDraw.trg"
	-@erase ".\MacDbg\StarDraw.exe"
	-@erase ".\MacDbg\StarDrawMac.hlp"

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\.\Release
TargetName=StarDraw
# End Custom Macros

ALL : "$(OutDir)\$(TargetName).hlp" "$(OUTDIR)\StarDraw.exe"

CLEAN : 
	-@erase "$(INTDIR)\childfrm.obj"
	-@erase "$(INTDIR)\ipframe.obj"
	-@erase "$(INTDIR)\mainfrm.obj"
	-@erase "$(INTDIR)\pendlg.obj"
	-@erase "$(INTDIR)\StarDraw.obj"
	-@erase "$(INTDIR)\StarDraw.pch"
	-@erase "$(INTDIR)\StarDraw.res"
	-@erase "$(INTDIR)\Stardoc.obj"
	-@erase "$(INTDIR)\Staritm.obj"
	-@erase "$(INTDIR)\Starvw.obj"
	-@erase "$(INTDIR)\stdafx.obj"
	-@erase "$(OUTDIR)\StarDraw.exe"
	-@erase "$(OutDir)\$(TargetName).hlp"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

F90=fl32.exe
F90_PROJ=/I "Release/" /Fo"Release/" 
F90_OBJS=.\Release/

.for{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

.f{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

.f90{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D\
 "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)/StarDraw.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/"\
 /Fd"$(INTDIR)/" /FD /c 
CPP_OBJS=.\Release/
CPP_SBRS=.

.c{$(CPP_OBJS)}.obj::
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj::
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj::
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr::
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr::
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr::
   $(CPP) $(CPP_PROJ) $<  

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)/StarDraw.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)/StarDraw.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:no\
 /pdb:"$(OUTDIR)/StarDraw.pdb" /machine:I386 /out:"$(OUTDIR)/StarDraw.exe" 
LINK32_OBJS= \
	"$(INTDIR)\childfrm.obj" \
	"$(INTDIR)\ipframe.obj" \
	"$(INTDIR)\mainfrm.obj" \
	"$(INTDIR)\pendlg.obj" \
	"$(INTDIR)\StarDraw.obj" \
	"$(INTDIR)\StarDraw.res" \
	"$(INTDIR)\Stardoc.obj" \
	"$(INTDIR)\Staritm.obj" \
	"$(INTDIR)\Starvw.obj" \
	"$(INTDIR)\stdafx.obj"

"$(OUTDIR)\StarDraw.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\.\Debug
TargetName=StarDraw
# End Custom Macros

ALL : "$(OutDir)\$(TargetName).hlp" "$(OUTDIR)\StarDraw.exe"

CLEAN : 
	-@erase "$(INTDIR)\childfrm.obj"
	-@erase "$(INTDIR)\ipframe.obj"
	-@erase "$(INTDIR)\mainfrm.obj"
	-@erase "$(INTDIR)\pendlg.obj"
	-@erase "$(INTDIR)\StarDraw.obj"
	-@erase "$(INTDIR)\StarDraw.pch"
	-@erase "$(INTDIR)\StarDraw.res"
	-@erase "$(INTDIR)\Stardoc.obj"
	-@erase "$(INTDIR)\Staritm.obj"
	-@erase "$(INTDIR)\Starvw.obj"
	-@erase "$(INTDIR)\stdafx.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(INTDIR)\vc50.pdb"
	-@erase "$(OUTDIR)\StarDraw.exe"
	-@erase "$(OUTDIR)\StarDraw.ilk"
	-@erase "$(OUTDIR)\StarDraw.pdb"
	-@erase "$(OutDir)\$(TargetName).hlp"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

F90=fl32.exe
F90_PROJ=/I "Debug/" /Fo"Debug/" 
F90_OBJS=.\Debug/

.for{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

.f{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

.f90{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)/StarDraw.pch" /Yu"stdafx.h"\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /FD /c 
CPP_OBJS=.\Debug/
CPP_SBRS=.

.c{$(CPP_OBJS)}.obj::
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj::
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj::
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr::
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr::
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr::
   $(CPP) $(CPP_PROJ) $<  

MTL=midl.exe
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)/StarDraw.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)/StarDraw.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:yes\
 /pdb:"$(OUTDIR)/StarDraw.pdb" /debug /machine:I386\
 /out:"$(OUTDIR)/StarDraw.exe" 
LINK32_OBJS= \
	"$(INTDIR)\childfrm.obj" \
	"$(INTDIR)\ipframe.obj" \
	"$(INTDIR)\mainfrm.obj" \
	"$(INTDIR)\pendlg.obj" \
	"$(INTDIR)\StarDraw.obj" \
	"$(INTDIR)\StarDraw.res" \
	"$(INTDIR)\Stardoc.obj" \
	"$(INTDIR)\Staritm.obj" \
	"$(INTDIR)\Starvw.obj" \
	"$(INTDIR)\stdafx.obj"

"$(OUTDIR)\StarDraw.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Release"

OUTDIR=.\PMacRel
INTDIR=.\PMacRel

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

MFILE32=mfile.exe
MFILE32_FLAGS=COPY /NOLOGO 
MFILE32_FILES= \
	"$(OUTDIR)/StarDraw.exe"

"$(OUTDIR)\StarDraw.trg" : "$(OUTDIR)" $(MFILE32_FILES)
    $(MFILE32) $(MFILE32_FLAGS) .\PMacRel\StarDraw.exe\
 "$(MFILE32_DEST):StarDraw.exe">"$(OUTDIR)\StarDraw.trg"

DOWNLOAD : "$(OUTDIR)" $(MFILE32_FILES)
    $(MFILE32) $(MFILE32_FLAGS) .\PMacRel\StarDraw.exe\
 "$(MFILE32_DEST):StarDraw.exe">"$(OUTDIR)\StarDraw.trg"

LINK32=link.exe
LINK32_FLAGS=/nologo /mac:bundle /mac:type="APPL" /mac:creator="SCRI"\
 /incremental:no /pdb:"$(OUTDIR)/StarDraw.pdb" /machine:MPPC\
 /out:"$(OUTDIR)/StarDraw.exe" 
LINK32_OBJS= \
	"$(INTDIR)/Starvw.obj" \
	"$(INTDIR)/childfrm.obj" \
	"$(INTDIR)/stdafx.obj" \
	"$(INTDIR)/ipframe.obj" \
	"$(INTDIR)/Stardoc.obj" \
	"$(INTDIR)/StarDraw.obj" \
	"$(INTDIR)/pendlg.obj" \
	"$(INTDIR)/Staritm.obj" \
	"$(INTDIR)/mainfrm.obj" \
	"$(INTDIR)/StarDraw.rsc" \
	"$(INTDIR)/scrimac.rsc"

"$(OUTDIR)\StarDraw.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)/StarDraw.bsc" 
BSC32_SBRS=
MRC=mrc.exe
MRC_PROJ=/D "_MPPC_" /D "_MAC" /D "NDEBUG" /l 0x409 /NOLOGO 
RSC=rc.exe
RSC_PROJ=/l 0x409 /r /m /fo"$(INTDIR)/StarDraw.rsc" /d "_MAC" /d "_MPPC_" /d\
 "NDEBUG" /d "_AFXDLL" 
CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "_MAC" /D "_MPPC_" /D "_WINDOWS" /D "WIN32"\
 /D "NDEBUG" /D "_MBCS" /D "_AFXDLL" /Fp"$(INTDIR)/StarDraw.pch" /Yu"stdafx.h"\
 /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\PMacRel/
CPP_SBRS=

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

MTL=mktyplib.exe
MTL_PROJ=/nologo /D "NDEBUG" 

CLEAN : 
	-@erase ".\PMacRel\StarDraw.trg"
	-@erase ".\PMacRel\StarDraw.exe"
	-@erase ".\PMacRel\Starvw.obj"
	-@erase ".\PMacRel\StarDraw.pch"
	-@erase ".\PMacRel\childfrm.obj"
	-@erase ".\PMacRel\stdafx.obj"
	-@erase ".\PMacRel\ipframe.obj"
	-@erase ".\PMacRel\Stardoc.obj"
	-@erase ".\PMacRel\StarDraw.obj"
	-@erase ".\PMacRel\pendlg.obj"
	-@erase ".\PMacRel\Staritm.obj"
	-@erase ".\PMacRel\mainfrm.obj"
	-@erase ".\PMacRel\StarDraw.rsc"
	-@erase ".\PMacRel\scrimac.rsc"
	-@erase ".\PMacRel\StarDrawMac.hlp"

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Debug"

OUTDIR=.\PMacDbg
INTDIR=.\PMacDbg

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

MFILE32=mfile.exe
MFILE32_FLAGS=COPY /NOLOGO 
MFILE32_FILES= \
	"$(OUTDIR)/StarDraw.exe"

"$(OUTDIR)\StarDraw.trg" : "$(OUTDIR)" $(MFILE32_FILES)
    $(MFILE32) $(MFILE32_FLAGS) .\PMacDbg\StarDraw.exe\
 "$(MFILE32_DEST):StarDraw.exe">"$(OUTDIR)\StarDraw.trg"

DOWNLOAD : "$(OUTDIR)" $(MFILE32_FILES)
    $(MFILE32) $(MFILE32_FLAGS) .\PMacDbg\StarDraw.exe\
 "$(MFILE32_DEST):StarDraw.exe">"$(OUTDIR)\StarDraw.trg"

LINK32=link.exe
LINK32_FLAGS=/nologo /mac:bundle /mac:type="APPL" /mac:creator="SCRI"\
 /incremental:yes /pdb:"$(OUTDIR)/StarDraw.pdb" /debug /machine:MPPC\
 /out:"$(OUTDIR)/StarDraw.exe" 
LINK32_OBJS= \
	"$(INTDIR)/stdafx.obj" \
	"$(INTDIR)/childfrm.obj" \
	"$(INTDIR)/mainfrm.obj" \
	"$(INTDIR)/Starvw.obj" \
	"$(INTDIR)/Stardoc.obj" \
	"$(INTDIR)/pendlg.obj" \
	"$(INTDIR)/ipframe.obj" \
	"$(INTDIR)/StarDraw.obj" \
	"$(INTDIR)/Staritm.obj" \
	"$(INTDIR)/StarDraw.rsc" \
	"$(INTDIR)/scrimac.rsc"

"$(OUTDIR)\StarDraw.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)/StarDraw.bsc" 
BSC32_SBRS=
MRC=mrc.exe
MRC_PROJ=/D "_MPPC_" /D "_MAC" /D "_DEBUG" /l 0x409 /NOLOGO 
RSC=rc.exe
RSC_PROJ=/l 0x409 /r /m /fo"$(INTDIR)/StarDraw.rsc" /d "_MAC" /d "_MPPC_" /d\
 "_DEBUG" /d "_AFXDLL" 
CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /GX /Zi /Od /D "_MAC" /D "_MPPC_" /D "_WINDOWS" /D\
 "WIN32" /D "_DEBUG" /D "_MBCS" /D "_AFXDLL" /Fp"$(INTDIR)/StarDraw.pch"\
 /Yu"stdafx.h" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\PMacDbg/
CPP_SBRS=

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

MTL=mktyplib.exe
MTL_PROJ=/nologo /D "_DEBUG" 

CLEAN : 
	-@erase ".\PMacDbg\vc40.pdb"
	-@erase ".\PMacDbg\StarDraw.pch"
	-@erase ".\PMacDbg\StarDraw.ilk"
	-@erase ".\PMacDbg\stdafx.obj"
	-@erase ".\PMacDbg\childfrm.obj"
	-@erase ".\PMacDbg\mainfrm.obj"
	-@erase ".\PMacDbg\Starvw.obj"
	-@erase ".\PMacDbg\Stardoc.obj"
	-@erase ".\PMacDbg\pendlg.obj"
	-@erase ".\PMacDbg\ipframe.obj"
	-@erase ".\PMacDbg\StarDraw.obj"
	-@erase ".\PMacDbg\Staritm.obj"
	-@erase ".\PMacDbg\StarDraw.rsc"
	-@erase ".\PMacDbg\scrimac.rsc"
	-@erase ".\PMacDbg\StarDraw.pdb"
	-@erase ".\PMacDbg\StarDraw.trg"
	-@erase ".\PMacDbg\StarDraw.exe"
	-@erase ".\PMacDbg\StarDrawMac.hlp"

!ENDIF 


!IF "$(CFG)" == "StarDraw - Macintosh Release" || "$(CFG)" ==\
 "StarDraw - Macintosh Debug" || "$(CFG)" == "StarDraw - Win32 Release" ||\
 "$(CFG)" == "StarDraw - Win32 Debug" || "$(CFG)" ==\
 "StarDraw - Power Macintosh Release" || "$(CFG)" ==\
 "StarDraw - Power Macintosh Debug"
SOURCE=.\childfrm.cpp

!IF  "$(CFG)" == "StarDraw - Macintosh Release"

"$(INTDIR)\childfrm.obj" : $(SOURCE) $(DEP_CPP_CHILD) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

!ELSEIF  "$(CFG)" == "StarDraw - Macintosh Debug"

"$(INTDIR)\childfrm.obj" : $(SOURCE) $(DEP_CPP_CHILD) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

"$(INTDIR)\vc40.pdb" : $(SOURCE) $(DEP_CPP_CHILD) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Release"

DEP_CPP_CHILD=\
	".\childfrm.h"\
	".\StarDraw.h"\
	".\stdafx.h"\
	

"$(INTDIR)\childfrm.obj" : $(SOURCE) $(DEP_CPP_CHILD) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"


!ELSEIF  "$(CFG)" == "StarDraw - Win32 Debug"

DEP_CPP_CHILD=\
	".\childfrm.h"\
	".\StarDraw.h"\
	".\stdafx.h"\
	

"$(INTDIR)\childfrm.obj" : $(SOURCE) $(DEP_CPP_CHILD) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"


!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Release"

"$(INTDIR)\childfrm.obj" : $(SOURCE) $(DEP_CPP_CHILD) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Debug"

DEP_CPP_CHILD=\
	".\childfrm.h"\
	".\StarDraw.h"\
	".\stdafx.h"\
	

"$(INTDIR)\childfrm.obj" : $(SOURCE) $(DEP_CPP_CHILD) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

"$(INTDIR)\vc40.pdb" : $(SOURCE) $(DEP_CPP_CHILD) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

!ENDIF 

SOURCE=.\ipframe.cpp

!IF  "$(CFG)" == "StarDraw - Macintosh Release"

"$(INTDIR)\ipframe.obj" : $(SOURCE) $(DEP_CPP_IPFRA) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

!ELSEIF  "$(CFG)" == "StarDraw - Macintosh Debug"

"$(INTDIR)\ipframe.obj" : $(SOURCE) $(DEP_CPP_IPFRA) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

"$(INTDIR)\vc40.pdb" : $(SOURCE) $(DEP_CPP_IPFRA) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Release"

DEP_CPP_IPFRA=\
	".\ipframe.h"\
	".\StarDraw.h"\
	".\stdafx.h"\
	

"$(INTDIR)\ipframe.obj" : $(SOURCE) $(DEP_CPP_IPFRA) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"


!ELSEIF  "$(CFG)" == "StarDraw - Win32 Debug"

DEP_CPP_IPFRA=\
	".\ipframe.h"\
	".\StarDraw.h"\
	".\stdafx.h"\
	

"$(INTDIR)\ipframe.obj" : $(SOURCE) $(DEP_CPP_IPFRA) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"


!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Release"

"$(INTDIR)\ipframe.obj" : $(SOURCE) $(DEP_CPP_IPFRA) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Debug"

DEP_CPP_IPFRA=\
	".\ipframe.h"\
	".\StarDraw.h"\
	".\stdafx.h"\
	

"$(INTDIR)\ipframe.obj" : $(SOURCE) $(DEP_CPP_IPFRA) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

"$(INTDIR)\vc40.pdb" : $(SOURCE) $(DEP_CPP_IPFRA) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

!ENDIF 

SOURCE=.\mainfrm.cpp

!IF  "$(CFG)" == "StarDraw - Macintosh Release"

"$(INTDIR)\mainfrm.obj" : $(SOURCE) $(DEP_CPP_MAINF) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

!ELSEIF  "$(CFG)" == "StarDraw - Macintosh Debug"

"$(INTDIR)\mainfrm.obj" : $(SOURCE) $(DEP_CPP_MAINF) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

"$(INTDIR)\vc40.pdb" : $(SOURCE) $(DEP_CPP_MAINF) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Release"

DEP_CPP_MAINF=\
	".\mainfrm.h"\
	".\StarDraw.h"\
	".\stdafx.h"\
	

"$(INTDIR)\mainfrm.obj" : $(SOURCE) $(DEP_CPP_MAINF) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"


!ELSEIF  "$(CFG)" == "StarDraw - Win32 Debug"

DEP_CPP_MAINF=\
	".\mainfrm.h"\
	".\StarDraw.h"\
	".\stdafx.h"\
	

"$(INTDIR)\mainfrm.obj" : $(SOURCE) $(DEP_CPP_MAINF) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"


!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Release"

"$(INTDIR)\mainfrm.obj" : $(SOURCE) $(DEP_CPP_MAINF) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Debug"

DEP_CPP_MAINF=\
	".\mainfrm.h"\
	".\StarDraw.h"\
	".\stdafx.h"\
	

"$(INTDIR)\mainfrm.obj" : $(SOURCE) $(DEP_CPP_MAINF) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

"$(INTDIR)\vc40.pdb" : $(SOURCE) $(DEP_CPP_MAINF) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

!ENDIF 

SOURCE=.\pendlg.cpp

!IF  "$(CFG)" == "StarDraw - Macintosh Release"

"$(INTDIR)\pendlg.obj" : $(SOURCE) $(DEP_CPP_PENDL) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

!ELSEIF  "$(CFG)" == "StarDraw - Macintosh Debug"

"$(INTDIR)\pendlg.obj" : $(SOURCE) $(DEP_CPP_PENDL) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

"$(INTDIR)\vc40.pdb" : $(SOURCE) $(DEP_CPP_PENDL) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Release"

DEP_CPP_PENDL=\
	".\pendlg.h"\
	".\StarDraw.h"\
	".\stdafx.h"\
	

"$(INTDIR)\pendlg.obj" : $(SOURCE) $(DEP_CPP_PENDL) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"


!ELSEIF  "$(CFG)" == "StarDraw - Win32 Debug"

DEP_CPP_PENDL=\
	".\pendlg.h"\
	".\StarDraw.h"\
	".\stdafx.h"\
	

"$(INTDIR)\pendlg.obj" : $(SOURCE) $(DEP_CPP_PENDL) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"


!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Release"

"$(INTDIR)\pendlg.obj" : $(SOURCE) $(DEP_CPP_PENDL) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Debug"

DEP_CPP_PENDL=\
	".\pendlg.h"\
	".\StarDraw.h"\
	".\stdafx.h"\
	

"$(INTDIR)\pendlg.obj" : $(SOURCE) $(DEP_CPP_PENDL) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

"$(INTDIR)\vc40.pdb" : $(SOURCE) $(DEP_CPP_PENDL) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

!ENDIF 

SOURCE=.\readme.txt
SOURCE=.\StarDraw.cpp

!IF  "$(CFG)" == "StarDraw - Macintosh Release"

"$(INTDIR)\StarDraw.obj" : $(SOURCE) $(DEP_CPP_Star) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

!ELSEIF  "$(CFG)" == "StarDraw - Macintosh Debug"

"$(INTDIR)\StarDraw.obj" : $(SOURCE) $(DEP_CPP_Star) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

"$(INTDIR)\vc40.pdb" : $(SOURCE) $(DEP_CPP_Star) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Release"

DEP_CPP_Star=\
	".\childfrm.h"\
	".\ipframe.h"\
	".\mainfrm.h"\
	".\StarDraw.h"\
	".\Stardoc.h"\
	".\Starvw.h"\
	".\stdafx.h"\
	

"$(INTDIR)\StarDraw.obj" : $(SOURCE) $(DEP_CPP_Star) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"


!ELSEIF  "$(CFG)" == "StarDraw - Win32 Debug"

DEP_CPP_Star=\
	".\childfrm.h"\
	".\ipframe.h"\
	".\mainfrm.h"\
	".\StarDraw.h"\
	".\Stardoc.h"\
	".\Starvw.h"\
	".\stdafx.h"\
	

"$(INTDIR)\StarDraw.obj" : $(SOURCE) $(DEP_CPP_Star) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"


!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Release"

"$(INTDIR)\StarDraw.obj" : $(SOURCE) $(DEP_CPP_Star) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Debug"

DEP_CPP_Star=\
	".\childfrm.h"\
	".\ipframe.h"\
	".\mainfrm.h"\
	".\StarDraw.h"\
	".\Stardoc.h"\
	".\Starvw.h"\
	".\stdafx.h"\
	

"$(INTDIR)\StarDraw.obj" : $(SOURCE) $(DEP_CPP_Star) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

"$(INTDIR)\vc40.pdb" : $(SOURCE) $(DEP_CPP_Star) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

!ENDIF 

SOURCE=.\hlp\StarDraw.hpj

!IF  "$(CFG)" == "StarDraw - Macintosh Release"

!ELSEIF  "$(CFG)" == "StarDraw - Macintosh Debug"

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Release"

OutDir=.\.\Release
TargetName=StarDraw
InputPath=.\hlp\StarDraw.hpj

"$(OutDir)\$(TargetName).hlp"	 : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	makehelp.bat

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Debug"

OutDir=.\.\Debug
TargetName=StarDraw
InputPath=.\hlp\StarDraw.hpj

"$(OutDir)\$(TargetName).hlp"	 : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	makehelp.bat

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Release"

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Debug"

!ENDIF 

SOURCE=.\StarDraw.rc

!IF  "$(CFG)" == "StarDraw - Macintosh Release"

"$(INTDIR)\StarDraw.rsc" : $(SOURCE) $(DEP_RSC_StarB) "$(INTDIR)"
   $(RSC) $(RSC_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "StarDraw - Macintosh Debug"

"$(INTDIR)\StarDraw.rsc" : $(SOURCE) $(DEP_RSC_StarB) "$(INTDIR)"
   $(RSC) $(RSC_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "StarDraw - Win32 Release"

DEP_RSC_StarB=\
	".\res\itoolbar.bmp"\
	".\res\StarDraw.ico"\
	".\res\StarDraw.rc2"\
	".\res\Stardoc.ico"\
	".\res\toolbar.bmp"\
	

"$(INTDIR)\StarDraw.res" : $(SOURCE) $(DEP_RSC_StarB) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "StarDraw - Win32 Debug"

DEP_RSC_StarB=\
	".\res\itoolbar.bmp"\
	".\res\StarDraw.ico"\
	".\res\StarDraw.rc2"\
	".\res\Stardoc.ico"\
	".\res\toolbar.bmp"\
	

"$(INTDIR)\StarDraw.res" : $(SOURCE) $(DEP_RSC_StarB) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Release"

"$(INTDIR)\StarDraw.rsc" : $(SOURCE) $(DEP_RSC_StarB) "$(INTDIR)"
   $(RSC) $(RSC_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Debug"

DEP_RSC_StarB=\
	".\res\itoolbar.bmp"\
	".\res\StarDraw.ico"\
	".\res\StarDraw.rc2"\
	".\res\Stardoc.ico"\
	".\res\toolbar.bmp"\
	

"$(INTDIR)\StarDraw.rsc" : $(SOURCE) $(DEP_RSC_StarB) "$(INTDIR)"
   $(RSC) $(RSC_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\Stardoc.cpp

!IF  "$(CFG)" == "StarDraw - Macintosh Release"

"$(INTDIR)\Stardoc.obj" : $(SOURCE) $(DEP_CPP_StarD) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

!ELSEIF  "$(CFG)" == "StarDraw - Macintosh Debug"

"$(INTDIR)\Stardoc.obj" : $(SOURCE) $(DEP_CPP_StarD) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

"$(INTDIR)\vc40.pdb" : $(SOURCE) $(DEP_CPP_StarD) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Release"

DEP_CPP_StarD=\
	".\pendlg.h"\
	".\StarDraw.h"\
	".\Stardoc.h"\
	".\Staritm.h"\
	".\Starvw.h"\
	".\stdafx.h"\
	

"$(INTDIR)\Stardoc.obj" : $(SOURCE) $(DEP_CPP_StarD) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"


!ELSEIF  "$(CFG)" == "StarDraw - Win32 Debug"

DEP_CPP_StarD=\
	".\pendlg.h"\
	".\StarDraw.h"\
	".\Stardoc.h"\
	".\Staritm.h"\
	".\Starvw.h"\
	".\stdafx.h"\
	

"$(INTDIR)\Stardoc.obj" : $(SOURCE) $(DEP_CPP_StarD) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"


!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Release"

"$(INTDIR)\Stardoc.obj" : $(SOURCE) $(DEP_CPP_StarD) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Debug"

DEP_CPP_StarD=\
	".\pendlg.h"\
	".\StarDraw.h"\
	".\Stardoc.h"\
	".\Staritm.h"\
	".\Starvw.h"\
	".\stdafx.h"\
	

"$(INTDIR)\Stardoc.obj" : $(SOURCE) $(DEP_CPP_StarD) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

"$(INTDIR)\vc40.pdb" : $(SOURCE) $(DEP_CPP_StarD) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

!ENDIF 

SOURCE=.\Staritm.cpp

!IF  "$(CFG)" == "StarDraw - Macintosh Release"

"$(INTDIR)\Staritm.obj" : $(SOURCE) $(DEP_CPP_StarI) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

!ELSEIF  "$(CFG)" == "StarDraw - Macintosh Debug"

"$(INTDIR)\Staritm.obj" : $(SOURCE) $(DEP_CPP_StarI) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

"$(INTDIR)\vc40.pdb" : $(SOURCE) $(DEP_CPP_StarI) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Release"

DEP_CPP_StarI=\
	".\StarDraw.h"\
	".\Stardoc.h"\
	".\Staritm.h"\
	".\stdafx.h"\
	

"$(INTDIR)\Staritm.obj" : $(SOURCE) $(DEP_CPP_StarI) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"


!ELSEIF  "$(CFG)" == "StarDraw - Win32 Debug"

DEP_CPP_StarI=\
	".\StarDraw.h"\
	".\Stardoc.h"\
	".\Staritm.h"\
	".\stdafx.h"\
	

"$(INTDIR)\Staritm.obj" : $(SOURCE) $(DEP_CPP_StarI) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"


!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Release"

"$(INTDIR)\Staritm.obj" : $(SOURCE) $(DEP_CPP_StarI) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Debug"

DEP_CPP_StarI=\
	".\StarDraw.h"\
	".\Stardoc.h"\
	".\Staritm.h"\
	".\stdafx.h"\
	

"$(INTDIR)\Staritm.obj" : $(SOURCE) $(DEP_CPP_StarI) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

"$(INTDIR)\vc40.pdb" : $(SOURCE) $(DEP_CPP_StarI) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

!ENDIF 

SOURCE=.\Starvw.cpp

!IF  "$(CFG)" == "StarDraw - Macintosh Release"

"$(INTDIR)\Starvw.obj" : $(SOURCE) $(DEP_CPP_StarV) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

!ELSEIF  "$(CFG)" == "StarDraw - Macintosh Debug"

"$(INTDIR)\Starvw.obj" : $(SOURCE) $(DEP_CPP_StarV) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

"$(INTDIR)\vc40.pdb" : $(SOURCE) $(DEP_CPP_StarV) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Release"

DEP_CPP_StarV=\
	".\StarDraw.h"\
	".\Stardoc.h"\
	".\Starvw.h"\
	".\stdafx.h"\
	

"$(INTDIR)\Starvw.obj" : $(SOURCE) $(DEP_CPP_StarV) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"


!ELSEIF  "$(CFG)" == "StarDraw - Win32 Debug"

DEP_CPP_StarV=\
	".\StarDraw.h"\
	".\Stardoc.h"\
	".\Starvw.h"\
	".\stdafx.h"\
	

"$(INTDIR)\Starvw.obj" : $(SOURCE) $(DEP_CPP_StarV) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"


!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Release"

"$(INTDIR)\Starvw.obj" : $(SOURCE) $(DEP_CPP_StarV) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Debug"

DEP_CPP_StarV=\
	".\StarDraw.h"\
	".\Stardoc.h"\
	".\Starvw.h"\
	".\stdafx.h"\
	

"$(INTDIR)\Starvw.obj" : $(SOURCE) $(DEP_CPP_StarV) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

"$(INTDIR)\vc40.pdb" : $(SOURCE) $(DEP_CPP_StarV) "$(INTDIR)"\
 "$(INTDIR)\StarDraw.pch"

!ENDIF 

SOURCE=.\hlp\scrimac.hpj

!IF  "$(CFG)" == "StarDraw - Macintosh Release"

OutDir=.\MacRel
TargetName=StarDraw
InputPath=.\hlp\scrimac.hpj
RemoteTargetPath=machd:StarDraw

".\$(OutDir)\$(TargetName)Mac.hlp"	 : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	makehelp.bat MAC ":$(REMOTETARGETPATH) Help"

!ELSEIF  "$(CFG)" == "StarDraw - Macintosh Debug"

OutDir=.\MacDbg
TargetName=StarDraw
InputPath=.\hlp\scrimac.hpj
RemoteTargetPath=machd:debug:Starle

".\$(OutDir)\$(TargetName)Mac.hlp"	 : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	makehelp.bat MAC ":$(REMOTETARGETPATH) Help"

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Release"

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Debug"

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Release"

OutDir=.\PMacRel
TargetName=StarDraw
InputPath=.\hlp\scrimac.hpj
RemoteTargetPath=machd:releasep

".\$(OutDir)\$(TargetName)Mac.hlp"	 : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	makehelp.bat MAC ":$(REMOTETARGETPATH) Help"

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Debug"

OutDir=.\PMacDbg
TargetName=StarDraw
InputPath=.\hlp\scrimac.hpj
RemoteTargetPath=machd:debug:Starle

".\$(OutDir)\$(TargetName)Mac.hlp"	 : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	makehelp.bat MAC ":$(REMOTETARGETPATH) Help"

!ENDIF 

SOURCE=.\scrimac.r

!IF  "$(CFG)" == "StarDraw - Macintosh Release"

"$(INTDIR)\scrimac.rsc" : $(SOURCE) "$(INTDIR)"
   $(MRC) /o"$(INTDIR)/scrimac.rsc" /D "_68K_" /D "_MAC" /D "NDEBUG" /l 0x409\
 /NOLOGO $(SOURCE)


!ELSEIF  "$(CFG)" == "StarDraw - Macintosh Debug"

"$(INTDIR)\scrimac.rsc" : $(SOURCE) "$(INTDIR)"
   $(MRC) /o"$(INTDIR)/scrimac.rsc" /D "_68K_" /D "_MAC" /D "_DEBUG" /l 0x409\
 /NOLOGO $(SOURCE)


!ELSEIF  "$(CFG)" == "StarDraw - Win32 Release"

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Debug"

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Release"

"$(INTDIR)\scrimac.rsc" : $(SOURCE) "$(INTDIR)"
   $(MRC) /o"$(INTDIR)/scrimac.rsc" /D "_MPPC_" /D "_MAC" /D "NDEBUG" /l 0x409\
 /NOLOGO $(SOURCE)


!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Debug"

"$(INTDIR)\scrimac.rsc" : $(SOURCE) "$(INTDIR)"
   $(MRC) /o"$(INTDIR)/scrimac.rsc" /D "_MPPC_" /D "_MAC" /D "_DEBUG" /l 0x409\
 /NOLOGO $(SOURCE)


!ENDIF 

SOURCE=.\stdafx.cpp

!IF  "$(CFG)" == "StarDraw - Macintosh Release"

"$(INTDIR)\stdafx.obj" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\StarDraw.pch" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "StarDraw - Macintosh Debug"

"$(INTDIR)\stdafx.obj" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\vc40.pdb" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\StarDraw.pch" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Release"

DEP_CPP_STDAF=\
	".\stdafx.h"\
	

"$(INTDIR)\stdafx.obj"	"$(INTDIR)\StarDraw.pch" : $(SOURCE) $(DEP_CPP_STDAF)\
 "$(INTDIR)"
	$(CPP) /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D\
 "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)/StarDraw.pch" /Yc"stdafx.h" /Fo"$(INTDIR)/"\
 /Fd"$(INTDIR)/" /FD /c $(SOURCE)


!ELSEIF  "$(CFG)" == "StarDraw - Win32 Debug"

DEP_CPP_STDAF=\
	".\stdafx.h"\
	

"$(INTDIR)\stdafx.obj"	"$(INTDIR)\StarDraw.pch" : $(SOURCE) $(DEP_CPP_STDAF)\
 "$(INTDIR)"
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)/StarDraw.pch" /Yc"stdafx.h"\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /FD /c $(SOURCE)


!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Release"

"$(INTDIR)\stdafx.obj" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\StarDraw.pch" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Debug"

DEP_CPP_STDAF=\
	".\stdafx.h"\
	
BuildCmds= \
	$(CPP) /nologo /MDd /W3 /GX /Zi /Od /D "_MAC" /D "_MPPC_" /D "_WINDOWS" /D\
 "WIN32" /D "_DEBUG" /D "_MBCS" /D "_AFXDLL" /Fp"$(INTDIR)/StarDraw.pch"\
 /Yc"stdafx.h" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\stdafx.obj" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\vc40.pdb" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\StarDraw.pch" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

!ENDIF 

SOURCE=.\childfrm.h
SOURCE=.\ipframe.h
SOURCE=.\mainfrm.h
SOURCE=.\pendlg.h
SOURCE=.\StarDraw.h
SOURCE=.\Stardoc.h
SOURCE=.\Staritm.h
SOURCE=.\Starvw.h
SOURCE=.\stdafx.h
SOURCE=.\res\itoolbar.bmp
SOURCE=.\res\StarDraw.ico
SOURCE=.\res\StarDraw.rc2
SOURCE=.\res\Stardoc.ico
SOURCE=.\res\toolbar.bmp

!ENDIF 

