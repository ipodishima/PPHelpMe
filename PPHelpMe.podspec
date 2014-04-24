Pod::Spec.new do |s|
  s.name     = "PPHelpMe"
  s.version  = "0.0.1"
  s.summary  = "Convenience methods for common operations with Foundation objects."
  s.homepage = "http://github.com/ipodishima/PPHelpMe"
  s.license  = "MIT"
  s.license  = { :type => "MIT", :file => "LICENSE" }
  s.author   = "Marian Paul"
  s.platform = :ios, '6.0'

  # pointing to master for now until a tag is created
  s.source  = {
    :git => 'https://github.com/ipodishima/PPHelpMe.git',
    :commit => 'c4a8c9833cb0ed6186fe7e3e7d283cc5465ea63a'
  }

  s.source_files = 'PPhelpMe/PPHelpMeFiles/*.{h,m}'
  s.framework    = "QuartzCore"

  ss.prefix_header_contents = <<-EOS
        #ifdef __OBJC__
            #import "PPHelpMe.h"
        #endif
                extern int ddLogLevel;
        EOS

  s.requires_arc = true
end
