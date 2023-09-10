Pod::Spec.new do |spec|
    spec.name             = 'SDKNetwork'
    spec.version          = '1.0.0'
    spec.license          = { type: 'Proprietary' }
    spec.homepage         = 'https://github.com/Grupo4Mentoria/SDKNetwork'
    spec.authors          = { 'Grupo4' => 'grupo4mentoria@gmail.com' }
    spec.summary          = 'SDKNetwork.'
    spec.source           = { :git => 'https://github.com/Grupo4Mentoria/SDKNetwork.git', :tag => "#{spec.version}" }
    spec.source_files     = 'API/*'
end
