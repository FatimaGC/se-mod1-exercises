class Building
  attr_reader :number,
              :name,
              :apartment_list

  def initialize(number, name)
    @number = number
    @name = name
    @apartment_list = []
  end

  def add_apartment(apartment)
    @apartment_list.push(apartment)
  end

  def list_apartments
    @apartment_list
  end
end