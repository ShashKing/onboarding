class EmployeeMailer < ApplicationMailer
	default from: 'abhishek@gmail.com'
	def welcome_email
    @employee = params[:employee]
    @url  = 'http://example.com/login'
    mail(to: @employee.email, subject: 'Welcome to My Awesome Site')
  end
end
