# Uncomment the next line to define a global platform for your project
 platform :ios, '11.0'

target 'Language' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Language
  pod 'i18next', '1.0.1'

  target 'LanguageTests' do
    # Pods for testing
  end

end

post_install do |installer|
    installer.generated_projects.each do |project|
          project.targets.each do |target|
              target.build_configurations.each do |config|
                  config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '11.0'
               end
          end
   end
end
