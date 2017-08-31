module ApplicationHelper
  def build_tree(skill, user)
    html = ""
    html << "<li>"
    html << "<div id='skill-#{skill.id}' class='leaf #{"leaf-level" if skill.level?}'>#{render partial: "skills/skill", locals: { skill: skill, user: user } }</div>"
    if skill.children.any?
      html << "<ul>"
      skill.children.each do |skill|
        html << build_tree(skill, user)
      end
      html << "</ul>"
    end
    html << "</li>"

    html.html_safe
  end

  def is_home?
    controller_name == "trees" && action_name == "index"
  end

  def skill_badge_display_tree(skill, user)
    skill_badge_display(skill, user)
  end

  def skill_badge_display_user(skill)
    user = User.find(params[:id])
    skill_badge_display(skill, user)
  end


  def skill_badge_display(skill, user)
    if user && user.has_tree_and_skill(skill.tree, skill)
      style = "background:" + skill.tree.color
      klass = ' skill-grey'
    else
      style, klass = nil, nil
    end

    content_tag(:div, class: "skill-badge#{klass}", style: style) do
      cl_image_tag skill.photo.path, class: "skill-level-image" if skill.photo
    end
  end

  def get_tree_path tree, user
    if user == current_user
      my_tree_path(tree)
    else
      user_tree_path(user, tree)
    end
  end

  def add_skill_path user, skill
    if user == current_user
      user_skill_path(user.user_skills.where(skill: skill).first)
    else
      "#"
    end
  end

  def remove_skill_path user, skill
    if user == current_user
      skill_user_skills_path(skill)
    else
      "#"
    end
  end
end
