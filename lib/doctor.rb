class Doctor
  attr_accessor :name 
@@all = []
def initialize(name)
  @name = name 
@@all << self 

end 
def self.all 
  @@all 
end 
def appointments 
  Appointment.all.select do |x|
    x.doctor == self 
     binding.pry 
end
end
def new_appointments(date,patient)
  Patient.new(date,paitent)
end 
  

end 
