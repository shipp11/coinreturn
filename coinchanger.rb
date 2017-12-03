def change_maker_3000(change)
	coin = {}
	if change > 0 && change < 5
		coin[:penny] = change
	elsif change > 4 && change < 10
		coin [:nickel] = change / 5
		change = change % 5
		if change > 0
			coin [:penny] = change
		end
	elsif change > 9
		coin[:dime] = change / 10
		change = change % 10
		if change > 4
			coin [:nickel] = change / 5
			change = change % 5
			if change > 0 
				coin[:penny] = change 
			end
		end
	end
	coin
end