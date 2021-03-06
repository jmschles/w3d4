class Choice < ActiveRecord::Base
  attr_accessible :valid_answer, :question

  validates :valid_answer, :presence => true,
                           :uniqueness => true
  # validates :question, :presence => true

  belongs_to :question, :class_name => Question, :foreign_key => :question_id, :primary_key => :id
  has_many :responses, :class_name => Response, :foreign_key => :choice_id, :primary_key => :id, :dependent => :destroy
end
