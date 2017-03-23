class StaticPagesController < ApplicationController
  def home
  end

  def privacy_policy
  end

  def terms_of_service
  end

  def contact
  end

  def send_message
    name = params['name']
    email = params['email']
    phone = params['phone']
    message = params['message']
    ModelMailer.contact(name, email, phone, message).deliver
    redirect_to '/thank_you'
  end

  def services
  end

  def about
  end

  def thank_you
  end

  def free_quote
  end

  def request_quote
    customer_information = {
      name: params['name'],
      email: params['email'],
      phone: params['phone'],
      quoteType: params['quoteType'],
      fromZip: params['fromZip'],
      fromLocationType: params['fromLocationType'],
      toZip: params['toZip'],
      toLocationType: params['toLocationType'],
      pieces: params['pieces'],
      dimensions: params['dimensions'],
      weight: params['weight'],
      description: params['description']
    }

    ModelMailer.request_quote(customer_information).deliver
    redirect_to '/thank_you'
  end

  def testimonials
  end
end
