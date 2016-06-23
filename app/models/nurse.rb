class Nurse < ActiveRecord::Base
	has_secure_password

	validates :full_name, presence: true
	validates :phone_number	, presence: true
	validates :email_address, presence: true
end
