class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :admin
  validates_presence_of :first_name, :last_name
  validates_uniqueness_of :email
  has_many :meal_offer_searches
  
  # attr_accessible :title, :body


  def full_name
    [first_name, last_name].join(" ")
  end

end
