class Event < ApplicationRecord
  belongs_to :user, foreign_key: 'host_id'
  has_many :attendances, :foreign_key => "event_id",:dependent => :destroy
  has_many :guests, :through => :attendances, :source =>:user
end
