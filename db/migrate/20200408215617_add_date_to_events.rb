# frozen_string_literal: true

class AddDateToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :date, :date
  end
end
