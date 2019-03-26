class Patient
 attr_accessor :name, :doctors, :appointments
 @@all=[]
 
 def initialize (name)
   @name=name
   @@all << self
 end
 
 def self.all
   @@all
 end
 
 def new_appointment(doctor, date)
   Appointment.new(self,doctor, date)
 end
 
  def appointments
    Appointment.all.select do |appointment|
        appointment.patient == self
    end
  end

  def doctors
    appointments.collect {|a| a.doctor}
  end
end