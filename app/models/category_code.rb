class CategoryCode

# Returns the BUILDING_PERMIT_CATEGORIES hash
def self.all
  BUILDING_PERMIT_CATEGORIES
end

# Access a code from the BUILDING_PERMIT_CATEGORIES hash by calling the class and passing a code
# EX: CategoryCode[1] => "GENERAL BUILDING-COMMERCIAL"
def self.[] key
  BUILDING_PERMIT_CATEGORIES[key.to_s]
end

# The master list for all category codes and their descriptions
BUILDING_PERMIT_CATEGORIES = {
  "1"       => "GENERAL BUILDING—COMMERCIAL",
  "2"       => "SUB—GENERAL BUILDING—RESIDENTIAL",
  "8"       => "CANVAS AWNING",
  "10"      => "COMMUNICATION TOWER",
  "15"      => "DEMOLITION",
  "18"      => "FENCE",
  "19"      => "FLAGPOLE—SATELLITE DISH",
  "22"      => "GARAGE DOOR REPLACEMENT",
  "29"      => "METAL AWNING & STORM SHUTTER",
  "35"      => "ORNAMENTAL IRON",
  "48"      => "SCREEN ENCLOSURES",
  "51"      => "SIGN (NON-ELECTRIC)",
  "55"      => "SWIMMING POOL",
  "82"      => "WINDOWS (RESIDENTIAL OR COMMERCIAL)",
  "83"      => "STORE FRONT (RESIDENTIAL OR COMMERCIAL)",
  "84"      => "GLAZED CURTAIN WALLS",
  "86"      => "TRAILER TIE DOWN",
  "88"      => "WALK-IN COOLER",
  "91"      => "MARINAS",
  "92"      => "LOW SLOPE APPLICATIONS (GRAVEL, SMOOTH MODIFIED, SINGLE PLY)",
  "95"      => "SHINGLES (ASPHALT, FIBERGLASS)",
  "96"      => "SHINGLES (METAL ROOFS/WOOD SHINGLES & SHAKE)",
  "99"      => "SOIL IMPROVEMENT",
  "100"     => "BULK STORAGE PROPANE TANK",
  "101"     => "REMOVABLE STORM PANELS",
  "102"     => "TIE DOWN OF STORAGE CONTAINERS/MISCELLANEOUS ITEMS",
  "104"     => "SINGLE ENTRANCE DOOR",
  "106"     => "LIGHTWEIGHT CONCRETE",
  "107"     => "TILE ROOF",
  "109"     => "WATERPROOFING SYSTEMS",
  "113"     => "CHINESE DRYWALL REPAIR – RESIDENTIAL",
  "114"     => "CHINESE DRYWALL REPAIR – COMMERCIAL"
}

end

