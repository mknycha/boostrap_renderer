# frozen_string_literal: true

module ActionView
  class BootstrapRenderer < LinkRenderer
    protected

    def page_number(page)
      if page == current_page
        page_item(link(page, '#', class: 'current'), 'active')
      else
        page_item(link(page, page, rel: rel_value(page)))
      end
    end

    def gap
      text = @template.will_paginate_translate(:page_gap) { '&hellip;' }
      page_item(%(<span class="gap">#{text}</span>), 'disabled')
    end

    def previous_or_next_page(page, text, classname)
      if page
        page_item(link(text, page, class: classname))
      else
        page_item(link(text, '#', class: classname), 'disabled')
      end
    end

    def html_container(html)
      tag(:nav, tag(:ul, html, container_attributes))
    end

    private

    def page_item(content, additional_class = '')
      tag(:li, content, class: ('page-item ' + additional_class))
    end
  end
end
