project "Surface"
kind "ConsoleApp"
language "C++"
cppdialect "C++20"
targetdir "bin/%{cfg.buildcfg}"
staticruntime "off"

files {"src/**.h", "src/**.cpp"}
includedirs {"src", "../Libra/src"}

links {"Libra"}

targetdir("../bin/%{OutputDir}")
objdir("../bin-int/%{OutputDir}")

filter "system:windows"
systemversion "latest"
defines {"LB_PLATFORM_WINDOWS"}

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
