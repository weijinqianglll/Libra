project "Libra"
kind "SharedLib"
language "C++"
cppdialect "C++20"
targetdir "bin/%{cfg.buildcfg}"
staticruntime "off"

IncludeDir = {}
-- udeDir["GLFW"] = "../Vendor/GLFW/include"
-- udeDir["Glad"] = "../Vendor/Glad/include"
-- udeDir["ImGui"] = "../Vendor/imgui"

files {"src/**.h", "src/**.cpp"}

includedirs {"src"}

-- links {"GLFW", "Glad", "ImGui", "opengl32.lib"}

targetdir("../bin/%{OutputDir}")
objdir("../bin-int/%{OutputDir}")

-- pchheader "hzpch.h"
-- pchsource "Source/hzpch.cpp"

filter "system:windows"
systemversion "latest"
defines {"LB_PLATFORM_WINDOWS", "LB_BUILD_DLL"}

filter "configurations:Debug"
defines {"DEBUG"}
buildoptions "/MDd" --
runtime "Debug"
symbols "On"

filter "configurations:Release"
defines {"RELEASE"}
buildoptions "/MD" --
runtime "Release"
optimize "On"
symbols "On"

filter "configurations:Dist"
defines {"DIST"}
buildoptions "/MD" --
runtime "Release"
optimize "On"
symbols "Off"
