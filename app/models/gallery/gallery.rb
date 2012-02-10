class Gallery::Gallery < ActiveRecord::Base
  
  cms_is_categorized if defined?(ComfortableMexicanSofa)

  self.table_name = :gallery_galleries
  
  # -- Relationships --------------------------------------------------------
  has_many :photos, :dependent => :destroy
  
  # -- Validations ----------------------------------------------------------
  validates :title,
    :presence => true
    
  validates :identifier,
    :presence   => true,
    :uniqueness => true,
    :format     => { :with =>  /^\w[a-z0-9_-]*$/i }
    
end