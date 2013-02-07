module Blorgh
  class Postal < ActiveRecord::Base
    attr_accessible :text, :title
  end
end
