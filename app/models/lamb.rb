class Lamb < ActiveRecord::Base
  attr_accessible :is_silent
  after_initialize :set_defaults

  def set_defaults
    self.is_silent = true
  end
end
