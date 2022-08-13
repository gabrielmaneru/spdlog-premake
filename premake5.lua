project "spdlog"
	kind "StaticLib"
	language "C++"

	targetdir ("build/" .. outputdir .. "/%{prj.name}/bin")
	objdir ("build/" .. outputdir .. "/%{prj.name}/obj")

	files
	{
		"include/spdlog/**.h",
		"src/**.cpp"
	}
	
	includedirs
	{
		"include"
	}
	
	filter "system:windows"
		systemversion "latest"
		staticruntime "On"

		defines 
		{ 
			"SPDLOG_COMPILED_LIB",
			"_CRT_SECURE_NO_WARNINGS"
		}

	filter "configurations:debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:release"
		runtime "Release"
		optimize "on"
