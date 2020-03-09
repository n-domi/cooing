class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def confirm
    session[:name] = contact_params[:name]
    session[:ruby] = contact_params[:ruby]
    session[:email] = contact_params[:email]
    session[:item] = contact_params[:item]
    session[:content] = contact_params[:content]

    @contact = Contact.new(contact_params) 

    @item = contact_params[:item]

    if @contact.valid?
      # OK。確認画面を表示
      render :action => 'confirm'
    else
      # NG。入力画面を再表示
      render :new
    end
  end

  def create
    @contact = Contact.new(
      name: session[:name], 
      ruby: session[:ruby], 
      email: session[:email],
      item: session[:item], 
      content: session[:content]
    )
    if @contact.save
      redirect_to "/thanks!"
    else
      render :new
    end
  end

  def edit
    @contact = Contact.new(
      name: session[:name], 
      ruby: session[:ruby], 
      email: session[:email],
      item: session[:item], 
      content: session[:content]
    )

    @item = @contact.item
    render :new
  end  

  def thanks

  end

  private

  def contact_params
    params.permit(:name, :ruby, :email, :item, :content)
  end

end