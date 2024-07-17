class Park
    attr_reader :name, :admission, :vehicles

    def initialize(name, admission)
        @name = name
        @admission = admission
        @vehicles = []
    end

    def add_vehicle(vehicle)
        @vehicles << vehicle
    end

    def all_passengers
        all_passengers = @vehicles.map { |vehicle| vehicle.passengers }
        all_passengers.flatten
    end
end