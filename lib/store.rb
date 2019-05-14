class Store < ActiveRecord::Base

  has_many :employees
  validates :name, length: { minimum: 3 }
  validate :must_have_a_positive_annual_revenue
  validate :must_carry_at_least_one_men_or_woman_appearl

  def must_have_a_positive_annual_revenue
    if !annual_revenue or (annual_revenue <= 0)
      errors.add(:annual_revenue, "must be greater than 0")
      puts "annual_revenue must be greater than 0"
    end
  end

  def must_carry_at_least_one_men_or_woman_appearl
    if (mens_apparel == false) and (womens_apparel == false)
      errors.add(:mens_apparel, "must sell atleast one kind of apparel")
      puts "must sell atlaest one kind of apparel"
    end
  end

end
