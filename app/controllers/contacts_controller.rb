class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create]

  def create
    @contact = Contact.new(review_params)

    if @contact.save
      # UserMailer.contact(@contact).deliver_now
      UserMailer.contact(@contact).deliver_now
      UserMailer.contact_notification(@contact).deliver_now
    end
  end

  private

  def review_params
    params.require(:contact).permit(:name, :email, :content, :number)
  end
end
