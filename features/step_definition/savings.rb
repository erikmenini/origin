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
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then('The arrow is not able to click') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When('I click on the > icon twice') do
   @savings_page.dateIncrement()
  end
  
  When('I click on the < icon twice') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then('stay in the actual month') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  
  When('I click in the confirm button') do
    pending # Write code here that turns the phrase above into concrete actions
  end