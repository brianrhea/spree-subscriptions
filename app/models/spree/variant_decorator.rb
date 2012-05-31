Spree::Variant.class_eval do
  has_many :issues, :dependent => :destroy
  accepts_nested_attributes_for :issues
  
  attr_accessible :subscribable

  scope :subscribable, where(:subscribable => true)

end
