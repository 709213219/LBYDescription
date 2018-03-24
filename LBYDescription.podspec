Pod::Spec.new do |s|
  s.name      = 'LBYDescription'
  s.version   = '1.0.0'
  s.summary   = 'LBYDescription'
  s.homepage  = 'https://github.com/709213219/LBYDescription'
  s.license   = 'MIT'
  s.author    = { 'billlin' => 'bill1in@163.com' }
  s.source    = { :git => 'https://github.com/709213219/LBYDescription', :tag => '1.0.0' }
  s.source_files  = 'LBYDescription/LBYDescription'
  s.requires_arc  = true
  s.platform  = :ios
  s.ios.deployment_target = '8.0'
end