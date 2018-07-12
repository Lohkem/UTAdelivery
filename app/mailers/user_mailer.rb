class UserMailer < ApplicationMailer
  def deliverer_job
    deliverer = params[:deliverer]
    order_id = params[:order_id]
    @url = order_url(order_id)
    mail to: deliverer.email, subject: "Nueva orden!"
  end
end
