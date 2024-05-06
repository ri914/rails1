class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  validate :start_date_before_end_date

  private

  def start_date_before_end_date
    return if start_date.blank? || end_date.blank?

    if start_date > end_date
      errors.add(:start_date)
    end
  end
end
