Pod::Spec.new do |s|
s.name          = "Language"
s.version       = "1.0.3"
s.summary       = "iOS Language."
s.homepage      = "https://github.com/whde/WhdeLocalized"
s.license       = 'MIT'
s.author        = { "Whde" => "460290973@qq.com" }
s.platform      = :ios, "7.0"
s.source        = { :git => "https://github.com/whde/WhdeLocalized.git", :tag => s.version.to_s }
s.source_files  = 'Language/Language/Language/*'
s.frameworks    = 'Foundation'
s.requires_arc  = true
s.description   = <<-DESC
It is a Language used on iOS, which implement by Objective-C.
DESC
end