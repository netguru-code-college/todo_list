class UserDecorator < ApplicationDecorator
  delegate_all

  def full_name
    "#{object.first_name} #{object.last_name}"
  end

  def creation_date
    object.created_at.strftime('%A, %B %e')
  end
end
