# == Schema Information
#
# Table name: multiple_choice_options
#
#  id          :integer         not null, primary key
#  option_id   :integer
#  option_type :string(255)
#  solution    :boolean
#  value       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class MultipleChoiceOption < ActiveRecord::Base
  belongs_to :option, :polymorphic => true
end
