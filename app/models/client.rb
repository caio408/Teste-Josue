class Client < ApplicationRecord
  validates_presence_of :client_name, presence: true
  validate :valid_age
  private

  def valid_age
    if client_age == nil
      errors.add(:client_age, message: "can't be blank!")
    elsif client_age < 18
      errors.add(:client_age, message: "for Adults only!")
    end
  end
end
