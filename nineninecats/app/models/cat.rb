# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#


require 'action_view'
class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper

    COLORS = [
        "orange",
        "white",
        "black",
        "purple"
    ]

    validates :birth_date, :color, :name, :sex, :description, presence: true
    validates :color, inclusion: COLORS
    validates :sex, inclusion: ["M", "F"]

    def age
       distance_of_time_in_words(self.birth_date, Time.now)
    end


end
