class Friend < ApplicationRecord
  belongs_to :asker, class_name: "User"
  belongs_to :receiver, class_name: "User"

  # validates :asker_id, uniqueness: { scope: :receiver_id, message: "There is an invitation already!" }

   def receivers_list
    @friends = User.where.not(id: current_user.id)
   end
  def self.reacted?(id1, id2)
    case1 = !Friend.where(asker_id: id1, receiver_id: id2).empty?
    case2 = !Friend.where(asker_id: id2, receiver_id: id1).empty?
    case1 || case2
  end

  def self.confirmed_record?(id1, id2)
    case1 = !Friend.where(asker_id: id1, receiver_id: id2, confirmed: true).empty?
    case2 = !Friend.where(asker_id: id2, receiver_id: id1, confirmed: true).empty?
    case1 || case2
  end

  def self.find_invitation(id1, id2)
    if Friend.where(asker_id: id1, receiver_id: id2, confirmed: true).empty?
      Friend.where(asker_id: id1, receiver_id: id2, confirmed: true)[0].id
    else
      Friend.where(asker_id: id2, receiver_id: id1, confirmed: true)[0].id
    end
  end
end
