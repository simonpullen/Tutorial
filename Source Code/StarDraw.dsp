# Microsoft Developer Studio Project File - Name="StarDraw" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 50004
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101
# TARGTYPE "Power Macintosh Application" 0x0401
# TARGTYPE "Macintosh Application" 0x0301

CFG=StarDraw - Macintosh Release
!MESSAGE "StarDraw - Macintosh Release" (based on "Macintosh Application")
!MESSAGE "StarDraw - Macintosh Debug" (based on "Macintosh Application")
!MESSAGE "StarDraw - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "StarDraw - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE "StarDraw - Power Macintosh Release" (based on\
 "Power Macintosh Application")
!MESSAGE "StarDraw - Power Macintosh Debug" (based on\
 "Power Macintosh Application")

# Begin Project
# PROP Scc_ProjName ""

!IF  "$(CFG)" == "StarDraw - Macintosh Release"

# PROP BASE Use_MFC 5
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir ".\MacRel"
# PROP BASE Intermediate_Dir ".\MacRel"
# PROP BASE Target_Dir ""
# PROP Use_MFC 5
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\MacRel"
# PROP Intermediate_Dir ".\MacRel"
# PROP Target_Dir ""
MFILE32=mfile.exe
# ADD BASE MFILE32 COPY /NOLOGO
# ADD MFILE32 COPY /NOLOGO
LINK32=link.exe
# ADD BASE LINK32 /nologo /MAC:bundle /machine:M68K
# ADD LINK32 /nologo /MAC:bundle /MAC:creator="SCRI" /machine:M68K
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
MRC=mrc.exe
# ADD BASE MRC /D "_68K_" /D "_MAC" /D "NDEBUG" /NOLOGO
# ADD MRC /D "_68K_" /D "_MAC" /D "NDEBUG" /NOLOGO
RSC=rc.exe
# ADD BASE RSC /l 0x409 /r /d "_MAC" /d "_68K_" /d "NDEBUG"
# ADD RSC /l 0x409 /r /d "_MAC" /d "_68K_" /d "NDEBUG"
CPP=cl.exe
# ADD BASE CPP /nologo /AL /Q68s /W3 /GX /O2 /D "_WINDOWS" /D "_MAC" /D "_68K_" /D "WIN32" /D "NDEBUG" /D "_MBCS" /Yu"stdafx.h" /c
# ADD CPP /nologo /AL /Q68s /W3 /GX /O2 /D "_WINDOWS" /D "_MAC" /D "_68K_" /D "WIN32" /D "NDEBUG" /D "_MBCS" /Yu"stdafx.h" /c
MTL=mktyplib.exe
# ADD BASE MTL /nologo /D "NDEBUG" /mac
# ADD MTL /nologo /D "NDEBUG" /mac

!ELSEIF  "$(CFG)" == "StarDraw - Macintosh Debug"

