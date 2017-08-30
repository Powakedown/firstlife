module ApplicationHelper
  def build_tree(skill)
    html = ""
    html << "<li>"
    html << "<div id='skill-#{skill.id}' class='leaf #{"leaf-level" if skill.level?}'>#{render partial: "skills/skill", locals: { skill: skill } }</div>"
    if skill.children.any?
      html << "<ul>"
      skill.children.each do |skill|
        html << build_tree(skill)
      end
      html << "</ul>"
    end
    html << "</li>"

    html.html_safe
  end

  def is_home?
    controller_name == "trees" && action_name == "index"
  end

  def skill_badge_display(skill)
    if current_user
      if current_user.has_tree_and_skill(skill.tree, skill)
        style = "background:" + skill.tree.color
        klass = ' skill-grey'
      else
        style, klass = nil, nil
      end
    end

    content_tag(:div, class: "skill-badge#{klass}", style: style) do
      cl_image_tag skill.photo.path, class: "skill-level-image" if skill.photo
    end
  end
end
