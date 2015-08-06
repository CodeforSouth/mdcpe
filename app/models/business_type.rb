class BusinessType
  attr_accessor :name, :proposed_use_descriptions

  def initialize(name, proposed_use_descriptions)
    @name = name
    @proposed_use_descriptions = proposed_use_descriptions
  end

  def categories
    Permit.where(proposedusedescription: @proposed_use_descriptions).select(:categories).distinct.pluck(:categories)
  end

  def category_names
    categories.map {|category| CategoryCode[category]}
  end

  def category_averages
    Permit.where(proposedusedescription: @proposed_use_descriptions).select(:categories).group(:categories).average(:estimatedvalue)
  end


  def self.all
    [ COMMERCIAL_OFFICE,
      RESIDENTIAL,
      LEISURE_TRAVEL_RECREATIONAL,
      RETAIL_SERVICES,
      MEDICAL, EDUCATION,
      INDUSTRIAL,
      MISCELLANEOUS
    ]
  end

  def self.find_by_name name
    all.each do |a|
      if name == a.name
        return a
      end
    end
  end

  # Commercial / Offices categories
  COMMERCIAL_OFFICE = self.new("Commercial/ Office",
    ["OFFICE USE ONLY",
      "OFFICE - PROFESSIONAL BUILDINGS",
      "OFFICE - SALES",
      "ENTR/FEAT-GATEHOUSE/WATCHMAN TRAILER"
      ])

  # Residential categories
  RESIDENTIAL = self.new("Residential",
    ["SINGLE FAM RES-CLUST-ZERO LOT-TOWN HOUSE",
      "5 UNITS OR MORE  - RESIDENTIAL", "DUPLEX",
      "APT BUILDING 3-4 UNITS",
      "TRAILER TIE DOWNS"
      ])

  # Leisure / Travel / Recreational categories
  LEISURE_TRAVEL_RECREATIONAL = self.new("Leisure/ Travel/ Recreational",
    ["BAR-LOUNGE-NIGHT CLUB",
      "RESTAURANT/CAFET/BAR/LOUNGE/NIGHT CLUB",
      "BAR/COCKTAIL LOUNGE/RESTAURANTS",
      "RECREATIONAL COURTS - CLUB HOUSE",
      "CABANA/CHICKEE/GAZEBO/CLUB HOUSE/REC BDG",
      "SHORT TERM EVENT",
      "RESTAURANT-CAFETERIA",
      "HOTEL",
      "MOTEL",
      "GYM/EXERCISE CLUB",
      "BOWLING ALLEY/SKATING RINK"
      ])

  # Retail / Services categories
  RETAIL_SERVICES = self.new("Retail/ Services",
    ["RETAIL SALES",
      "BEAUTY SALON-BARBER SHOP",
      "GAS/SERV STATION/AUTO REPAIR/CAR WASH",
      "CAR DEALERSHIP - NEW",
      "CAR DEALERSHIP - USE",
      "PARKING GARAGE/OPEN DECK",
      "BODY AND MECHANICAL REPAIR SHOPS-VEHICLS",
      "BANKS - AUTOMATIC TELLER",
      "FUNERAL HOME",
      "BANQUET HALL",
      "WAREHOUSE",
      "WAREHOUSE/STORAGE"
      ])

  # Medical categories
  MEDICAL = self.new("Medical", ["HOSPITALS",
    "ANIMAL HOSPITAL",
    "CLINIC/SANITARIUMS/HEALTH CENTERS",
    "RESEARCH CENTER - LABORATORY",
    "REST HOMES/CONVALES/ACLF/ORPHANAGE"
    ])

  # Education categories
  EDUCATION = self.new("Education", ["DAYCARE - KINDERGARTEN",
    "TRADE SCHOOLS",
    "SCHOOL BUILDINGS",
    "COLLEGE - UNIVERSITY",
    "LIBRARIES - MUSEUMS - SCIENCE - ZOO"
    ])

  # Industrial categories
  INDUSTRIAL = self.new("Industrial", ["INDUSTRIAL USES",
    "AIRPORT-SEAPORT - TRUCK TERMINALS",
    "CONSTRUCTION TRAILER/HANDICAPPED RAMP",
    "MARINA",
    "BAKERY PLANT",
    "PAVING/OPEN LOTS",
    "MANUFACTURING",
    "AGRICULTURAL",
    "UTILITIES"
    ])

  # Miscellaneous categories
  MISCELLANEOUS = self.new("Miscellaneous", ["GOVERNMENT FACILITIES",
    "CEMENTARY",
    "CHURCHES-RELIGIOUS BUILDINGS",
    "JAIL/STOCKADE"
    ])
end
