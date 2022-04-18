# frozen_string_literal: true
module LockTextHelper
  def lock_text(cooked, admin, yours)
    if yours
      cooked =
        cooked.gsub(/\[(lock)\](.*?)\[\/\1\]/) { $2 }
    else
      if !admin
        cooked =
          cooked.gsub(/\[(lock)\](.*?)\[\/\1\]/) { '#########' }
      else
        cooked =
          cooked.gsub(/\[(lock)\](.*?)\[\/\1\]/) { $2 }
      end
    end
    cooked
  end
end
