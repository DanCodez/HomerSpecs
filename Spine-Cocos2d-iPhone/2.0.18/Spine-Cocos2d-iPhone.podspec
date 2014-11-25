Pod::Spec.new do |s|
	s.name			= 'Spine-Cocos2d-iPhone'
	s.version      	= '2.0.18'
	# s.license      	=  { :type => 'Copyright 2013 Esoteric Software. All rights reserved.', :file => 'spine-c/include/spine/spine.h' }
	s.license       = { type: 'Spine Runtimes Software License', :file => 'LICENSE' }
	s.homepage     	= 'http://esotericsoftware.com/'
	s.author      	= 'EsotericSoftware' 
	s.summary      	= '2D skeletal animation runtime for Spine'

	s.source       	= { 
		:git => 'https://github.com/EsotericSoftware/spine-runtimes.git', 
		:tag => '2.0.18'
	}
	
	s.source_files 	= 'spine-c/include/spine/*.{h,c}', 
					  'spine-c/src/spine/*.{h,c}', 
					  'spine-cocos2d-iphone/src/spine/*.{h,m}'
	
	s.platform 		= :ios
	s.requires_arc 	= true

	s.ios.deployment_target = "6.1.1"
	
	s.header_dir 	= 'spine'
	
	s.dependency 	'cocos2d'
end