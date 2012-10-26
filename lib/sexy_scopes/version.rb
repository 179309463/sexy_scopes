module SexyScopes
  module Version
    MAJOR = 0
    MINOR = 3
    TINY  = 0
    
    STRING = [MAJOR, MINOR, TINY].join('.')
  end
  
  VERSION = Version::STRING
end