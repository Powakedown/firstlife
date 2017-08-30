class UserSkillsController < ApplicationController
  before_action :set_skill, only: [:create]
  before_action :set_user_skill, only: [:destroy]

  def create
    @user_skill = current_user.user_skills.new(skill: @skill)
    @user_skill.save
    @tree = @skill.tree
    @user_has_tree = true

    @skill.children.each do |skill|
      current_user.user_skills.create(skill: skill) if skill.level
    end

    respond_to do |format|
      format.html { redirect_to @skill.tree }
      format.js # render app/views/user_skills/create.js
    end
  end

  def destroy
    @user_skill.skill.children.each do |skill|
      user_skill = UserSkill.find_by(skill: skill, user: current_user)
      user_skill.destroy if skill.level
    end
    @user_skill.destroy
    @tree = @user_skill.skill.tree
    @user_has_tree = true

    respond_to do |format|
      format.html { redirect_to @user_skill.skill.tree }
      format.js # render app/views/user_skills/destroy.js
    end
  end

private

  def set_user_skill
    @user_skill = UserSkill.find(params[:id])
  end

  def set_skill
    @skill = Skill.find(params[:skill_id])
  end

end
