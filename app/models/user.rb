class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :first_name, :last_name, :email, :password, :admin

  def admin?
    self.admin == true
  end

  def name
    self.first_name || self.email
  end
end
