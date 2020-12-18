class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def is_active
    if self.active == false
      "This student is currently inactive."
    else 
      "This student is currently active."
    end
    #if statement if they're active
  end
 end

#<h1> <%=@student.is_active%> </h1>