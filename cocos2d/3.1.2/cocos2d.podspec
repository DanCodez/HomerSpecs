Pod::Spec.new do |spec|
  spec.name         = 'cocos2d'
  spec.version      = '3.4.9'
  spec.license      = { type: 'mit' }
  spec.summary      = 'cocos2d-swift is a framework for building 2d games'
  spec.homepage     = 'http://www.cocos2d-swift.org/'

  spec.authors      = {
    'Lars Birkemose'       => 'http://thebackfiregames.wordpress.com',
    'Andy Korth'           => 'http://howlingmoonsoftware.com',
    'Apportable'           => 'http://www.apportable.com',
    'Christian Enevoldsen' => '',
    'Dominik Hadl'         => '',
    'John Twigg'           => '',
    'Martin Walsh'         => '',
    'Oleg Osin'            => '',
    'Scott Lembcke'        => 'http://chipmunk2d.net',
    'Viktor Lidholt'       => ''
  }

  spec.description  = <<-DESC
                      cocos2d-swift is a framework for building 2D games,
                      demos,and other graphical/interactive applications. 
                      It is based on the cocos2d design: It uses the same concepts, 
                      but instead of using Python, it uses Objective-C.
                     DESC

  spec.source       =  {
    git: 'https://github.com/cocos2d/cocos2d-swift.git',
    tag: 'release-3.4.9-rc1',
    :submodules => true
  }

  spec.dependency 'ObjectAL-for-iPhone'

  # Minimum deployment targets for cocos2d v.3
  spec.requires_arc = true
  spec.ios.deployment_target = "5.1.1"
  spec.osx.deployment_target = "10.8"

  spec.libraries       = 'z'
  spec.osx.frameworks  = 'OpenGL'
  spec.ios.frameworks  = 'OpenGLES' 

  spec.source_files = 'cocos2d/*.{h,m,c}',
                      'cocos2d/Support/*.{h,m,c}',
                      'cocos2d/Platforms/**/*.{h,m,c}',
                      'cocos2d-ui/**/*.{h,m}'

  # Settings a 
  spec.header_mappings_dir = 'cocos2d'

  # Compile Chipmunk using the source in cocos2d/external/chipmunk folder (git submodule)
  spec.subspec 'ObjectiveChipmunk' do |sp|

    sp.name = "ObjectiveChipmunk"

    sp.version      = '3.1.2'

    sp.requires_arc = false
    
    sp.source_files =  'external/Chipmunk/src/**/*.{c,h}',
                       'external/Chipmunk/include/**/*.h',
                       'external/Chipmunk/objectivec/**/*.{c,h}',
                       'external/Chipmunk/objectivec/src/*.{m,h}'
    
    sp.public_header_files = 'external/Chipmunk/include/**/*.h',
                             'external/Chipmunk/objectivec/include/**/*.h',
                             'external/Chipmunk/xcode/libGLEW/include/**/*.h',
                             'external/Chipmunk/xcode/libglfw/include/**/*.h'
    
    sp.header_mappings_dir = 'external'

    # Need to add some header dirs to the search paths because Chipmunk uses
    # subpaths in #includes
    search_paths = %w( "$(PODS_ROOT)/Headers/Public/cocos2d/Chipmunk/include"
                       "$(PODS_ROOT)/Headers/Public/cocos2d/Chipmunk/objectivec/include"   
                      )
    sp.xcconfig = { 'HEADER_SEARCH_PATHS' => search_paths.join(" ")}
  end

  # Kazmath is not used in v.3.1.2
  #
  # spec.subspec 'kazmath' do |sp|
  #   sp.source_files         = 'external/kazmath/**/*.{c,h}'
  #   sp.public_header_files  = 'external/kazmath/include/*.h'
  #   sp.public_mappings_dir  = 'external/kazmath/include'
  # end
end