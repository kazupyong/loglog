class Organization < ActiveRecord::Base
  establish_connection(:development_iqube) if Rails.env.development?
  establish_connection(:production_iqube) if Rails.env.production?
end
