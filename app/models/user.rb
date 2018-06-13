
class User < ActiveRecord::Base
  has_secure_password

  has_many :rides
  has_many :attractions, through: :rides
  #validates :height, :nausea, :happiness, presence: true

  validates :name, :password, presence: true
  #validates_inclusion_of :admin, :in => [true, false]

  def mood
    if !self.admin
      if self.nausea >= self.happiness
        "sad"
      else
        "happy"
      end
    end
  end

end
