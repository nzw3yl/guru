module HomeHelper
  def get_user_avatar_url(user_id)
    User.find(user_id).avatar_url(:thumb).to_s
  end
  
  def question_preview_with_link(question, length)
    output = h truncate(question.content, :length => length, :omission => '...')
    output += link_to("more", question, class: "btn btn-mini btn-info") if question.content.size > length
    output.html_safe
  end
end
