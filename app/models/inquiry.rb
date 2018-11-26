class Inquiry < ApplicationRecord

  include ActiveModel::Model

  attr_accessor :name, :email, :message

# validates-----------------------------------------------------------------------

  validates :name, presence: true
  validates :email, presence: true

end
