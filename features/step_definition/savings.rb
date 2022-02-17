Given('I am at the buy a house page') do
    savings_page.load
  end
  
  When('I fill the money data with the value {string}') do |money|
    @savings_page.insertAmount(money)

  end
  
  Then('in the field I should have {string}') do |moneyResult|
    @finalAmount = @savings_page.amount
    expect(@finalAmount.value).to eq moneyResult
  end
  
  Then('The field should be empty') do
    @finalAmount = @savings_page.amount
    expect(@finalAmount.value).to eq "" 
  end
  
  When('I click on the < icon') do
    @savings_page.dateDecrease()
  end
  
  Then('The decrease arrow is not able to click') do
    expect(savings_page.has_selector?('svg[class="sc-furwcr ftJiaC disabled"]')).to eq true
  end
  
  When('I click on the > icon') do
   @savings_page.dateIncrement()
  end
  
  Then('stay in the actual month') do
    @month = @savings_page.month
    expect(@month.text).to eq "February" 
  end
  
  When('I click in the confirm button') do
    @savings_page.confirmButton()
  end