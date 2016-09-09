ActiveAdmin.register Product do

  index do
    column :title
    column :description
    column :is_new
    column :category_id
    column :created_at
    actions
  end

  permit_params :title, :description, :is_new, :picture, :category_id

  form do |f|
    f.inputs 'Product Details' do
      f.input :title
      f.input :description
      f.input :is_new
      f.inputs 'Upload' do
        f.input :picture, required: true, as: :file
      end
      f.input :category_id, :as => :select, :collection => Category.all.map {|u| [u.title, u.id]}, :include_blank => false
    end
    f.actions
  end

  show do |product|
    attributes_table do
      row :title
      row :description
      row :picture do
        image_tag(product.picture.url) #(:thumb))
      end
      row :category_id
    end
  end


end
