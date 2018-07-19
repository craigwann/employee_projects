class Employee < ActiveRecord::Base
  has_and_belongs_to_many(:projects)
  validates(:name, :presence => true)
  before_save(:titlecase_name)


  private

  def titlecase_name
    self.name = name.capitalize()
  end
end
