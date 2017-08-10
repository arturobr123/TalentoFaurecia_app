class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true, length: {in: 3..50}

  has_many :vacantes
  has_many :evaluations

  has_many :notifications


  def unviewed_notifications_count
    Notification.for_admin(self.id)
    
  end

end
