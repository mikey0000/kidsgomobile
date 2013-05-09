class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :terms, :provider, :uid

  validates :terms, :acceptance => {:accept => true}
  # attr_accessible :title, :body

  devise :omniauthable, :omniauth_providers => [:facebook, :twitter, :google_oauth2]

  def self.find_for_oauth(auth)
    user = User.where(:provider => auth.provider, :uid => auth.uid).first
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.oauth_data"] && session["devise.oauth_data"]["extra"]["raw_info"]
        user.provider = session["devise.oauth_data"]["provider"]
        user.uid = session["devise.oauth_data"]["uid"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

end
