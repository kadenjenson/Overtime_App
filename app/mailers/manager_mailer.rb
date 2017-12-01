class ManagerMailer < ApplicationMailer
  def email manager
    @manager = manager
    mail(to: manager.email, subject: 'Employees Requesting OT')
  end
end
