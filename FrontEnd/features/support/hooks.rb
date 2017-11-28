Before do |scenario|
  @feature_name = scenario.feature.name
  @scenario_name = scenario.name
end

AfterStep do |step|
   #setando no prompt de comando a variavel nivel_evidencia, pode controlar te ou não uma evidencia a cada passo
  if ENV['nivel_evidencia'] == 'step'
    screenshot =  "features/reports/screenshots/#{@feature_name}/#{@scenario_name}/#{DateTime.now}.png"
    page.save_screenshot(screenshot)
    tempimg = File.open(screenshot, "rb")
    encoded_img = Base64.encode64(tempimg.read)
    embed("data:image/png;base64,#{encoded_img}",'image/png', "Evidencia visual: #{screenshot}")
    tempimg.close
  end
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

# Para utilizar o nome do step na saída, pode ser utilizada a seguinte base de hooks:
Before do |scenario|
  @steps_count=0
  @feature_steps= []
end

AfterStep do |step|
  @steps_count+=1
end

After do |scenario|
  if scenario.failed?
    scenario.test_steps.each { |step_element| @feature_steps << step_element if step_element.location[:file].match("#{scenario.feature.file}") }
    @name_step = @feature_steps[@steps_count].name.gsub("/","")

    puts "Falha no step: " + @name_step
    
    screenshot =  "#{scenario.name}_#{@name_step}.png"
    
    page.save_screenshot(screenshot)
    tempimg = File.open(screenshot, "rb")
    encoded_img = Base64.encode64(tempimg.read)
    embed("data:image/png;base64,#{encoded_img}",'image/png', "Screenshot Error: #{screenshot}")
    tempimg.close    
  end
end
