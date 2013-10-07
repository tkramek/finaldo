class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  
  #has_many :instruments
  has_many :portfolios
  #has_many :instruments, through: :portfolios
  
  after_save do
    p = Portfolio.new
    p.user_id = self.id
    p.save
  end
end
