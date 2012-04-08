module ApplicationHelper

  def flash_messages(div_id='flash_messages', div_class='')
    div_content = ''
    PlanetArgon::FlashMessageConductor::FLASH_MESSAGE_TYPES.each do |key|
      div_content << render_flash_message(key.to_s, flash[key]) unless flash[key].blank?
    end
    if div_content.blank?
      return ''
    else
      return content_tag('div', div_content.html_safe, :id => div_id, :class => div_class)
    end
  end

end