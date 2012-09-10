class CreateTimeTable < ActiveRecord::Migration
  def up
  	create_table :created_ats do |t|
      t.timestamps
      t.integer :location_id
    end

  	Location.all.each do |l|
  		t = CreatedAt.new
  		t.created_at = l.created_at
  		t.updated_at = l.updated_at
  		t.location_id = l.id
  		t.save!
  	end

  	remove_column :locations, :created_at
  	remove_column :locations, :updated_at
  end

  def down
  end
end
