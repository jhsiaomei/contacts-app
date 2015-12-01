class Contact < ActiveRecord::Base
  belongs_to :user
  has_many :grouped_contacts
  has_many :groups, through: :grouped_contact

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
