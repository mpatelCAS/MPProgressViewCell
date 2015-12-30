Pod::Spec.new do |s|
  s.name         = "MPProgressIndicatorCell"
  s.version      = "0.1"
  s.summary      = "A custom UIPickerView with a simple list of options, along with a toolbar for Done/Cancel and a faded backdrop view."
  s.homepage     = "https://github.com/mpatelCAS/MPProgressViewCell"

  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Mayank Patel" => "mpatel@customapps.in" }
  s.source       = { 
    :git => "https://github.com/subdigital/BSModalPickerView.git", 
    :tag => "0.1"
  }

  s.platform     = :ios, '8.0'
  s.source_files = MPProgressIndicatorCell/MPProgressViewCell/*'
  s.requires_arc = trueend
