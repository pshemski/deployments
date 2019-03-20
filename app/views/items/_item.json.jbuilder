json.extract! item, :id, :parent_id, :category_id, :model_id, :brand_id, :invoice_id, :department_id, :serial_number, :country_of_orgin, :price, :weight, :state, :barcode, :note, :created_at, :updated_at
json.url item_url(item, format: :json)
