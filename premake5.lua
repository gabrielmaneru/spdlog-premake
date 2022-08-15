project "spdlog"
	kind "StaticLib"
	language "C++"
	staticruntime "On"

	targetdir ("build/" .. outputdir .. "/%{prj.name}/bin")
	objdir ("build/" .. outputdir .. "/%{prj.name}/obj")

	files
	{
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
