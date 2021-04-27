module GroupHelper

    def show_all_group_workhours(group)
        all_contents = content_tag(:br)
        group.workhours.each do |workhour|
            all_contents << content_tag(:div, class: "information") do
                inside_content = content_tag(:div, workhour.first_group_icon, class: "information-image")
                inside_content << content_tag(:div, workhour.name, class: "information-name")
                inside_content << content_tag(:div, workhour.amount, class: "information-amount")
                inside_content << content_tag(:div, workhour.created_at, class: "information-date")
                inside_content << content_tag(:div, (link_to "Edit Workhours", edit_workhour_path(workhour), class: "my-edit-button"), class: "edit-button-container") 
                inside_content
            end
        end
        all_contents
    end



end
