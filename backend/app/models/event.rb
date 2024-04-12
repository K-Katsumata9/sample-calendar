class Event < ApplicationRecord
    validates :title, presence: true, length: { maximum: 100 }
    validates :start, presence: true
    validates :end, presence: true
end
