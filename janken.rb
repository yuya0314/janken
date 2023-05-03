class Game
puts"じゃんけん..."

 def poi
  
  index = 0
  jankens=["グー","チョキ","パー","戦わない"]
  jankens.each do |janken|
   print "#{index}(#{janken})"
   index += 1
  end
  puts "　※数字で入力してね"
  poi = gets.chomp.to_i
  if poi==3
     puts "ゲームを終了します"
     exit
  else
  poi_random = rand(3)
  end
  puts "ポイ！"
  puts "-----------------------------"
  puts "あなたは#{jankens[poi]}を出しました"
  puts "相手は#{jankens[poi_random]}を出しました"
  puts "-----------------------------"
  
  if poi == poi_random
      puts "あいこで..."
      return true
  elsif (poi == 0 && poi_random == 1) || (poi == 1 && poi_random == 2) || (poi == 2 && poi_random == 0)
      @poi_win = "あなたの勝ちです"
      puts @poi_win 
      return false
  else @poi_win  = "あなたの負けです" 
      puts @poi_win 
      return false
  end#if
 end#def
 def hoi
  puts "あっちむいて〜"
  index = 0
  directions = ["上","下","左","右"]
  directions.each do |direction|
   print "#{index}(#{direction})"
   index += 1
  end#each
  puts "　※数字で入力してね"
  hoi = gets.chomp.to_i
  hoi_random = rand(4)
  puts "ホイ！"
  puts "-----------------------------"
  puts "あなた:#{directions[hoi]}"
  puts "相手:#{directions[hoi_random]}"
  puts "-----------------------------"
  if hoi == hoi_random && @poi_win == "あなたの勝ちです"
   puts "あなたの勝ちです"
   return false
  elsif  hoi == hoi_random && @poi_win == "あなたの負けです"
    puts "あなたの負けです。"
    return false
  else puts"じゃんけん..."
    return true
  end#if
 end#def
end#class

game = Game.new
result = game.poi
result_next =true
while result_next
 if result
 result = game.poi
 else result_next =  game.hoi
      result=true
 end
end

