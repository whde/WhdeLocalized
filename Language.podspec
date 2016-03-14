Pod::Spec.new do |s|
s.name                  = "Language"
s.version               = "1.0"
s.summary               = "Language."
s.homepage              = "https://github.com/whde/WhdeLocalized"
s.license               = { :type => 'MIT', :file => 'README.md' }
s.author                = { "Whde" => "460290973@qq.com" }
s.source                = { :git => "https://github.com/whde/WhdeLocalized.git", :tag => s.version.to_s }
s.platform              = :ios
s.ios.deployment_target = '7.0'
s.source_files          = 'Language/Language/Language/*'
s.requires_arc          = true
end