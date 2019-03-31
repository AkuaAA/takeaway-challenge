require("bundler")
Bundler.require()

class Confirmation

  def initialize(text= Text.new)
    account_sid = ENV["TWILIO_ACCOUNT_SID"]
    auth_token = ENV["TWILIO_AUTH_TOKEN"]
    @client = Twilio::REST::Client.new(account_sid,auth_token)
  end

  def text_sent
    @client.messages.create(
      from: ENV["TWILIO_NUMBER"],
      to: ENV["MY_PHONE_NUMBER"],
      body: "Thank you! Your order was placed and will be delivered before 18:52"
    )
  end 

end

#bundle exec ruby text_confirmation.rb

#+441678202045
#ACc990841f1e073f6162bce8761bac9b66
#c6ee5845f781acb14381e5055e001eb7
