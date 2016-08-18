class NurseEvent < ActiveRecord::Base
	validates :id, presence: true
	validates	:nurse_id, presence: true
	validates :date, presence: true
  validates :confirmed, presence: true
	validates :shift, presence: false
end
