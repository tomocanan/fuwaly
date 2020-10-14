class Status < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :feeling
  belongs_to_active_hash :sleeping
  belongs_to_active_hash :happiness
  belongs_to_active_hash :taking
  
  validates :date, presence: true

  belongs_to :user
end
