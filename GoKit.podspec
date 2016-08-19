Pod::Spec.new do |s|

  s.name         = 'GoKit'
  s.version      = '1.0.2'
  s.summary      = 'GoKit'
  s.homepage     = 'https://github.com/Agoer/GoKit'
  s.license      = 'MIT'
  s.author       = { 'Agoer' => '10915819@qq.com' }
  s.platform     = :ios, '6.0'
  s.requires_arc = true

  s.source       = {
      :git => 'https://github.com/Agoer/GoKit.git',
      :tag => s.version.to_s
  }
  s.source_files = 'GoKit/**/*.{c,h,m}'

end
