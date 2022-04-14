require 'json'
require 'ostruct'
module LockTextHelper
  def lock_text(cooked, admin)
    if !admin

        cooked =
          cooked.gsub(/\[(lock)\](.*?)\[\/\1\]/) { '#########' }

    else
      cooked =
        cooked.gsub(/\[(lock)\](.*?)\[\/\1\]/) { $2 }
    end
    cooked
  end

=begin
  def lock_text_obj(obj, admin)
    obj_json = obj.to_json

    if admin
      obj_json = obj_json.gsub(/\[(lock)\](.*?)\[\/\1\]/) { $2 }
    else
      obj_json = obj_json.gsub(/\[(lock)\](.*?)\[\/\1\]/) { '#########' }
    end

    obj_json
  end
=end
end
