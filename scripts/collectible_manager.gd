extends Node

static var total_award_amount: int

signal on_collectible_award_receive

func give_pickup_award(collectible_award: int):
	total_award_amount += collectible_award
	
	on_collectible_award_receive.emit(total_award_amount)
