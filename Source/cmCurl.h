/*============================================================================
  CMake - Cross Platform Makefile Generator
  Copyright 2000-2015 Kitware, Inc., Insight Software Consortium

  Distributed under the OSI-approved BSD License (the "License");
  see accompanying file Copyright.txt for details.

  This software is distributed WITHOUT ANY WARRANTY; without even the
  implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
  See the License for more information.
============================================================================*/
#ifndef cmCurl_h
#define cmCurl_h

#include "cmStandardIncludes.h"

#ifdef CMAKE_BUILD_WITH_CMAKE
# include "cm_curl.h"
std::string cmCurlSetCAInfo(::CURL *curl, const char* cafile = 0);
#endif

#endif
