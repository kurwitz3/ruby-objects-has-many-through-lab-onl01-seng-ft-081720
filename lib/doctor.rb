class Doctor 
  attr_accessor :name,:appoitnment,:patient
 @@all = []
 def initialize(name)
   @name = name 
   @@all << self
 end

def self.all 
  @@all
end 
def new_appointment(date,patient)
    Appointment.new(date,patient,self)
  end 
  def appointments
    Appointment.all.select do |x|
      x.appointment == self 
  end
end
def patients
  new = []
  Appointment.all.select do |x|
   new << x.patient
 end 
 end 
end
