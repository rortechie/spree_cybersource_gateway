Spree CyberSource Gateway
==================

Welcome to RoRtechie.com
This gem provides very simple integration of Cybersource with Spree.
Include the gem into your Gemfile as follows

gem 'spree_cybersource_gateway', :git => 'git://github.com/rortechie/spree_cybersource_gateway.git',:branch => "master"

Then

bundle install

To complete the implementation

Register or login with test account https://ebctest.cybersource.com/
Navigate to Account Management > Transaction Security Keys > Security Keys for the SOAP Toolkit API
Click on Generate Key and copy that into wordpad.

Now login to spree as admin and navigate to admin > Configuration > Payment Methods > New payment method
You should see Gateway::CyberSource within dropdown for provider.

Select the same, it shall now ask for username and password. Enter username which is used for the cybersource.
The key generated is the password



Copyright (c) 2011 [Jay @ Rortechie], released under the New BSD License
