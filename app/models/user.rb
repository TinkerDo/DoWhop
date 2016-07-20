class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :attendances, :foreign_key => "attendee_id", :dependent => :destroy
  has_many :attending, :through => :attendances, :source => :event
  has_many :hosted, class_name: "Event", foreign_key: "host_id"
end
