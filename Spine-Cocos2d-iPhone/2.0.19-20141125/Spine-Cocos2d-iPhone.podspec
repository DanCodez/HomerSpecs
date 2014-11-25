Pod::Spec.new do |s|
	s.name			= 'Spine-Cocos2d-iPhone'
	s.version      	= '2.0.19-20141125'
	s.license       = { type: 'Spine Runtimes Software License', :file => 'LICENSE' }
	s.homepage     	= 'http://esotericsoftware.com/'
	s.author      	= 'EsotericSoftware' 
	s.summary      	= '2D skeletal animation runtime for Spine'
	s.source       	= { 
		:git => 'https://github.com/EsotericSoftware/spine-runtimes.git', 
		:tag => '2.0.19-20141125'
	}
	s.source_files 	= 'spine-cocos2d-iphone/3/src/spine/*.{h,m}'
	s.platform 		= :ios
	s.requires_arc 	= false
	s.header_dir    = 'spine'
	s.ios.deployment_target = "6.1.1"
	s.dependency 	'cocos2d', '~> 3.1.2'

	# Compile Chipmunk using the source in cocos2d/external/chipmunk folder (git submodule)
    s.subspec 'Spine' do |sp|
    	sp.requires_arc = false
    	sp.source_files =  'spine-c/include/spine/*.{h,c}', 
					       'spine-c/src/spine/*.{h,c}', 
    	sp.public_header_files = 'spine-c/include/spine/*.{h,c}',                             	 
        sp.header_dir 		   = 'spine'
		sp.xcconfig = { 'HEADER_SEARCH_PATHS' => "$(PODS_ROOT)/Headers/Public/Spine-Cocos2d-iPhone/spine/include"}
  end
end