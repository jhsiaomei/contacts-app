class Contact < ActiveRecord::Base
  belongs_to :user

  def display_created_time
    created_at.strftime("%m/%e/%Y at %l:%M %p")
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def japanese_number
    "+81 #{phone}"
  end
end
