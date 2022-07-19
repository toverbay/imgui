project "ImGui"
    kind "StaticLib"
    language "C++"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
      "imconfig.h",
      "imgui.h",
      "imgui.cpp",
      "imgui_draw.cpp",
      "imgui_internal.h",
      "imgui_tables.cpp",
      "imgui_widgets.cpp",
      "imstb_rectpack.h",
      "imstb_textedit.h",
      "imstb_truetype.h",
      "imgui_demo.cpp"
    }

    filter "system:linux"
        systemversion "latest"
        staticruntime "On"

    filter "system:windows"
        systemversion "latest"
        staticruntime "On"
        cppdialect "C++17"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"
        buildoptions "/MT"

    filter "configurations:Dist"
        runtime "Release"
        optimize "on"
        symbols "off"
        buildoptions "/MT"