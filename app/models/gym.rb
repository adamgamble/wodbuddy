require 'securerandom'
class Gym < ActiveRecord::Base
  has_many :user_join_gyms
  has_many :users, :through => :user_join_gyms
  has_many :wods

  before_create :create_code

  private
  def create_code
    self.code = SecureRandom.hex[0..5]
  end
end