# PROP BASE Use_MFC 5
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir ".\MacDbg"
# PROP BASE Intermediate_Dir ".\MacDbg"
# PROP BASE Target_Dir ""
# PROP Use_MFC 5
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ".\MacDbg"
# PROP Intermediate_Dir ".\MacDbg"
# PROP Target_Dir ""
MFILE32=mfile.exe
# ADD BASE MFILE32 COPY /NOLOGO
# ADD MFILE32 COPY /NOLOGO
LINK32=link.exe
# ADD BASE LINK32 /nologo /MAC:bundle /debug /machine:M68K
# ADD LINK32 /nologo /MAC:bundle /MAC:creator="SCRI" /debug /machine:M68K
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
MRC=mrc.exe
# ADD BASE MRC /D "_68K_" /D "_MAC" /D "_DEBUG" /NOLOGO
# ADD MRC /D "_68K_" /D "_MAC" /D "_DEBUG" /NOLOGO
RSC=rc.exe
# ADD BASE RSC /l 0x409 /r /d "_MAC" /d "_68K_" /d "_DEBUG"
# ADD RSC /l 0x409 /r /d "_MAC" /d "_68K_" /d "_DEBUG"
CPP=cl.exe
# ADD BASE CPP /nologo /AL /Q68s /Q68m /W3 /GX /Zi /Od /D "_WINDOWS" /D "_MAC" /D "_68K_" /D "WIN32" /D "_DEBUG" /D "_MBCS" /Yu"stdafx.h" /c
# ADD CPP /nologo /AL /Q68s /Q68m /W3 /GX /Zi /Od /D "_WINDOWS" /D "_MAC" /D "_68K_" /D "WIN32" /D "_DEBUG" /D "_MBCS" /Yu"stdafx.h" /c
MTL=mktyplib.exe
# ADD BASE MTL /nologo /D "_DEBUG" /mac
# ADD MTL /nologo /D "_DEBUG" /mac

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Release"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir ".\Release"
# PROP BASE Intermediate_Dir ".\Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\Release"
# PROP Intermediate_Dir ".\Release"
# PROP Target_Dir ""
F90=fl32.exe
# ADD BASE F90 /I "Release/"
# ADD F90 /I "Release/"
CPP=cl.exe
# ADD BASE CPP /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /c
# ADD CPP /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /FD /c
MTL=midl.exe
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
RSC=rc.exe
# ADD BASE RSC /l 0x409 /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x409 /d "NDEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /machine:I386
# ADD LINK32 /nologo /subsystem:windows /machine:I386

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Debug"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir ".\Debug"
# PROP BASE Intermediate_Dir ".\Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ".\Debug"
# PROP Intermediate_Dir ".\Debug"
# PROP Target_Dir ""
F90=fl32.exe
# ADD BASE F90 /I "Debug/"
# ADD F90 /I "Debug/"
CPP=cl.exe
# ADD BASE CPP /nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /c
# ADD CPP /nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /FD /c
MTL=midl.exe
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
RSC=rc.exe
# ADD BASE RSC /l 0x409 /d "_DEBUG" /d "_AFXDLL"
# ADD RSC /l 0x409 /d "_DEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /debug /machine:I386
# ADD LINK32 /nologo /subsystem:windows /debug /machine:I386

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Release"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir ".\PMacRel"
# PROP BASE Intermediate_Dir ".\PMacRel"
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\PMacRel"
# PROP Intermediate_Dir ".\PMacRel"
# PROP Target_Dir ""
MFILE32=mfile.exe
# ADD BASE MFILE32 COPY /NOLOGO
# ADD MFILE32 COPY /NOLOGO
LINK32=link.exe
# ADD BASE LINK32 /nologo /mac:bundle /machine:MPPC
# ADD LINK32 /nologo /mac:bundle /mac:creator="SCRI" /machine:MPPC
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
MRC=mrc.exe
# ADD BASE MRC /D "_MPPC_" /D "_MAC" /D "NDEBUG" /NOLOGO
# ADD MRC /D "_MPPC_" /D "_MAC" /D "NDEBUG" /NOLOGO
RSC=rc.exe
# ADD BASE RSC /l 0x409 /r /d "_MAC" /d "_MPPC_" /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x409 /r /d "_MAC" /d "_MPPC_" /d "NDEBUG" /d "_AFXDLL"
CPP=cl.exe
# ADD BASE CPP /nologo /MD /W3 /GX /O2 /D "_MAC" /D "_MPPC_" /D "_WINDOWS" /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_AFXDLL" /Yu"stdafx.h" /c
# ADD CPP /nologo /MD /W3 /GX /O2 /D "_MAC" /D "_MPPC_" /D "_WINDOWS" /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_AFXDLL" /Yu"stdafx.h" /c
MTL=mktyplib.exe
# ADD BASE MTL /nologo /D "NDEBUG"
# ADD MTL /nologo /D "NDEBUG"

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Debug"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir ".\PMacDbg"
# PROP BASE Intermediate_Dir ".\PMacDbg"
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ".\PMacDbg"
# PROP Intermediate_Dir ".\PMacDbg"
# PROP Target_Dir ""
MFILE32=mfile.exe
# ADD BASE MFILE32 COPY /NOLOGO
# ADD MFILE32 COPY /NOLOGO
LINK32=link.exe
# ADD BASE LINK32 /nologo /mac:bundle /debug /machine:MPPC
# ADD LINK32 /nologo /mac:bundle /mac:creator="SCRI" /debug /machine:MPPC
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
MRC=mrc.exe
# ADD BASE MRC /D "_MPPC_" /D "_MAC" /D "_DEBUG" /NOLOGO
# ADD MRC /D "_MPPC_" /D "_MAC" /D "_DEBUG" /NOLOGO
RSC=rc.exe
# ADD BASE RSC /l 0x409 /r /d "_MAC" /d "_MPPC_" /d "_DEBUG" /d "_AFXDLL"
# ADD RSC /l 0x409 /r /d "_MAC" /d "_MPPC_" /d "_DEBUG" /d "_AFXDLL"
CPP=cl.exe
# ADD BASE CPP /nologo /MDd /W3 /GX /Zi /Od /D "_MAC" /D "_MPPC_" /D "_WINDOWS" /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_AFXDLL" /Yu"stdafx.h" /c
# ADD CPP /nologo /MDd /W3 /GX /Zi /Od /D "_MAC" /D "_MPPC_" /D "_WINDOWS" /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_AFXDLL" /Yu"stdafx.h" /c
MTL=mktyplib.exe
# ADD BASE MTL /nologo /D "_DEBUG"
# ADD MTL /nologo /D "_DEBUG"

