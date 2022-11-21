class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @lessons = Lesson.all
    @contact = Contact.new(params[:contact])
    @contact.request = request
      if @contact.deliver
        flash.now[:alert] = 'Messaggio inviato correttamente'
        redirect_to :root
      else
        flash.now[:error] = 'Could not send message'
        render :home, status: :unprocessable_entity
      end
  end

end
