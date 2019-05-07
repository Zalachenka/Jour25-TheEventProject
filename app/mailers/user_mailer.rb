class UserMailer < ApplicationMailer
  default from: 'no-reply@theeventproject.fr'
 
  def welcome_email(user)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user 

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'http://theeventproject.fr/login' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Bienvenue chez nous !') 
  end

  def event_email(user, attendance)
    @attendance = attendance
    @user = @attendance.event.user
    @admin = event.user
    mail(to: @admin.email, subject: 'Congrats !') 
	end
end