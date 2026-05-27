/datum/techweb_node/ai_uplink_brain
	id = TECHWEB_NODE_AI_UPLINK_BRAIN
	display_name = "ai_uplink_brain"
	description = "opens AI uplink brain for your AI"
	prereq_ids = list(TECHWEB_NODE_CYBER_ORGANS_UPGRADED, TECHWEB_NODE_AI_LAWS)
	design_ids = list("ai_uplink_upload")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_5_POINTS)
	announce_channels = list(RADIO_CHANNEL_SCIENCE)

/datum/design/ai_uplink_upload
	name = "AI Uplink Brain"
	desc = "A synthetic brain with capability to let AI control bodies directly."
	id = "ai_uplink_upload"
	build_type = PROTOLATHE | AWAY_LATHE | MECHFAB
	materials = list(
		/datum/material/iron = SHEET_MATERIAL_AMOUNT * 2.5,
		/datum/material/glass = SHEET_MATERIAL_AMOUNT * 2.5,
		/datum/material/gold = SHEET_MATERIAL_AMOUNT,
		/datum/material/silver = SHEET_MATERIAL_AMOUNT,
		/datum/material/diamond = HALF_SHEET_MATERIAL_AMOUNT,
	)
	construction_time = 10 SECONDS
	build_path = /obj/item/organ/brain/cybernetic/ai
	category = list(
		RND_CATEGORY_AI + RND_SUBCATEGORY_AI_UPGRADES,
	)
	departmental_flags = DEPARTMENT_BITFLAG_SCIENCE
