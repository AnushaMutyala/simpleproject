class Task < ApplicationRecord
  belongs_to :project
  
  validates :status, inclusion: {in: ['notStarted','in_progress','done']}

  STATUS_OPTIONS = [['Not Started','notStarted'],['IN progress','in_progress'],['Done','done']]
end
