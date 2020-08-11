class Pet < ApplicationRecord
  SPECIES = ["cat", "puma", "bull", "dog", "snake"]
  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES}

  def days_since_found
    return (Time.zone.today - found_on).to_i if found_on.present?

    "No date inserted on creation"
  end
end
