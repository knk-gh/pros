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
    gon.url = unauthenticated_root_path
    if user_signed_in?
      redirect_to user_path(current_user.id), notice:'メールを送信しました'
    else
      render :action => 'thanks'
    end
  end

# --------------------------------------------------------------------------------

private

  def inquiry_params
    params.require(:inquiry).permit(:name, :email, :message)
  end


end
