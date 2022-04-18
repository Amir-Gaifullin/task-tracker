class UserDecorator < ApplicationDecorator
  delegate :full_name

# dont kill me for this

  def full_name_lst
    "#{full_name}".split(" ")
  end

  def first_name
    full_name_lst[0]
  end

  def last_name
    full_name_lst[1]
  end
end
