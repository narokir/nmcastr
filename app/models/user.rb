class User < ApplicationRecord
  has_many :castingcalls, dependent: :destroy
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise  :database_authenticatable,
          :registerable,
          :recoverable,
          :rememberable,
          :trackable,
          :validatable
          # :confirmable
          # :omniauthable,
          # :omniauth_providers => [:google_oauth2]
end
