class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  
  def send_signup_email(user)
    @user = user
    mail( :to => @user.email,
    :subject => 'Thanks for signing up for our amazing app' )
  end
  
  def create
    @contact = Contact.new(params[:contact])
    #mail(:to => params[:email], :subject => params[:message])
    @contact.request = request
    if @contact.valid?
      @contact.deliver
      flash.now[:error] = nil
      flash.now[:notice] = 'Thank you for your message!'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
end
