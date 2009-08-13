class Vehicle < ActiveRecord::Base
  belongs_to :car
  belongs_to :type_vehicle
  belongs_to :fuel
  belongs_to :gear
  belongs_to :color

 # has_many   :option, :through => :option_vehicle
  has_many :options_vehicle
  has_many :option, :through => :options_vehicle

  validates_presence_of :amount
  validates_presence_of :note
  validates_presence_of :year
  validates_presence_of :model
  validates_presence_of :doors
  validates_presence_of :km

#validates_presence_of :car
  validates_presence_of :color
  validates_presence_of :gear
  validates_presence_of :fuel
  validates_presence_of :type_vehicle

  def to_label
    "#{car.brand.name} #{car.name} #{color.name} #{year} / #{model}"
  end

  def year
    self.convert_date read_attribute(:year)
  end
  
  def model
    self.convert_date read_attribute(:model)
  end

  protected
  def convert_date(date)
    return date.strftime("%Y") if date.present?
  end
end
