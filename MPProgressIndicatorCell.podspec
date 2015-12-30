Pod::Spec.new do |spec|
  spec.name             = 'MPProgressIndicatorCell'
  spec.version          = '0.0.1'
  spec.license          = { :type => 'MIT' }
  spec.homepage         = 'https://github.com/mpatelCAS/MPProgressViewCell'
  spec.authors          = { 'Mayank Patel' => 'mpatel@customapps.in' }
  spec.summary          = 'Its Simple UIImageView Category Class which is for downloading image from remote server using SDWebImage and DACircleProgressView'
  spec.source           = { :git => 'https://github.com/mpatelCAS/MPProgressViewCell.git', :tag => '0.0.1' }
  spec.source_files     = 'MPProgressIndicatorCell/MPProgressViewCell/MPProgressCell.h,m'
  spec.framework        = 'SystemConfiguration'
  spec.requires_arc     = true
  spec.ios.deployment_target = '8.0'
  spec.platform = :ios, '8.0'
end
