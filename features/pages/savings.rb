class Savings < SitePrism::Page

    element :amount, '#input'
    element :inscreseArrow, '#reachDateIncrement'
    element :decreaseArrow, '#reachDateDecrement'
    element :decreaseArrowDisable, '.sc-furwcr ftJiaC disabled'
    element :month, '#reachDateMonth' 
end
