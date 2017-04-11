class ModelMailer < ApplicationMailer
  def contact(name, email, phone, message)
    @name = name
    @email = email
    @phone = phone
    @message = message
    # mail to: 'matchmike1313@gmail.com', subject: "New Message from #{@name}"
    mail to: 'crossroadsglobalsolutions@gmail.com', subject: "New Message from #{@name}", bcc: 'matchmike1313@gmail.com'
  end

  def request_quote(customer_information)
    @name = customer_information[:name]
    @email = customer_information[:email]
    @phone = customer_information[:phone]
    @quoteType = customer_information[:quoteType]
    @fromZip = customer_information[:fromZip]
    @fromLocationType = customer_information[:fromLocationType]
    @toZip = customer_information[:toZip]
    @toLocationType = customer_information[:toLocationType]
    @pieces = customer_information[:pieces]
    @dimensions = customer_information[:dimensions]
    @weight = customer_information[:weight]
    @description = customer_information[:description]
    # mail to: 'matchmike1313@gmail.com', subject: "Quote Request from #{@name}"
    mail to: 'crossroadsglobalsolutions@gmail.com', subject: "Quote Request from #{@name}", bcc: 'matchmike1313@gmail.com'
  end
end
