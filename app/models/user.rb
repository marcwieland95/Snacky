class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :orders, inverse_of: :client
  has_many :shoppings, inverse_of: :shopper

  def to_s
    self.email
  end
end
