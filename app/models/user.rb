class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable, :recoverable
  devise :database_authenticatable, :rememberable
end
