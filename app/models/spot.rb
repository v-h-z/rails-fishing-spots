class Spot < ApplicationRecord
  # categories = ["lake", "river cat 1", "river cat 2", "sea", "pond"]

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :category, inclusion: { in: CATEGORIES }
  validates :name, :category, :address, presence: true
  validate :address_must_geocode

  def self.categories
    ["lake", "river cat 1", "river cat 2", "sea", "pond"]
  end

  private

  def address_must_geocode
    if self.geocode.nil?
      errors.add(:address, "This one doesn't geocode")
    end
  end
end
