project "spdlog"
	kind "StaticLib"
	language "C++"
	staticruntime "On"

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

		defines 
		{ 
			"SPDLOG_COMPILED_LIB",
			"_CRT_SECURE_NO_WARNINGS"
		}

	filter "configurations:debug"
		symbols "On"
				
	filter "configurations:release"
		optimize "On"
