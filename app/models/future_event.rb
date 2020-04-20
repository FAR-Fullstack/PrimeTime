class FutureEvent < ApplicationRecord
  validates_presence_of :title, :description, :date_end, :date_start
end
