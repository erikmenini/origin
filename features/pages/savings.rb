class Savings < SitePrism::Page
    set_url ''
    element :amount, :xpath, '//*[@id="root"]/div[2]/div/div[2]/div[1]/div/div/input'
    #element :inscreseArrow, :xpath '//*[@id="root"]/div[2]/div/div[3]/div/div/div/reachDateIncrement'
    element :decreaseArrow, '#reachDateDecrement'
    element :decreaseArrowDisable, '.sc-furwcr ftJiaC disabled'
    element :month, '#reachDateMonth' 
    element :buttonConfirm, '.sc-gKclnd ffjNtQ'

    def insertAmount(money)
        amount.set money
    end

   def dateIncrement()
        inscreseArrow.click
   end 
end
