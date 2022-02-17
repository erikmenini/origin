class Savings < SitePrism::Page
    set_url ''
    element :amount, 'input[data-testid="input"]'
    element :inscreseArrow, 'svg[data-testid="reachDateIncrement"]'
    element :decreaseArrow, 'svg[data-testid="reachDateDecrement"]'
    element :decreaseArrowDisable, 'svg[class="sc-furwcr ftJiaC disabled"]'
    element :month, 'p[data-testid="reachDateMonth"]' 
    element :buttonConfirm, 'button[class="sc-gKclnd ffjNtQ"]'

    def insertAmount(money)
        amount.set money
    end

    def dateIncrement()
        inscreseArrow.click
    end 
    def dateDecrease()
        decreaseArrow.click
    end
    
    def confirmButton()
        buttonConfirm.click
    end
end
