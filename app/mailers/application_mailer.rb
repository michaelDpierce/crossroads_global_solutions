class ApplicationMailer < ActionMailer::Base
  default from: 'No-Reply at Crossroads Global Solutions <no-reply@cgs-llc.net>'
  default 'Message-ID'=>"#{Digest::SHA2.hexdigest(Time.now.to_i.to_s)}@cgs-llc.net"
  layout 'mailer'
end
