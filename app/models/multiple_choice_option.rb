class MultipleChoiceOption < ActiveRecord::Base
  belongs_to :option, :polymorphic => true
end
