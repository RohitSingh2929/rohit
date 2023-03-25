ActiveAdmin.register Product do
    permit_params :name, :description, :price
  
    index do
      selectable_column
      id_column
      column :name
      column :description
      column :price
      column :current_sign_in_at
      column :sign_in_count
      column :created_at
      actions
    end
  
    filter :name
    filter :description
    filter :price
    filter :current_sign_in_at
    filter :sign_in_count
    filter :created_at
  
    form do |f|
      f.inputs do
        f.input :name
        f.input :description
        f.input :price
      end
      f.actions
    end
  
  end