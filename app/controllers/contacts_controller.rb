class ContactsController < ApplicationController
  def new
    @contact = Contact.new
    render :action => 'new'
  end

  def create
    # @contact = Contact.new(
    #   name: params[:name],
    #   ruby: params[:ruby],
    #   email: params[:email],
    #   item: params[:item],
    #   content: params[:content]
    # )
    # if @contact.save
    #   redirect_to root_path
    # else
    #   # render :new
    #   render :confirm
    # end   
  end

  def edit
  end
  
  def update
  end  

  def confirm
    @contact = Contact.new(
      name: params[:name],
      ruby: params[:ruby],
      email: params[:email],
      item: params[:item],
      content: params[:content]
    )  
    if @contact.save
      redirect_to root_path
    else
      # render :new
      render :new
    end   
  end  

  def check
    @contact = Contact.new(
      name: params[:name],
      ruby: params[:ruby],
      email: params[:email],
      item: params[:item],
      content: params[:content]
    )

    if @contact.valid?
      # OK。確認画面を表示
      render :action => 'confirm'
    else
      # NG。入力画面を再表示
      render :new
    end
  end  

  # private

  def contact_params
    params.require(:contact).permit(
      name: params[:name],
      ruby: params[:ruby],
      email: params[:email],
      item: params[:item],
      content: params[:content]
     )
  end
end
