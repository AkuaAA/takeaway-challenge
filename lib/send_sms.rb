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
      from: ENV["TWILIO_PHONE_NUMBER"],
      to: ENV["MY_PHONE_NUMBER"],
      body: "Thank you! Your order was placed and will be delivered before 18:52"
    )
  end

end
