project "ImPlot"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "on"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "implot.h",
        "implot.cpp",
        "implot_demo.cpp",
        "implot_internal.h",
        "implot_items.cpp"
    }
    
    includedirs
    {
        "../imgui"
    }

    filter "system:windows"
        systemversion "latest"
       
        filter "configurations:Debug"
	        runtime "Debug"
	        symbols "on"

	    filter "configurations:Release"
	        runtime "Release"
	        optimize "on"
