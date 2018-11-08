class InquiryMailer < ActionMailer::Base

  def received_email(inquiry)
	@inquiry = inquiry
	mail(
	from: 'system@example.com',
	to:   'test0roland0test@gmail.com',
	subject: 'お問い合わせ通知'
	)
  end

end