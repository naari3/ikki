# frozen_string_literal: true

class Entry < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  validates :body_md, presence: true
  validates :updated_at, presence: true
  validates :is_hidden, presence: true
  belongs_to :user
end
