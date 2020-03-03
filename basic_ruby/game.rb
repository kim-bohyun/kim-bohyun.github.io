while true
    puts "가위바위보 게임을 시작합니다."
    
    print "가위바위보를 입력하세요 : "
    
    user = gets.chomp
    
    # base = ["가위", "바위", "보"]
    base = {0 => "가위", 1 => "바위", 2 => "보"}
    
    idx = Random.rand(3)
    # idx = (0..3).to_a.sample(1)[0];
    
    puts "com1 : #{base[idx]}"
    
    com = "#{base[idx]}"

    if (user == "가위" && com.eql?("보")) || (user.eql?("바위") && com.eql?("가위")) || (user.eql?("보") && com.eql?("바위"))
        puts "승리!!"
        print "다시 시작하시겠습니까? (y/n) : "
        restart = gets.chomp
        if(restart.eql?("n"))
            puts "다음에 또봐요~!!!"
            break;
        end
    elsif (user.eql?("가위") && com.eql?("가위")) || (user.eql?("바위") && com.eql?("바위")) || (user.eql?("보") && com.eql?("보"))
        puts "무승부!"
        
    else
        puts "졌습니다..."
    end
    
end
