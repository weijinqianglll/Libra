#pragma once

#ifdef LB_PLATFORM_WINDOWS
	#ifdef LB_BUILD_DLL
#define LIBRA_API __declspec(dllexport)
#else
#define LIBRA_API __declspec(dllimport)
#endif // AN_BUILT_DLL
#else
#error Animal only support windows!
#endif // AN_PLATFORM_WINDOWS

