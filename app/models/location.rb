class Location < ActiveRecord::Base
  after_initialize :defs
  has_one :created_at, :foreign_key => :location_id
  accepts_nested_attributes_for :created_at

  after_save :create_created_at


  def defs

    self.lat ||= 0
    self.long ||= 0
  end

  def create_created_at
  	ca = CreatedAt.new
  	ca.location_id = id
  	ca.created_at = Time.now #if self.new_record?
  	ca.updated_at = Time.now

  	puts ca.inspect
  	ca.save!

  	ca.reload
  	puts ca.inspect
  end

end
