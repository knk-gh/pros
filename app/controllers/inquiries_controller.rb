class InquiriesController < ApplicationController

  def index
    @inquiry = Inquiry.new
    render :action => 'index'
  end

  def confirm
    @inquiry = Inquiry.new(inquiry_params)
    if @inquiry.valid?
      render :action => 'confirm'
    else
      render :action => 'index'
    end
  end

  def thanks
    @inquiry = Inquiry.new(inquiry_params)
    InquiryMailer.received_email(@inquiry).deliver
    redirect_to user_path(current_user.id), notice:'メールを送信しました'
  end

# --------------------------------------------------------------------------------

private

  def inquiry_params
    params.require(:inquiry).permit(:name, :email, :message)
  end


end
