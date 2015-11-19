


normal_moves = {}
winning = {}
normal_moves["R"] = "Rock"
normal_moves["P"] = "Paper"
normal_moves["S"] = "Scissor"
winning["Rock"] = "Scissor"
winning["Paper"] = "Rock"
winning["Scissor"] = "Paper"



function intro()
	print("\nWelcome to Rock-Paper-Scissors!")
	print("options:")
	print("p\tPlay the game\n")
	local input = tostring(io.read())
	return input
end

function get_move(inp)
	while inp ~= "P" and inp ~= "R" and inp ~= "S" and inp ~= "Q" do
		print("Please enter either R, P, or S")
		inp = tostring(io.read())
	end
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



input = intro()
if input == "p" then
	play()
end
