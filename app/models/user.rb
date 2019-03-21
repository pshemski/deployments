class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, , :timeoutable, :trackable, :invitable

  def timeout_in
   admin? ? 1.hour : 30.seconds
  end      
end
