class CreatePictures < ActiveRecord::Migration
  def self.up
    create_table :pictures do |t|
      t.references :vehicle
      t.string     :picture_file_name

      t.timestamps
    end
  end

  def self.down
    drop_table :pictures
  end
end
