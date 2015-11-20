


normal_moves = {}
winning = {}
normal_moves["R"] = "Rock"
normal_moves["P"] = "Paper"
normal_moves["S"] = "Scissor"
winning["Rock"] = "Scissor"
winning["Paper"] = "Rock"
winning["Scissor"] = "Paper"

numMoves = 3

function intro()
	print("\nWelcome to Rock-Paper-Scissors!")
	print("options:")
	print("p\tPlay the game\n")
	print("a\tAdd moves (e.g. Superman, God, Dr. Albing\n")
	local input = tostring(io.read())
	return input
end

function get_move(inp)
	return inp
end

function who_won(cin, uin)
	-- int that stores who won, 0 is computer 1 is user
	uin = normal_moves[uin]
	local won
	if cin == uin then
		won = "You both chose the same thing, play again!"
	end
	if winning[cin] == uin then
		won = cin .. " beats " .. uin .. ". You lose!"
	end
	if winning[uin] == cin then
		won = uin .. " beats " .. cin .. ". You win!"
	end
	return won
end


-- this is where I am now
function make_move(inp)
	print("You chose " .. normal_moves[inp])
	local comp = "Rock"
	print(who_won(comp,inp))
	
end

function play()
		print("You are now playing Rock-Paper-Scissors against an advanced ai, good luck!")
		print("Enter (R)ock, (P)aper, (S)cissors - R or P or S. Q will end the game\n")

		local inp = get_move(tostring(io.read()))
		while inp ~= "Q" do
			make_move(inp)
			inp = get_move(tostring(io.read()))
		end

end

function addMove()
                print("Enter the string representation of your new move\n")
                local name = tostring(io.read())                
                print("Enter the symbol representation for your move, (e.g. K for Kryptonite)\n")
                local symbol = tostring(io.read())

                print("Enter which moves your new move beats.\nThese are the current moves:")
                for key,value in pairs(normal_moves) do 
                    print(value)
                end
                
                normal_moves[symbol] = name                    

                print("Hit enter after inputting each move, and type done when done")
                local entry = tostring(io.read())
                while entry ~= "done" do
                      winning[name] = entry
                      entry = tostring(io.read())
                end              
end

while input ~= "p" do
      input = intro()    
      if input == "p" then
         play()
      end
      if input == "a" then
         addMove()
      end
end