!ENDIF 

# Begin Target

# Name "StarDraw - Macintosh Release"
# Name "StarDraw - Macintosh Debug"
# Name "StarDraw - Win32 Release"
# Name "StarDraw - Win32 Debug"
# Name "StarDraw - Power Macintosh Release"
# Name "StarDraw - Power Macintosh Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;hpj;bat;for;f90"
# Begin Source File

SOURCE=.\childfrm.cpp

!IF  "$(CFG)" == "StarDraw - Macintosh Release"

!ELSEIF  "$(CFG)" == "StarDraw - Macintosh Debug"

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Release"

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Debug"

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Release"

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Debug"

DEP_CPP_CHILD=\
	".\childfrm.h"\
	".\StarDraw.h"\
	".\stdafx.h"\
	

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\ipframe.cpp

!IF  "$(CFG)" == "StarDraw - Macintosh Release"

!ELSEIF  "$(CFG)" == "StarDraw - Macintosh Debug"

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Release"

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Debug"

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Release"

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Debug"

DEP_CPP_IPFRA=\
	".\ipframe.h"\
	".\StarDraw.h"\
	".\stdafx.h"\
	

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\mainfrm.cpp

!IF  "$(CFG)" == "StarDraw - Macintosh Release"

!ELSEIF  "$(CFG)" == "StarDraw - Macintosh Debug"

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Release"

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Debug"

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Release"

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Debug"

DEP_CPP_MAINF=\
	".\mainfrm.h"\
	".\StarDraw.h"\
	".\stdafx.h"\
	

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\pendlg.cpp

!IF  "$(CFG)" == "StarDraw - Macintosh Release"

!ELSEIF  "$(CFG)" == "StarDraw - Macintosh Debug"

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Release"

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Debug"

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Release"

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Debug"

DEP_CPP_PENDL=\
	".\pendlg.h"\
	".\StarDraw.h"\
	".\stdafx.h"\
	

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\readme.txt
# End Source File
# Begin Source File

SOURCE=.\StarDraw.cpp

!IF  "$(CFG)" == "StarDraw - Macintosh Release"

!ELSEIF  "$(CFG)" == "StarDraw - Macintosh Debug"

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Release"

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Debug"

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Release"

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Debug"

DEP_CPP_Star=\
	".\childfrm.h"\
	".\ipframe.h"\
	".\mainfrm.h"\
	".\StarDraw.h"\
	".\Stardoc.h"\
	".\Starvw.h"\
	".\stdafx.h"\
	

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\hlp\StarDraw.hpj

!IF  "$(CFG)" == "StarDraw - Macintosh Release"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "StarDraw - Macintosh Debug"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Release"

# Begin Custom Build - Making help file...
OutDir=.\.\Release
TargetName=StarDraw
InputPath=.\hlp\StarDraw.hpj

"$(OutDir)\$(TargetName).hlp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	makehelp.bat

# End Custom Build

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Debug"

# Begin Custom Build - Making help file...
OutDir=.\.\Debug
TargetName=StarDraw
InputPath=.\hlp\StarDraw.hpj

"$(OutDir)\$(TargetName).hlp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	makehelp.bat

# End Custom Build

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Release"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Debug"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\StarDraw.rc

!IF  "$(CFG)" == "StarDraw - Macintosh Release"

!ELSEIF  "$(CFG)" == "StarDraw - Macintosh Debug"

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Release"

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Debug"

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Release"

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Debug"

DEP_RSC_StarB=\
	".\res\itoolbar.bmp"\
	".\res\StarDraw.ico"\
	".\res\StarDraw.rc2"\
	".\res\Stardoc.ico"\
	".\res\toolbar.bmp"\
	

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Stardoc.cpp

!IF  "$(CFG)" == "StarDraw - Macintosh Release"

!ELSEIF  "$(CFG)" == "StarDraw - Macintosh Debug"

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Release"

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Debug"

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Release"

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Debug"

DEP_CPP_StarD=\
	".\pendlg.h"\
	".\StarDraw.h"\
	".\Stardoc.h"\
	".\Staritm.h"\
	".\Starvw.h"\
	".\stdafx.h"\
	

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Staritm.cpp

