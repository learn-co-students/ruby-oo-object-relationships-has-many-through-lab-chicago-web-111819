class Patient

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.patient ==  self
        end
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def doctors
        # self.appointments.map(&:doctor)
        self.appointments.map do  |a|
            a.doctor
            # we've already, in the appointments method in this class, found our appointments
            # now all we have to do is call that method on ourself and map it to find out docs
        end
    end


end