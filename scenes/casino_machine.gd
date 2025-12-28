extends StaticBody2D

@onready var interactable: Area2D = $interactable
@onready var pixel_art_slot_machine_casino_and_betting_machine_icon_for_8_bit_game_on_white_background_vector_removebg_preview: Sprite2D = $PixelArtSlotMachineCasinoAndBettingMachineIconFor8BitGameOnWhiteBackgroundVectorRemovebgPreview


func _ready() -> void:
	interactable.interact = _on_interact
	
	
func _on_interact():
	if pixel_art_slot_machine_casino_and_betting_machine_icon_for_8_bit_game_on_white_background_vector_removebg_preview.frame == 0:
		pixel_art_slot_machine_casino_and_betting_machine_icon_for_8_bit_game_on_white_background_vector_removebg_preview.frame = 1
		
		print("Let's go gambling!")
