// priority: 0

// Visit the wiki for more info - https://kubejs.com/

LootJS.modifiers((event) => {
	event.addBlockLootModifier('caverns_and_chasms:soul_silver_ore').replaceLoot('caverns_and_chasms:silver_nugget', '6x spelunkery:raw_silver_nugget', true)
	}
)