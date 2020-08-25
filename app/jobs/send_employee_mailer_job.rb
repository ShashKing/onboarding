class SendEmployeeMailerJob < ApplicationJob
  queue_as :default

  def perform(employee)
    # Do something later
      EmployeeMailer.with(employee: employee).welcome_email.deliver_later
  end
end
