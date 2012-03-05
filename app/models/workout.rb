class Workout
  include Mongoid::Document

  field :key, :type => String
  field :name, :type => String
  field :description, :type => String

  validates :key, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true
end
