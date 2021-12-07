module HerokuHelpers

  def click_menu_option(menu_option)
    find('div a', text: menu_option).click
  end

  def check_context_menu(context_text)
    prompt_text = page.driver.browser.switch_to.alert.text
    expect(prompt_text).to eq(context_text)
  end

  def trigger_context_menu
    evaluate_script "alert('You selected a context menu');"
  end

  def check_context_menu(menu_text)
    binding.pry
      prompted_text = page.driver.browser.switch_to.alert.text
      expect(prompted_text).to eq(menu_text)
  end

  def accept_context_menu
    page.driver.browser.switch_to.alert.accept
  end

  def assert_pressence
    assert_selector('div#menu li a', text: 'Home')
    assert_selector('div#menu li a', text: 'News')
    assert_selector('div#menu li a', text: 'Contact')
    assert_selector('div#menu li a', text: 'About')
  end

  def scroll_to_activate_menu
    scroll_to(page.find("div#page-footer", visible: false))
  end

  def click_dropdown
    find('select#dropdown').click
  end

  def select(item)
    find("option[value='#{item}']").click
  end

  def check_displayed(item)
    e = "'select#dropdown'"
    item_displayed = page.all('e, option[selected]').map(&:text)
    item_displayed.include? item
  end

  def close_browser
    page.driver.browser.close
  end

  # The task is to print out the numbers 1 through 100. The exception being the following:
  #
  # - If the number is divisible by 3, print Fizz
  # - If the number is divisible by 5, print Buzz
  # - If the number is divisible by 3 and 5, print FizzBuzz
  # obj.index("description")
  def testing
    # Moving arrays out to collect the data*
    oddarray = Array.new
    evenarray = Array.new
    mixarray = Array.new
    (1..100).each do |num|
      if num.odd? == true
        # oddarray.insert(0, num)
        oddarray.push(num)
        mixarray.push(num)
        puts "Odd Array: " + oddarray.to_s
        puts "Mix Array" + mixarray.to_s
      elsif num.even? == true
        # evenarray.insert(0, num)
        evenarray.push(num)
        mixarray.push(num)
        puts "Even Array: " + evenarray.to_s
        puts "Mix Array" + mixarray.to_s
      end
    end
  end

  def tested
    fizzbuzz = Array.new
    fizz = Array.new
    buzz = Array.new
    200.times { |i| mynum = rand(100..200)
    # (1..300).each do |mynum|
      if mynum.modulo(3) == 0 && mynum.modulo(5) == 0
        fizzbuzz.push(mynum)
        fizzbuzzing = fizzbuzz.sort
        puts "FizzBuzz " + "#{mynum} " + fizzbuzzing.to_s
      elsif mynum.modulo(5) == 0
        buzz.push(mynum)
        buzzing = buzz.sort
        puts "Buzz " + "#{mynum} " + buzzing.to_s
      elsif mynum.modulo(3) == 0
        fizz.push(mynum)
        fizzing = fizz.sort
        puts "Fizz " + "#{mynum} " + fizzing.to_s
      end
    # end
    }
  end

  def testnumbers
    odd_numbers = Array.new
    even_numbers = Array.new
    mynum = Array.new
    (1..200).each do |num|
      mynum.push(num)
    end

    range_of_numbers = Array.new(10)
    # range_of_numbers.length.times { |i| mynum = rand(100..200)
    range_of_numbers.length.times { |i| mynum.each do |thisnum|
      range_of_numbers.push(thisnum)
      puts "The Numbers " + range_of_numbers.to_s
      if thisnum.odd? == true
        odd_numbers.push(thisnum)
        puts "The Odd Numbers " + odd_numbers.to_s
      elsif thisnum.even? == true
        even_numbers.push(thisnum)
        puts "The Even Numbers " + even_numbers.to_s
      end
    end
    }
    binding.pry
  end

    # range_of_numbers.lengrh.times { |i| range_of_numbers.each do

      # if i.odd? == true
      #   convert = range_of_numbers.to_s
      #   the_numbers = convert.split("")
      #   the_array_numbers.push(the_numbers)
      # end
    # end
    # }
    # puts "The Numbers " + the_array_numbers.to_s
  # end


  def tester
    the_array_numbers = Array.new
    200.times { |i| mynum = rand(100..200)
      convert = mynum.to_s
      the_numbers = convert.split("")
      the_array_numbers.push(the_numbers)
    }
    puts "The Numbers " + the_array_numbers.to_s
  end

  def ofthetests
    swooopSwag = Array.new
    swag = Array.new
    swooop = Array.new
    stuuooswappyoopallthat = Array.new
    onlyswoopswag = Array.new
    missingswag = Array.new
    therealswag = Array.new
    (20..100).each do |num|
      if num.modulo(3) == 0 && num.modulo(5) == 0
        swooopSwag.push(num)
        onlyswoopswag.push(num)
        stuuooswappyoopallthat.push(num)
        puts "SwooopSwag 3 & 5:  [" + num.to_s + "]"
      elsif num.modulo(5) == 0
        swag.push(num)
        stuuooswappyoopallthat.push(num)
        puts "Only Swag 5:  [" + num.to_s + "]"
      elsif num.modulo(3) == 0
        swooop.push(num)
        stuuooswappyoopallthat.push(num)
        puts "Only Swooop 3:  [" + num.to_s + "]"
      elsif num.modulo(2) == 0
        missingswag.push(num)
        stuuooswappyoopallthat.push(num)
        puts "Missing Swag 2:  [" + num.to_s + "]"
      elsif num.modulo(1) == 0
        therealswag.push(num)
        puts "The Real Swag 1:  [" + num.to_s + "]"
      end
    end
    puts "All The Swag(5) and Swoop(3):  " + stuuooswappyoopallthat.to_s
    puts "Only Swag(5):  " + swag.to_s
    puts "Only Swoop(3):  " + swooop.to_s
    puts "Only Swoop(3)Swag(5):  " + onlyswoopswag.to_s
    puts "Missing Swag(5):  " + missingswag.to_s
    puts "The Real Swag(#):  " + therealswag.to_s
    binding.pry
    # The learning: therealswag.index(29) how to get to the index
    # this will everlast for comparing surrounding chnage over.
    # Is the data after all the same value of different.
  end

  # - If the number is divisible by 3, print Fizz
  # - If the number is divisible by 5, print Buzz
  # - If the number is divisible by 3 and 5, print FizzBuzz
  def tests
    set_to_verify = Array.new
    (1..100).each do |num|
      if num.modulo(3) == 0 && num.modulo(5) == 0
        set_to_verify.push(num)
        puts "[" + num.to_s + "]     FizzBuzz"
      elsif num.modulo(5) == 0
        set_to_verify.push(num)
        puts "[" + num.to_s + "]     Buzz"
      elsif num.modulo(3) == 0
        set_to_verify.push(num)
        puts "[" + num.to_s + "]     Fizz"
      elsif num.modulo(2) == 0
        set_to_verify.push(num)
        puts "  :      [" + num.to_s + "]"
      elsif num.modulo(1) == 0
        set_to_verify.push(num)
        puts "  :      [" + num.to_s + "]"
      end
    end
    # Asserts all numbers are there
    actual = set_to_verify.length
    expect(actual).to eq(100)
    puts "all numbers 1 .. 100 verified" + set_to_verify.to_s
  end

  def odd_numbers(l, r)
    numbers = (l..r).to_a
    odd_numbers = Array.new
    other_than_odd = Array.new
    (l..r).each do |val|
      if val.odd? == true
         valint = val.to_int
         odd_numbers.push(valint)
         puts "ODD ONLY: " + odd_numbers.to_s + ""
      elsif val.odd? == false
          other_than_odd.push(val)
          puts "OTHER: " + other_than_odd.to_s + ""
      end
    end
    puts "Other Than Odd: " + other_than_odd.to_s + ""
    puts "Only Odd: " + odd_numbers.to_s + ""
    binding.pry
  end

end
