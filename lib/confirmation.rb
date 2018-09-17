require_relative 'order.rb'
require "twilio-ruby"

class Confirmation

  def initialize(total, client_object = Twilio::REST::Client)
    account_sid = "AC1cbbdbf4e77caa7d10e800370cbf77fe"
    auth_token = "e9b8df173715b2225be7a5ab24c7c831"
    @client = client_object.new account_sid, auth_token
    @total = total
    send_message
  end

  def send_message
    @client.messages.create(
      body: "Thank you! Your order for £#{@total} and will be delivered before 18:52",
      to: "000000000000",
      from: "+447449794153"
    )
  end


end
