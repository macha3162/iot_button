class AddDiffDataToDeliveryTarget < ActiveRecord::Migration[5.0]
  def change
    add_column :delivery_targets, :diff_imps, :integer
    add_column :delivery_targets, :diff_click, :integer
    add_column :delivery_targets, :diff_click_rate, :float
    add_column :delivery_targets, :diff_click_cost, :integer
    add_column :delivery_targets, :diff_conv, :integer
    add_column :delivery_targets, :diff_cost, :integer
    add_column :delivery_targets, :diff_cvr, :integer
    add_column :delivery_targets, :diff_cv_cost, :integer
  end
end
