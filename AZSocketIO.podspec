Pod::Spec.new do |s|
  s.name     = 'AZSocketIO-HandShakeData'
  s.version  = '0.0.6'
  s.license  = 'Apache 2.0'
  s.summary  = 'A socket.io client for objective-c. Cocoapods-friendly. Appledocs. Built of AFNetworking and SocketRocket. Websockets + XHR.'
  s.homepage = 'https://github.com/lukabernardi/AZSocketIO'
  s.authors  = {
    'Luca Bernardi' => 'luka.bernardi@gmail.com',
    'Patrick Shields' => 'patrick.m.shields@gmail.com',
    'Dirk Eisenberg' => 'dirk.eisenberg@gmail.com'
    }
  s.source   = { :git => 'https://github.com/dei79/AZSocketIO.git', :tag => 'v0.0.6-fix01' }
  s.source_files = 'AZSocketIO/*.{h,m}', 'AZSocketIO/Protocols/*.{h,m}', 'AZSocketIO/Transports/*.{h,m}'
  s.dependency 'SocketRocket', '~> 0.x'
  s.dependency 'AFNetworking', '~> 2.x'
  s.requires_arc = true
  s.platform = :ios, 6.0
  s.prefix_header_contents = <<-EOS
#import <Availability.h>

#if __IPHONE_OS_VERSION_MIN_REQUIRED
  #import <SystemConfiguration/SystemConfiguration.h>
  #import <MobileCoreServices/MobileCoreServices.h>
  #import <Security/Security.h>
#else
  #import <SystemConfiguration/SystemConfiguration.h>
  #import <CoreServices/CoreServices.h>
  #import <Security/Security.h>
#endif
EOS
end
