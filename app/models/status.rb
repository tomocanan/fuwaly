class Status < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :feeling
  belongs_to_active_hash :sleeping
  belongs_to_active_hash :happyness
  belongs_to_active_hash :taking

  with_options numericality: { other_than: 1 } do
    validates :feeling_id
    validates :sleeping_id
    validates :happyness_id
    validates :taking_id
  end

  validates :date, presence: true
end
