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
end
