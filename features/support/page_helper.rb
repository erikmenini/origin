module Pages
  def savings_page
    @savings_page ||= Savings.new
  end
end
