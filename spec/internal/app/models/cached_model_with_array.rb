class CachedModelWithArray < ActiveRecord::Base
  acts_as_taggable
end

class TaggableModelWithJson < ActiveRecord::Base
  acts_as_taggable
  acts_as_taggable_on :skills
end
