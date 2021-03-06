class User < ApplicationRecord
  enum role: { member: 0, moderator: 1, admin: 2 }, _default: 0
  validates :first_name, :last_name, :email, :password, :password_confirmation, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
