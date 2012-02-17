require 'spree_core'

module SpreeCybersourceGateway
  class Engine < Rails::Engine
    engine_name 'spree_cybersource_gateway'

    config.autoload_paths += %W(#{config.root}/lib)

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    def self.activate
       require 'active_merchant'
       ActiveMerchant::Billing::CyberSourceGateway
     
      Dir.glob(File.join(File.dirname(__FILE__), "../../app/**/*_decorator*.rb")) do |c|
        Rails.application.config.cache_classes ? require(c) : load(c)
      end

      Dir.glob(File.join(File.dirname(__FILE__), "../../app/overrides/*.rb")) do |c|
        Rails.application.config.cache_classes ? require(c) : load(c)
      end
    end
	
      config.after_initialize do |app|
        app.config.spree.payment_methods += [
          Gateway::CyberSource
        ]
       end
    config.to_prepare &method(:activate).to_proc
  end
end
