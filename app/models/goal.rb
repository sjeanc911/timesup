class Goal < ActiveRecord::Base
  belongs_to :owner, polymorphic: true

  has_many :sub_goals, -> { order 'priority' }, as: :owner, class_name: "Goal"

  def accomplished?
    accomplished_at.present?
  end
  alias :done? :accomplished?

end