!IF  "$(CFG)" == "StarDraw - Macintosh Release"

!ELSEIF  "$(CFG)" == "StarDraw - Macintosh Debug"

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Release"

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Debug"

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Release"

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Debug"

DEP_CPP_StarI=\
	".\StarDraw.h"\
	".\Stardoc.h"\
	".\Staritm.h"\
	".\stdafx.h"\
	

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Starvw.cpp

!IF  "$(CFG)" == "StarDraw - Macintosh Release"

!ELSEIF  "$(CFG)" == "StarDraw - Macintosh Debug"

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Release"

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Debug"

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Release"

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Debug"

DEP_CPP_StarV=\
	".\StarDraw.h"\
	".\Stardoc.h"\
	".\Starvw.h"\
	".\stdafx.h"\
	

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\hlp\scrimac.hpj

!IF  "$(CFG)" == "StarDraw - Macintosh Release"

# Begin Custom Build - Making help file...
OutDir=.\MacRel
TargetName=StarDraw
InputPath=.\hlp\scrimac.hpj
RemoteTargetPath=machd:StarDraw

".\$(OutDir)\$(TargetName)Mac.hlp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	makehelp.bat MAC ":$(REMOTETARGETPATH) Help"

# End Custom Build

!ELSEIF  "$(CFG)" == "StarDraw - Macintosh Debug"

# Begin Custom Build - Making help file...
OutDir=.\MacDbg
TargetName=StarDraw
InputPath=.\hlp\scrimac.hpj
RemoteTargetPath=machd:debug:Starle

".\$(OutDir)\$(TargetName)Mac.hlp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	makehelp.bat MAC ":$(REMOTETARGETPATH) Help"

# End Custom Build

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Release"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Debug"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Release"

# Begin Custom Build - Making help file...
OutDir=.\PMacRel
TargetName=StarDraw
InputPath=.\hlp\scrimac.hpj
RemoteTargetPath=machd:releasep

".\$(OutDir)\$(TargetName)Mac.hlp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	makehelp.bat MAC ":$(REMOTETARGETPATH) Help"

# End Custom Build

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Debug"

# Begin Custom Build - Making help file...
OutDir=.\PMacDbg
TargetName=StarDraw
InputPath=.\hlp\scrimac.hpj
RemoteTargetPath=machd:debug:Starle

".\$(OutDir)\$(TargetName)Mac.hlp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	makehelp.bat MAC ":$(REMOTETARGETPATH) Help"

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\scrimac.r

!IF  "$(CFG)" == "StarDraw - Macintosh Release"

!ELSEIF  "$(CFG)" == "StarDraw - Macintosh Debug"

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Release"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Debug"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Release"

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\stdafx.cpp

!IF  "$(CFG)" == "StarDraw - Macintosh Release"

!ELSEIF  "$(CFG)" == "StarDraw - Macintosh Debug"

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Release"

# ADD CPP /Yc"stdafx.h"

!ELSEIF  "$(CFG)" == "StarDraw - Win32 Debug"

# ADD CPP /Yc"stdafx.h"

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Release"

!ELSEIF  "$(CFG)" == "StarDraw - Power Macintosh Debug"

DEP_CPP_STDAF=\
	".\stdafx.h"\
	
# ADD CPP /Yc"stdafx.h"

!ENDIF 

# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;inl;fi;fd"
# Begin Source File

SOURCE=.\childfrm.h
# End Source File
# Begin Source File

SOURCE=.\ipframe.h
# End Source File
# Begin Source File

SOURCE=.\mainfrm.h
# End Source File
# Begin Source File

SOURCE=.\pendlg.h
# End Source File
# Begin Source File

SOURCE=.\StarDraw.h
# End Source File
# Begin Source File

SOURCE=.\Stardoc.h
# End Source File
# Begin Source File

SOURCE=.\Staritm.h
# End Source File
# Begin Source File

SOURCE=.\Starvw.h
# End Source File
# Begin Source File

SOURCE=.\stdafx.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;cnt;rtf;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=.\res\itoolbar.bmp
# End Source File
# Begin Source File

SOURCE=.\res\StarDraw.ico
# End Source File
# Begin Source File

SOURCE=.\res\StarDraw.rc2
# End Source File
# Begin Source File

SOURCE=.\res\Stardoc.ico
# End Source File
# Begin Source File

SOURCE=.\res\toolbar.bmp
# End Source File
# End Group
# End Target
# End Project
