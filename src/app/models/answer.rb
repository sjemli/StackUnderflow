class Answer < ActiveRecord::Base
  attr_accessible :content, :score, :validated, :question_id
  belongs_to :question
end
