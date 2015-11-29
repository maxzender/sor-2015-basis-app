class User < ActiveRecord::Base
  # Include devise modules. Others available are:
  # :confirmable, :lockable, :recoverable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable

  belongs_to :current_track, class_name: "Title"

  scope :listening, -> {where "current_track_id IS NOT NULL"}
end
