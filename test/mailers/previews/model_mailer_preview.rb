# Preview all emails at http://localhost:3000/rails/mailers/model_mailer
class ModelMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/model_mailer/crossroads_global_solutions_mailer
  def crossroads_global_solutions_mailer
    ModelMailer.crossroads_global_solutions_mailer
  end

end
