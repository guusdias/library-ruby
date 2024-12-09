class Cart
  def initialize(session)
    @session = session
    @session[:cart] ||= []
  end

  def add_book(book)
    @session[:cart] << book.id
  end

  def items
    Book.find(@session[:cart])
  end

  def total
    items.sum(&:price)
  end

  def clear
    @session[:cart] = []
  end
end