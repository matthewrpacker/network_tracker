class ContactsController < ApplicationController
  def index
    @contacts = current_user.contacts.order(id: :desc)
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(
      user_id: current_user.id,
      first_name: contact_params[:first_name],
      last_name: contact_params[:last_name],
      email: contact_params[:email],
      phone: contact_params[:phone]
    )
    @user = User.find(params[:user_id])
    if @contact.save
      flash[:success] = "Contact Created!!"
      redirect_to user_contacts_path(current_user)
    else
      redirect_to user_contacts_path(current_user)
      flash[:danger] = @contact.errors.full_messages.join(', ')
    end
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])

    if @contact.update_attributes(contact_params)
      redirect_to user_contacts_path(current_user)
      flash[:success] = "Contact Updated!"
    else
      flash[:danger] = @contact.errors.full_messages.join(', ')
      render :edit
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :phone)
  end
end
