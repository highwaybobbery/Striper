class Booking < ActiveRecord::Base
  # Attributes
  attr_accessible :time, :email, :description
  serialize :charge


  # Validations
  validates :time, presence: true, :numericality => { :only_integer => true }
  validates :email, presence: true
  validates :description, presence: true
  validates :charge, presence: true

  def bill(token)
    if ! token.blank?
      Stripe.api_key = "l9nLW3HtFxPqLRDlbC0FpneKk9nTif8q"
      self.charge = Stripe::Charge.create(
         :currency => "usd",
         :card => token,
         :amount => time * 15000,
         :description => "payinguser@example.com"
      )
      self.save
    else
      false
    end
  end
end
