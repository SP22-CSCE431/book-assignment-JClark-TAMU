json.extract! userbook, :id, :user_id, :book_id, :created_at, :updated_at
json.url userbook_url(userbook, format: :json)
