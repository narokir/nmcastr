class AddRelationToCastingcall < ActiveRecord::Migration[5.0]
  def change
    add_reference :castingcalls, :user, foreign_key: true
  end
end
