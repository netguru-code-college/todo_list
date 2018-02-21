# spec/support/factory_bot.rb
RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
end

# RSpec without Rails
RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
end
