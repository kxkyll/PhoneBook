class SessionsController < ApplicationController
    def new
      # renderöi kirjautumissivun
    end

    def create
      # haetaan usernamea vastaava käyttäjä tietokannasta
      user = User.find_by_username params[:username]
      if user.nil?
          redirect_to :back, :notice => "User #{params[:username]} does not exist!"
      else 
          # talletetaan sessioon kirjautuneen käyttäjän id (jos käyttäjä on olemassa)
          session[:user_id] = user.id 
          redirect_to user_path(user), :notice => "Welcome back!"
      end
    end

    def destroy
      # nollataan sessio
      session[:user_id] = nil
      # uudelleenohjataan sovelluksen pääsivulle 
      #redirect_to :root
      redirect_to :people
    end
end