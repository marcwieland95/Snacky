class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable,
         :invitable,
         :confirmable

  has_many :orders, inverse_of: :client
  has_many :shoppings, inverse_of: :shopper

  def to_s
    self.email
  end
end
