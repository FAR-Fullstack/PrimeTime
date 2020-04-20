class PastEvent < ApplicationRecord
  validates_presence_of :title, :description, :date_end, :date_start
  has_many :pictures, dependent: :destroy
end
