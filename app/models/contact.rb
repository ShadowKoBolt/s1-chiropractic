class Contact < ActiveRecord::Base
  validates :message, presence: true
  validate :presence_of_email_or_telephone

  private

  def presence_of_email_or_telephone
    if email.blank? && telephone.blank?
      errors.add(:base, I18n::t(".include_email_or_telephone"))
    end
  end
end
