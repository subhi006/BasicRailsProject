class Person < ApplicationRecord
  validates :name, presence: { message: "must be given please" }

  before_validation :person_created
  after_validation :person_cre_done
  
  has_many :addresses, inverse_of: :person
  accepts_nested_attributes_for :addresses

  private
  def person_created
    Rails.logger.info("now person going to create")
  end

  def person_cre_done
    Rails.logger.info("person is created successfull!")
  end
end
