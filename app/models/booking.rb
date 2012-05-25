class Booking < ActiveRecord::Base
  # Attributes
  attr_accessible :time, :email, :description

  # Validations
  validates :time, presence: true, :numericality => { :only_integer => true }
  validates :email, presence: true
  validates :description, presence: true
end
