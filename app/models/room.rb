class Room < ApplicationRecord

  validates :code, uniqueness: true
  before_validation :generate_code

  def generate_code
    self.code = SecureRandom.hex(8)
  end
end
