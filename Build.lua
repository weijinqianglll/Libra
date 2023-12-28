-- premake5.lua
workspace "LibraEngine"
architecture "x64"
configurations {"Debug", "Release", "Dist"}
startproject "Surface"

filter "system:windows"

OutputDir = "%{cfg.system}-%{cfg.architecture}/%{cfg.buildcfg}"

group "Libra"
include "Libra/Build-Libra.lua"
group "Surface"
include "Surface/Build-Surface.lua"

-- group "GLFW"
-- include "Vendor/GLFW/Build-GLFW.lua"
-- group "Glad"
-- include "Vendor/Glad/Build-Glad.lua"
-- group "ImGui"
-- include "Vendor/imgui/Build-ImGui.lua"

