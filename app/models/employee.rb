class Employee < ApplicationRecord
	validates :email, presence: true
	validates :email, presence: true
	validates :last_name, presence: true
	validates :first_name, presence: true
	has_one :account, dependent: :destroy
	has_one :address, dependent: :destroy 
  has_one :company, dependent: :destroy
	enum gender: [:male, :female, :other]

end
