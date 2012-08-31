class Location < ActiveRecord::Base
  after_initialize :defs

  def defs
    self.lat ||= 0
    self.long ||= 0
  end
end
