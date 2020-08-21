Pod::Spec.new do |s|
s.name         = 'NJK_Category'
s.version      = '0.0.2'
s.summary      = '常用类扩展'
s.homepage     = 'https://github.com/jiangkuoniu/NJKDemo'
s.license      = 'MIT'
s.authors      = {'jiangkuoniu' => '707429313@qq.com'}
s.platform     = :ios, '9.0'
s.source       = {:git => 'https://github.com/jiangkuoniu/NJKDemo.git', :tag => s.version}

s.public_header_files = 'NJKCategor/NJK_Category/*.h'
s.subspec 'Category' do |ss1|
ss1.source_files = 'NJKCategor/NJK_Category/Category/*.{h,m}'
end
s.subspec 'Chain' do |ss2|
ss2.source_files = 'NJKCategor/NJK_Category/Chain/*.{h,m}'
end

s.requires_arc = true
end
