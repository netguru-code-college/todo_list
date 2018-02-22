class UserDecorator < ApplicationDecorator
  delegate_all

  def full_name
    return object.email      if first_name_blank? && last_name_blank?
    return object.first_name if last_name_blank?
    return object.last_name  if first_name_blank?
    "#{object.first_name} #{object.last_name}"
  end

  def creation_date
    object.created_at.strftime('%A, %B %e')
  end

  private

  def first_name_blank?
    object.first_name.blank?
  end

  def last_name_blank?
    object.last_name.blank?
  end
end
