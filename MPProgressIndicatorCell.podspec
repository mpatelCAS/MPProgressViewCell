Pod::Spec.new do |spec|
  spec.name             = 'MPProgressIndicatorCell'
  spec.version          = '1.0'
  spec.license          = { :type => 'MIT' }
  spec.homepage         = 'https://github.com/mpatelCAS/MPProgressViewCell'
  spec.authors          = { 'Mayank Patel' => 'mpatel@customapps.in' }
  spec.summary          = 'Its Simple UIImageView Category Class which is for downloading image from remote server using SDWebImage and DACircleProgressView '
  spec.source           = { :git => 'https://github.com/mpatelCAS/MPProgressViewCell.git', :tag => '1.0' }
  spec.source_files     = 'MPProgressIndicatorCell/MPProgressViewCell/MPProgressCell.h,m'
  spec.framework        = 'SystemConfiguration'
  spec.requires_arc     = true
  spec.platform = :ios
end
