name             "dsh"
maintainer       "Jacques Marneweck"
maintainer_email "jacques@powertrip.co.za"
license          "MIT"
description      "Installs/Configures dsh"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.2"

%w{
  smartos
}.each do |os|
  supports os
end
