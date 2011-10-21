require "rubygems"
require "active_merchant-payu"

config = YAML.load_file("config.yml")

ActiveMerchant::Billing::Base.mode = :test
gateway = ActiveMerchant::Billing::PayuGateway.new(config['payu'].symbolize_keys!)

# if credit_card.valid?
#   # or gateway.purchase to do both authorize and capture
#   response = gateway.authorize(1000, credit_card, :ip => "127.0.0.1")
#   if response.success?
#     gateway.capture(1000, response.authorization)
#     puts "Purchase complete!"
#   else
#     puts "Error: #{response.message}"
#   end
# else
#   puts "Error: credit card is not valid. #{credit_card.errors.full_messages.join('. ')}"
# end