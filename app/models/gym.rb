require 'securerandom'
class Gym < ActiveRecord::Base
  has_many :users
  has_many :wods

  before_create :create_code

  private
  def create_code
    self.code = SecureRandom.hex[0..5]
  end
end
