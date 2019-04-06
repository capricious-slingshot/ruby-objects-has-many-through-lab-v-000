class Patient
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end

  def appointments
    Appointment.all.select{|a| a.patient == self}
  end
end
