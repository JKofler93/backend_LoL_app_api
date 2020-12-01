class Comment < ApplicationRecord
  belongs_to :userId
  belongs_to :championId
end
