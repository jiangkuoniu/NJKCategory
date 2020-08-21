Pod::Spec.new do |s|
s.name         = 'NJK_Category'
s.version      = '0.0.1'
s.summary      = '使用block替代监听点击'
s.homepage     = 'https://github.com/MrXiaoYang/KPLBlocks'
s.license      = 'MIT'
s.authors      = {'jiangkuoniu' => '707429313@qq.com'}
s.platform     = :ios, '6.0'
s.source       = {:git => 'https://github.com/MrXiaoYang/KPLBlocks.git', :tag => s.version}
s.source_files = 'KPLBlocks/**/*'
s.requires_arc = true
end
