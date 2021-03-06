project "ImGui"
  kind "StaticLib"
  language "C++"
  
  targetdir ("bin/" .. outputDir .. "/%{prj.name}")
  objdir ("bin/" .. outputDir .. "/%{prj.name}")
  
  files
  {
    "imconfig.h",
    "imgui.h",
    "imgui.cpp",
    "imgui_internal.h",
    "imgui_widgets.cpp",
    "imstb_rectpack.h",
    "imstb_textedit.h",
    "imstb_truetype.h",
    "imgui_demo.cpp"
  }
  
  filter "system:windows"
    systemversion "latest"
    cppdialect "C++17"
    staticruntime "On"
    
  filter { "system:windows", "configurations:Release" }
    buildoptions "/MT"
