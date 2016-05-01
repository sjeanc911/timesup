module DashboardHelper

  def goal_display_size
    5
  end

  def get_sub_goal_class(index)
    index < goal_display_size ? '' : 'additional-sub-goals'
  end

  def get_sub_goal_visibility(index)
    index < goal_display_size ? '' : 'display: none;'
  end

  def more_sub_goals_link(goal)
    "#{goal.sub_goals.size - goal_display_size} more.."
  end
end
