class BlogEntry < ActiveRecord::Base
  acts_as_taggable_on :speed, :topic
end
