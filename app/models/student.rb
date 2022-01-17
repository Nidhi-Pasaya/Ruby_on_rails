class Student < ApplicationRecord
    validates :firstName,:lastName, :mark1, :mark2, :mark3, presence: true
    has_one :StudentProfile, dependent: :destroy

    before_save :capitalizeName
    before_save :totalMarks

    before_destroy :deleteMessage

    def capitalizeName
        self.firstName.capitalize!
        self.lastName = self.lastName.capitalize
    end

    def totalMarks
        self.total = self.mark1 + self.mark2 + self.mark3
        self.percentage = (self.total / 3).round(2)
    end

    def deleteMessage
        logger.info "-------------------------#{self.firstName} is deleted Successfully....--------------------"
    end
end
