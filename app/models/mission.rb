class Mission < ApplicationRecord
  belongs_to :scientist
  belongs_to :planet


#   Add validations to the Mission model:

# must have a name, a scientist and a planet
# a scientist cannot join the same mission twice

validates :name, presence: true
validates :scientist, presence: true
validates :scientist, uniqueness: { scope: :name }
validates :planet, presence: true


end
