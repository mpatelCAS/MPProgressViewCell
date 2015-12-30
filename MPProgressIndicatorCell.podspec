Pod::Spec.new do |s|
  s.name         = "MPProgressIndicatorCell"
  s.version      = "0.1"
  s.summary      = "A custom UIPickerView with a simple list of options, along with a toolbar for Done/Cancel and a faded backdrop view."
  s.homepage     = "https://github.com/mpatelCAS/MPProgressViewCell"

  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Mayank Patel" => "mpatel@customapps.in" }
  s.source       = { 
    :git => "https://github.com/mpatelCAS/MPProgressViewCell.git", 
    :tag => "0.1"
  }

  s.platform     = :ios, '8.0'
  s.source_files = 'MPProgressViewCell/*'
  s.requires_arc = true
  s.dependency 'DACircularProgress', '~> 2.3'
  # SDWebImage
  # 3.7.2 contains bugs downloading local files
  # https://github.com/rs/SDWebImage/issues/1109
  s.dependency 'SDWebImage', '~> 3.7', '!= 3.7.2'
  end
