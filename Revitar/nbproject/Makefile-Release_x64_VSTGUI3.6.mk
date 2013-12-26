#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=MinGW+w64-Windows
CND_DLIB_EXT=dll
CND_CONF=Release_x64_VSTGUI3.6
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/RevEditor.o \
	${OBJECTDIR}/Revitar.o \
	${OBJECTDIR}/displayScreen.o \
	${OBJECTDIR}/presets.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=-m64 -fpermissive
CXXFLAGS=-m64 -fpermissive

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=--64

# Link Libraries and Options
LDLIBSOPTIONS=vst3sdk/dist/Release_x64_VST2_GUI3.6/MinGW+w64-Windows/libvst3sdk.a rcf.o -mwindows

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/Revitar2_x64.${CND_DLIB_EXT}

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/Revitar2_x64.${CND_DLIB_EXT}: vst3sdk/dist/Release_x64_VST2_GUI3.6/MinGW+w64-Windows/libvst3sdk.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/Revitar2_x64.${CND_DLIB_EXT}: rcf.o

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/Revitar2_x64.${CND_DLIB_EXT}: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/Revitar2_x64.${CND_DLIB_EXT} ${OBJECTFILES} ${LDLIBSOPTIONS} -lole32 -lkernel32 -lgdi32 -luuid -luser32 --def Revitar.def -static-libstdc++ -static-libgcc -shared -s

${OBJECTDIR}/RevEditor.o: RevEditor.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -O2 -w -s -DBOOST_THREAD_USE_LIB -DNDEBUG -DREVITAR_2_01_EXPORTS -DUSE_LIBPNG=0 -DVST3_2 -DVSTi -DWIN32 -DWINDOWS=1 -D_CRT_SECURE_NO_WARNINGS -D_USRDLL -D_WINDOWS -Ivst3sdk -Ivst3sdk/public.sdk/source/vst2.x -fpermissive  -MMD -MP -MF $@.d -o ${OBJECTDIR}/RevEditor.o RevEditor.cpp

${OBJECTDIR}/Revitar.o: Revitar.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -O2 -w -s -DBOOST_THREAD_USE_LIB -DNDEBUG -DREVITAR_2_01_EXPORTS -DUSE_LIBPNG=0 -DVST3_2 -DVSTi -DWIN32 -DWINDOWS=1 -D_CRT_SECURE_NO_WARNINGS -D_USRDLL -D_WINDOWS -Ivst3sdk -Ivst3sdk/public.sdk/source/vst2.x -fpermissive  -MMD -MP -MF $@.d -o ${OBJECTDIR}/Revitar.o Revitar.cpp

${OBJECTDIR}/displayScreen.o: displayScreen.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -O2 -w -s -DBOOST_THREAD_USE_LIB -DNDEBUG -DREVITAR_2_01_EXPORTS -DUSE_LIBPNG=0 -DVST3_2 -DVSTi -DWIN32 -DWINDOWS=1 -D_CRT_SECURE_NO_WARNINGS -D_USRDLL -D_WINDOWS -Ivst3sdk -Ivst3sdk/public.sdk/source/vst2.x -fpermissive  -MMD -MP -MF $@.d -o ${OBJECTDIR}/displayScreen.o displayScreen.cpp

${OBJECTDIR}/presets.o: presets.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -O2 -w -s -DBOOST_THREAD_USE_LIB -DNDEBUG -DREVITAR_2_01_EXPORTS -DUSE_LIBPNG=0 -DVST3_2 -DVSTi -DWIN32 -DWINDOWS=1 -D_CRT_SECURE_NO_WARNINGS -D_USRDLL -D_WINDOWS -Ivst3sdk -Ivst3sdk/public.sdk/source/vst2.x -fpermissive  -MMD -MP -MF $@.d -o ${OBJECTDIR}/presets.o presets.cpp

# Subprojects
.build-subprojects:
	cd vst3sdk && ${MAKE}  -f Makefile CONF=Release_x64_VST2_GUI3.6
	cd vst3sdk && ${MAKE}  -f Makefile CONF=Release_x64_VST2_GUI3.6

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/Revitar2_x64.${CND_DLIB_EXT}

# Subprojects
.clean-subprojects:
	cd vst3sdk && ${MAKE}  -f Makefile CONF=Release_x64_VST2_GUI3.6 clean
	cd vst3sdk && ${MAKE}  -f Makefile CONF=Release_x64_VST2_GUI3.6 clean

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc