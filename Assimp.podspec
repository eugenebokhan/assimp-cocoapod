Pod::Spec.new do |s|
    s.name  = 'Assimp'
    s.version = '5.0.0'
    s.summary = 'Open Asset Import Library'
    s.homepage = 'http://www.assimp.org'
    s.source = { :git => 'https://github.com/eugenebokhan/Assimp-Cocoapod', :tag => s.version.to_s }
    s.author = { 'Eugene Bokhan' => 'eugenebokhan@protonmail.com' }
    s.social_media_url = 'http://twitter.com/eugenebokhan'
    s.license = { :file => 'LICENSE' }
    
    s.ios.deployment_target = '10.3'
    s.osx.deployment_target = '10.12'

    s.source_files = 'Sources/assimp/code/**/*.{cpp,c}', 'Sources/assimp/contrib/**/*.{cpp,cc,c}', 'Sources/assimp/include/assimp/Compiler/pushpack1.h', 'Sources/assimp/include/assimp/Compiler/poppack1.h', 'Sources/assimp/include/assimp/Compiler/pstdint.h', 'Sources/assimp/include/assimp/scene.h', 'Sources/assimp/include/assimp/texture.h', 'Sources/assimp/include/assimp/mesh.h', 'Sources/assimp/include/assimp/aabb.h', 'Sources/assimp/include/assimp/light.h', 'Sources/assimp/include/assimp/camera.h', 'Sources/assimp/include/assimp/material.h', 'Sources/assimp/include/assimp/types.h', 'Sources/assimp/include/assimp/defs.h', 'Sources/assimp/include/assimp/config.h', 'Sources/assimp/include/assimp/anim.h', 'Sources/assimp/include/assimp/metadata.h', 'Sources/assimp/include/assimp/cimport.h', 'Sources/assimp/include/assimp/importerdesc.h', 'Sources/assimp/include/assimp/vector3.h', 'Sources/assimp/include/assimp/vector3.inl', 'Sources/assimp/include/assimp/vector2.h', 'Sources/assimp/include/assimp/vector2.inl', 'Sources/assimp/include/assimp/color4.h', 'Sources/assimp/include/assimp/color4.inl', 'Sources/assimp/include/assimp/matrix3x3.h', 'Sources/assimp/include/assimp/matrix3x3.inl', 'Sources/assimp/include/assimp/matrix4x4.h', 'Sources/assimp/include/assimp/matrix4x4.inl', 'Sources/assimp/include/assimp/quaternion.h',  'Sources/assimp/include/assimp/quaternion.inl'

    s.preserve_paths = 'Sources/**/*'

    s.pod_target_xcconfig = {
      'GCC_PREPROCESSOR_DEFINITIONS' => 'ASSIMP_BUILD_NO_IFC_IMPORTER ASSIMP_BUILD_NO_C4D_IMPORTER',
      'HEADER_SEARCH_PATHS' => '$(PODS_TARGET_SRCROOT)/Sources/assimp $(PODS_TARGET_SRCROOT)/Sources/assimp/include $(PODS_TARGET_SRCROOT)/Sources/assimp/include/assimp $(PODS_TARGET_SRCROOT)/Sources/assimp/include/assimp/. $(PODS_TARGET_SRCROOT)/Sources/assimp/code $(PODS_TARGET_SRCROOT)/Sources/assimp/contrib/openddlparser/include $(PODS_TARGET_SRCROOT)/Sources/assimp/contrib/irrXML $(PODS_TARGET_SRCROOT)/Sources/assimp/contrib/unzip $(PODS_TARGET_SRCROOT)/Sources/assimp/contrib/rapidjson/include',
      'CLANG_WARN_DOCUMENTATION_COMMENTS' => 'NO',
      'CLANG_WARN_COMMA' => 'NO',
      'CLANG_WARN_UNREACHABLE_CODE' => 'NO',
      'CLANG_WARN_RANGE_LOOP_ANALYSIS' => 'NO',
      'GCC_WARN_UNUSED_FUNCTION' => 'NO',
      'GCC_WARN_UNUSED_VALUE' => 'NO',
      'GCC_WARN_UNUSED_VARIABLE' => 'NO',
      'GCC_WARN_64_TO_32_BIT_CONVERSION' => 'NO',
      'GCC_WARN_UNINITIALIZED_AUTOS' => 'NO',
    }
end
