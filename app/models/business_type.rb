class BusinessType
  attr_accessor :name, :proposed_use_descriptions, :sentence_description

  def initialize(name, proposed_use_descriptions, sentence_description)
    @name = name
    @proposed_use_descriptions = proposed_use_descriptions
    @sentence_description = sentence_description
  end

  # Returns the category codes from the corresponding @proposed_use_description
  def categories
    Permit.where(proposedusedescription: @proposed_use_descriptions).select(:categories).distinct.pluck(:categories)
  end

  # Returns the category code name from the CategoryCode model
  def category_names
    categories.map {|category| CategoryCode[category]}
  end

  # Returns the average of a category with @proposed_use_descriptions
  def category_averages
    Permit.where(proposedusedescription: @proposed_use_descriptions).select(:categories).group(:categories).order(:categories).average(:estimatedvalue)
  end

  # Return the array of business objects
  def self.all
    [COMMERCIAL_OFFICE, RESIDENTIAL, LEISURE_TRAVEL_RECREATIONAL, RETAIL_SERVICES, MEDICAL, EDUCATION, INDUSTRIAL, MISCELLANEOUS]
  end

  # Return the business objct by name
  def self.find_by_name name
    all.each do |a|
      if name == a.name
        return a
      end
    end
  end

  # Commercial / Offices categories
  COMMERCIAL_OFFICE = self.new("Commercial & Office",
    ["OFFICE USE ONLY", "OFFICE - PROFESSIONAL BUILDINGS", "OFFICE - SALES","ENTR/FEAT-GATEHOUSE/WATCHMAN TRAILER"],
    "Office use only, Office - Professional Buildings, Office - Sales, Entrance/Feature-Gatehouse/Watchman Trailer")

  # Residential categories
  RESIDENTIAL = self.new("Residential",
    ["SINGLE FAM RES-CLUST-ZERO LOT-TOWN HOUSE", "5 UNITS OR MORE  - RESIDENTIAL", "DUPLEX", "APT BUILDING 3-4 UNITS", "TRAILER TIE DOWNS"],
    "Single Fam Res-Clust-Zero Lot-Town House, 5 Units or More - Residential, Duplex, Apartment Building 3-4 Units, Trailer Tie Downs")

  # Leisure / Travel / Recreational categories
  LEISURE_TRAVEL_RECREATIONAL = self.new("Leisure, Travel & Recreational",
    ["BAR-LOUNGE-NIGHT CLUB", "RESTAURANT/CAFET/BAR/LOUNGE/NIGHT CLUB", "BAR/COCKTAIL LOUNGE/RESTAURANTS", "RECREATIONAL COURTS - CLUB HOUSE",
      "CABANA/CHICKEE/GAZEBO/CLUB HOUSE/REC BDG", "SHORT TERM EVENT", "RESTAURANT-CAFETERIA", "HOTEL", "MOTEL", "GYM/EXERCISE CLUB",
      "BOWLING ALLEY/SKATING RINK"],
      "Bar-Lounge-Night Club, Resturant/Cafet/Bar/Lounge/Night Club, Bar/Cocktail Lounge/Resturants, Recreational Courts - Club House,
      Cabana/Chickee/Gazebo/Club House/ Rec BDG, Short Term Event, Resturant-Cafeteria, Hotel, Motel, Gym/Exercise Club, Bowling Alley/Skating Rink")

  # Retail / Services categories
  RETAIL_SERVICES = self.new("Retail & Services",
    ["RETAIL SALES", "BEAUTY SALON-BARBER SHOP", "GAS/SERV STATION/AUTO REPAIR/CAR WASH", "CAR DEALERSHIP - NEW", "CAR DEALERSHIP - USE",
      "PARKING GARAGE/OPEN DECK", "BODY AND MECHANICAL REPAIR SHOPS-VEHICLS", "BANKS - AUTOMATIC TELLER", "FUNERAL HOME", "BANQUET HALL", "WAREHOUSE",
      "WAREHOUSE/STORAGE"],
      "Retail Sales, Beauty Salon-Barber Shop, Gas/Service Station/Auto Repair/Car Wash, Car Dealership - New, Car Dealership - Use, Parking Garage/Open Deck,
      Body and Mechanical Repair Shops-Vehicles, Banks - Automatic Teller, Funeral Home, Banquet Hall, Warehouse, Warehouse/Storage")

  # Medical categories
  MEDICAL = self.new("Medical",
    ["HOSPITALS", "ANIMAL HOSPITAL", "CLINIC/SANITARIUMS/HEALTH CENTERS", "RESEARCH CENTER - LABORATORY", "REST HOMES/CONVALES/ACLF/ORPHANAGE"],
    "Hospitals, Animal Hospitals, Clinic/Sanitariums/Health Centers, Research Center - Laboratory, Rest Homes/Convales/ACLF/Orphanage")

  # Education categories
  EDUCATION = self.new("Education",
    ["DAYCARE - KINDERGARTEN", "TRADE SCHOOLS", "SCHOOL BUILDINGS", "COLLEGE - UNIVERSITY", "LIBRARIES - MUSEUMS - SCIENCE - ZOO"],
    "Daycare - Kindergarten, Trade Schools, School Buildings, College - University, Libraries-Museums-Science-Zoo")

  # Industrial categories
  INDUSTRIAL = self.new("Industrial",
    ["INDUSTRIAL USES", "AIRPORT-SEAPORT - TRUCK TERMINALS", "CONSTRUCTION TRAILER/HANDICAPPED RAMP", "MARINA", "BAKERY PLANT","PAVING/OPEN LOTS",
      "MANUFACTURING", "AGRICULTURAL", "UTILITIES"],
      "Industrial Uses, Airport-Seaport - Truck Terminals, Construction Trailer/Handicapped Ramp, Marina, Bakery Plant, Paving/Open Lots, Manufacturing, Agricultural,
      Utilities")

  # Miscellaneous categories
  MISCELLANEOUS = self.new("Miscellaneous",
    ["GOVERNMENT FACILITIES", "CEMENTARY", "CHURCHES-RELIGIOUS BUILDINGS", "JAIL/STOCKADE"],
    "Government Facilities, Cementary, Churches-Religious Buildings, Jail/Stockade")
end
