class UserSkillsController < ApplicationController
  before_action :set_skill, only: [:create]

  def create
    @user_skill = current_user.user_skills.new(skill: @skill)
  end

 private

 def set_skill
    @skill = Skill.find(params[:skill_id])
  end

end
