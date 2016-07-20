class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :attendances, :foreign_key => "attendee_id", :dependent => :destroy
  has_many :attending, :through => :attendances, :source => :event
  has_many :hosting, class_name: "Event", foreign_key: "host_id"

  def full_name
    "#{self.first_name.capitalize} #{self.last_name.capitalize}"
  end
end
