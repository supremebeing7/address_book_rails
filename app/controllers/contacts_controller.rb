class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render('contacts/index.html.erb')
  end

  def new
    @contact = Contact.new
    render('contacts/new.html.erb')
  end

  def create
    @contact = Contact.new(name: params[:name],
                              phone: params[:phone],
                              email: params[:email])
    if @contact.save
      render('contacts/success.html.erb')
    else
      render('contacts/new.html.erb')
    end
  end

  def show
    @contact = Contact.find(params[:id])
    render('contacts/show.html.erb')
  end
end
