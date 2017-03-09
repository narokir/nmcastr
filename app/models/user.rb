class User < ApplicationRecord
  has_many :castingcalls, dependent: :destroy
end
