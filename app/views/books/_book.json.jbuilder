json.extract! book, :id, :name, :description, :image, :stock, :price, :author, :created_at, :updated_at
json.url book_url(book, format: :json)