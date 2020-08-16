module ApplicationHelper
  def dis_coucou
    "coucou"
  end

  def talk_to(someone)
    "#{dis_coucou.capitalize} #{someone.first_name.capitalize} #{someone.last_name.capitalize}!"
  end

  def now
    time = Time.now.strftime("Today is %A, %dth of %B, %Y")
    if Time.now.hour > 18
      "#{time}. Good night!"
    elsif Time.now.hour > 12
      "#{time}. Good afternoon!"
    else
      "#{time}. Good day!"
    end
  end
end
