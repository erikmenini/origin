module Helper
    def take_photo(arq_name, results)
        arq_path = "report/screenshots/test_#{results}"
        photo = "#{arq_path}/#{arq_name}.png"
        page.save_screenshot(photo)
    end
end