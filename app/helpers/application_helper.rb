module ApplicationHelper
  def build_tree(skill)
    html = ""
    html << "<li>"
    html << "<div class='leaf #{"leaf-level" if skill.level?}'>#{render partial: "skills/skill", locals: { skill: skill } }</div>"
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
end
