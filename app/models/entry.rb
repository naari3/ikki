# frozen_string_literal: true

class Entry < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  validates :is_hidden, inclusion: { in: [true, false] }
  belongs_to :user

  def to_html
    pipeline = HTML::Pipeline.new([
                                    HTML::Pipeline::MarkdownFilter,
                                    HTML::Pipeline::RougeFilter
                                  ])
    pipeline.call(body)[:output]
  end
end
