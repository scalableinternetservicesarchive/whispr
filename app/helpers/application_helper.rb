# frozen_string_literal: true

module ApplicationHelper
    # Creates an anchor tag with link_text as the text, and link_pathing as the path. Activeness is determined via current_page.
    # @param link_text: the text to appear on-screen.
    # @param link_pathing: either the name of a valid route, or an array of valid route names.
    #                      If an array, then the first element will be treated as the destination route.
    #                      All routes will be used to determine activeness via current_page.
    #                      If only a single route, that route is used as the destination and the determiner for activeness.
    # @param extra_classes: an array containing extra classes to append to the link.
    # @param method: if specified, the method to execute when clicked.
    # @return: an anchor tag with the appropriate link, text and styling.
    def nav_link(link_text, link_pathing, extra_classes=nil, method=nil)
        if link_pathing.kind_of?(Array) then
            path = link_pathing[0]
            class_name = "nav-link"
            link_pathing.each do |path|
                if current_page?(path) then
                    class_name = "nav-link active"
                    break
                end
            end
        else
            path = link_pathing
            class_name = current_page?(path) ? "nav-link active" : "nav-link"
        end
        if extra_classes.kind_of?(Array) then
            extra_classes.each do |c|
                class_name += " " + c
            end
        end
        if method then
            link_to(link_text, path, :method => method, class: class_name)
        else
            link_to(link_text, path, class: class_name)
        end
    end

    def cache_key_for_patient_info
        "user_#{@user.id}_#{@user.updated_at}"
    end
    def cache_key_for_profile_info
        "user_#{current_user.id}_#{current_user.updated_at}"
    end
    def cache_key_for_stats
        "user_#{current_user.id}_#{current_user.updated_at}_#{current_user.followers.count}"
    end
end
