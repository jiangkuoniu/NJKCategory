Pod::Spec.new do |s|
s.name         = 'NJK_Category'
s.version      = '0.0.1'
s.summary      = '常用类扩展'
s.homepage     = 'https://github.com/jiangkuoniu/NJKDemo'
s.license      = 'MIT'
s.authors      = {'jiangkuoniu' => '707429313@qq.com'}
s.platform     = :ios, '6.0'
s.source       = {:git => 'https://github.com/jiangkuoniu/NJKDemo.git', :tag => s.version}
s.source_files = 'NJKCategor/NJK_Category/**/*'
s.requires_arc = true
end
