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
def new_appointment(date,patient)
    Appointment.new(date,patient,self)
  end 
  def appoitnments
    Appointment.all.select do |x|
      x.appoitnment == self 
  end
end
def patients
  new = []
  Appointments.all.select do |x|
   new << x.patient
 end 
 end 
end
