class StaticPagesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def home
    expires_in 4.hours, :public => true

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
      quoteType: quote_type_lookup(params['quoteType']),
      fromZip: params['fromZip'],
      fromLocationType: lookup_location_type(params['fromLocationType']),
      toZip: params['toZip'],
      toLocationType: lookup_location_type(params['toLocationType']),
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

  private

  def quote_type_lookup(option)
    if option == '1'
      quote_type = 'Single Shipment Quote'
    elsif option == '2'
      quote_type = 'Looking for Freight Rates'
    end
  end

  def lookup_location_type(option)
    if option == '1'
      return 'Business'
    elsif option == '2'
      return 'Residence'
    elsif option == '3'
      return 'Other'
    end
  end
end
