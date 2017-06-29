
AfterStep do |step|
    
end


After do |scenario|
  if scenario.failed?
    screenshot =  "#{scenario.name}.png"
    page.save_screenshot(screenshot)
    tempimg = File.open(screenshot, "rb")
    encoded_img = Base64.encode64(tempimg.read)
    embed("data:image/png;base64,#{encoded_img}",'image/png', "Screenshot Error: #{screenshot}")
    tempimg.close    
  end

end