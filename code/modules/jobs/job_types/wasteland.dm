/datum/job/wasteland
	department_flag = WASTELAND

/*
Raider
*/

/datum/job/wasteland/f13raider
	title = "Raider"
	flag = F13RAIDER
	department_head = list("Captain")
	head_announce = list("Security")
	faction = FACTION_WASTELAND
	social_faction = FACTION_RAIDERS
	total_positions = 10
	spawn_positions = 10
	description = "However you came to be here, you are a raider. There is a constant trickle of people on I-80 for you to con, rob, ransom, or enslave. You may find work or refuge with one of the local factions, or choose to go it alone and forge your own raider empire."
	supervisors = "Your desire to make things interesting and fun. Don't play this as wastelander+."
	selection_color = "#dddddd"
	exp_type = EXP_TYPE_FALLOUT

	outfit = /datum/outfit/job/wasteland/f13raider

	access = list()
	minimal_access = list()
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/wasteland/f13raider,
			/datum/job/eighties,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/wasteland/f13raider,
			/datum/job/wendover,
		),
		/datum/matchmaking_pref/patron = list(
			/datum/job/wasteland/f13raider,
		),
		/datum/matchmaking_pref/protegee = list(
			/datum/job/wasteland/f13raider,
			/datum/job/wasteland/f13tribal
		),
		/datum/matchmaking_pref/outlaw = list(
			/datum/job/wasteland/f13raider,
			/datum/job/wendover,
			/datum/job/CaesarsLegion,
			/datum/job/wasteland/f13wastelander,
		),
		/datum/matchmaking_pref/bounty_hunter = list(
			/datum/job/wendover,
			/datum/job/wasteland,
		),
		/datum/matchmaking_pref/mentor = list(
			/datum/job/eighties,
			/datum/job/wasteland,
		),
	)

	loadout_options = list(
	/datum/outfit/loadout/raider_supafly,
	/datum/outfit/loadout/raider_yankee,
	/datum/outfit/loadout/raider_blast,
	/datum/outfit/loadout/raider_sadist,
	/datum/outfit/loadout/raider_painspike,
	/datum/outfit/loadout/raider_badlands,
	/datum/outfit/loadout/raider_sheriff,
	/datum/outfit/loadout/raider_smith,
	/datum/outfit/loadout/raider_vault,
	/datum/outfit/loadout/raider_ncr,
	/datum/outfit/loadout/raider_legion,
	/datum/outfit/loadout/raider_bos,
	/datum/outfit/loadout/quack_doctor,
	/datum/outfit/loadout/raider_powder,
	/datum/outfit/loadout/raider_tribal
	)


/datum/outfit/job/wasteland/f13raider
	name = "Outlaw"
	jobtype = /datum/job/wasteland/f13raider

	id = null
	ears = null
	belt = null
	backpack = /obj/item/storage/backpack/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	gloves = /obj/item/clothing/gloves/f13/handwraps
	r_pocket = /obj/item/flashlight/flare
	backpack_contents = list(
		/obj/item/restraints/handcuffs = 2,
		/obj/item/melee/onehanded/club = 1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 1,
		/obj/item/storage/bag/money/small/raider = 1
		)


/datum/outfit/job/wasteland/f13raider/pre_equip(mob/living/carbon/human/H)
	. = ..()
	uniform = pick(
		/obj/item/clothing/under/f13/merca, \
		/obj/item/clothing/under/f13/mercc, \
		/obj/item/clothing/under/f13/cowboyb, \
		/obj/item/clothing/under/f13/cowboyg, \
		/obj/item/clothing/under/f13/raider_leather, \
		/obj/item/clothing/under/f13/raiderrags, \
		/obj/item/clothing/under/pants/f13/ghoul, \
		/obj/item/clothing/under/jabroni \
		)

	shoes = pick(
			/obj/item/clothing/shoes/jackboots,\
			/obj/item/clothing/shoes/f13/raidertreads \
			)

	suit_store = pick(
		/obj/item/gun/ballistic/revolver/detective, \
		/obj/item/gun/ballistic/automatic/pistol/ninemil,\
		/obj/item/gun/ballistic/automatic/pistol/m1911, \
		/obj/item/gun/ballistic/automatic/pistol/type17 \
		)


/datum/outfit/job/wasteland/f13raider/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_LONGPORKLOVER, src)

	H.social_faction = FACTION_RAIDERS
	add_verb(H, /mob/living/proc/creategang)

/datum/outfit/loadout/raider_supafly
	name = "Supa-fly"
	suit = /obj/item/clothing/suit/armor/f13/raider/supafly
	head = /obj/item/clothing/head/helmet/f13/raider/supafly
	backpack_contents = list(
		/obj/item/gun/ballistic/automatic/varmint = 1,
		/obj/item/ammo_box/magazine/m556/rifle/assault = 1,
		/obj/item/gun/ballistic/revolver/hobo/knucklegun = 1,
		/obj/item/ammo_box/c45rev = 2,
		/obj/item/attachments/scope = 1,
		/obj/item/reagent_containers/food/drinks/bottle/f13nukacola/radioactive = 1,
		/obj/item/grenade/smokebomb = 2,
		/obj/item/book/granter/trait/trekking = 1
		)

/datum/outfit/loadout/raider_yankee
	name = "Yankee"
	suit = /obj/item/clothing/suit/armor/f13/raider/yankee
	head = /obj/item/clothing/head/helmet/f13/raider/yankee
	backpack_contents = list(
		/obj/item/melee/onehanded/knife/cosmicdirty = 1,
		/obj/item/storage/fancy/cigarettes/cigpack_cannabis = 1,
		/obj/item/megaphone = 1,
		/obj/item/radio/headset = 1,
		/obj/item/book/granter/trait/bigleagues = 1,	
		/obj/item/storage/pill_bottle/chem_tin/buffout = 1,
		/obj/item/book/granter/trait/trekking = 1
		)

/datum/outfit/loadout/raider_blast
	name = "Blastmaster"
	suit = /obj/item/clothing/suit/armor/f13/raider/blastmaster
	head = /obj/item/clothing/head/helmet/f13/raider/blastmaster
	backpack_contents = list(
		/obj/item/kitchen/knife/butcher = 1,
		/obj/item/book/granter/crafting_recipe/blueprint/trapper = 1,
		/obj/item/radio/headset = 1,	
		/obj/item/book/granter/trait/explosives = 1
		)

/datum/outfit/loadout/raider_sadist
	name = "Sadist"
	suit = /obj/item/clothing/suit/armor/f13/raider/sadist
	head = /obj/item/clothing/head/helmet/f13/raider/arclight
	backpack_contents = list(
		/obj/item/melee/onehanded/knife/throwing = 5,
		/obj/item/clothing/mask/gas/explorer/folded=1,
		/obj/item/storage/belt = 1,
		/obj/item/restraints/legcuffs/beartrap = 2,
		/obj/item/reverse_bear_trap = 1,
		/obj/item/melee/unarmed/lacerator = 1,
		/obj/item/radio/headset = 1,
		/obj/item/book/granter/trait/trekking = 1
		)

/datum/outfit/loadout/raider_badlands
	name = "Fiend"
	suit = /obj/item/clothing/suit/armor/f13/raider/badlands
	head = /obj/item/clothing/head/helmet/f13/fiend
	backpack_contents = list(
		/obj/item/gun/energy/laser/wattz/magneto = 2,
		/obj/item/stock_parts/cell/ammo/ec = 2,
		/obj/item/reagent_containers/hypospray/medipen/psycho = 3,
		/obj/item/reagent_containers/pill/patch/turbo = 2,
		/obj/item/reagent_containers/hypospray/medipen/medx = 1,
		/obj/item/book/granter/trait/bigleagues = 1,
		/obj/item/book/granter/trait/trekking = 1,
		/obj/item/radio/headset = 1
		)


/datum/outfit/loadout/raider_painspike
	name = "Painspike"
	suit = /obj/item/clothing/suit/armor/f13/raider/painspike
	head = /obj/item/clothing/head/helmet/f13/raider/psychotic
	backpack_contents = list(
		/obj/item/gun/ballistic/revolver/caravan_shotgun = 1,
		/obj/item/ammo_box/shotgun/buck = 1,
		/obj/item/ammo_box/shotgun/bean = 1,
		/obj/item/melee/onehanded/club/fryingpan = 1,
		/obj/item/radio/headset = 1,	
		/obj/item/book/granter/trait/bigleagues = 1,
		/obj/item/book/granter/trait/trekking = 1,
		/obj/item/grenade/chem_grenade/cleaner = 2
		)

/datum/outfit/loadout/quack_doctor
	name = "Quack Doctor"
	suit = /obj/item/clothing/suit/toggle/labcoat/f13/followers
	l_hand = /obj/item/storage/backpack/duffelbag/med/surgery
	r_hand = /obj/item/book/granter/trait/midsurgery
	suit_store = /obj/item/gun/energy/laser/wattz
	backpack_contents = list(
		/obj/item/stock_parts/cell/ammo/ec = 1,
		/obj/item/reagent_containers/pill/patch/jet = 3,
		/obj/item/storage/firstaid/ancient = 1,
		/obj/item/storage/pill_bottle/aranesp = 1,
		/obj/item/storage/pill_bottle/happy = 1,
		/obj/item/book/granter/trait/chemistry = 1,
		/obj/item/stack/sheet/mineral/silver = 2,
		/obj/item/defibrillator/primitive = 1
		)

/datum/outfit/loadout/raider_ncr
	name = "NCR Deserter"
	suit = /obj/item/clothing/suit/armor/f13/exile/ncrexile
	uniform = /obj/item/clothing/under/f13/exile
	id = /obj/item/card/id/rusted
	backpack_contents = list(
		/obj/item/gun/ballistic/automatic/varmint = 1,
		/obj/item/ammo_box/magazine/m556/rifle = 2,
		/obj/item/melee/onehanded/knife/bayonet = 1,
		/obj/item/reagent_containers/food/snacks/f13/canned/ncr/breakfast = 1,
		/obj/item/radio/headset = 1,
		/obj/item/book/granter/crafting_recipe/blueprint/service = 1
		)

/datum/outfit/loadout/raider_legion
	name = "Disgraced Legionnaire"
	suit = /obj/item/clothing/suit/armor/f13/exile/legexile
	uniform = /obj/item/clothing/under/f13/exile/legion
	id = /obj/item/card/id/rusted/rustedmedallion
	backpack_contents = list(
		/obj/item/melee/onehanded/machete = 1,
		/obj/item/storage/backpack/spearquiver = 1,
		/obj/item/gun/ballistic/automatic/pistol/n99 = 1,
		/obj/item/ammo_box/magazine/m10mm_adv/simple = 1,
		/obj/item/book/granter/trait/trekking = 1
		)

/datum/outfit/loadout/raider_bos
	name = "Brotherhood Exile"
	suit = /obj/item/clothing/suit/armor/f13/exile/bosexile
	id = /obj/item/card/id/rusted/brokenholodog
	backpack_contents = list(
		/obj/item/gun/energy/laser/wattz = 1,
		/obj/item/stock_parts/cell/ammo/ec = 2,
		/obj/item/book/granter/crafting_recipe/blueprint/aep7 = 1,
		/obj/item/storage/belt/holster/legholster = 1,
		/obj/item/radio/headset = 1,
		)

/datum/outfit/loadout/raider_sheriff
	name = "Desperado"
	suit = /obj/item/clothing/suit/armored/light/duster/desperado
	uniform = /obj/item/clothing/under/syndicate/tacticool
	head = /obj/item/clothing/head/f13/town/big
	backpack_contents = list(
		/obj/item/gun/ballistic/revolver/m29/snub = 1,
		/obj/item/storage/belt/holster = 1,
		/obj/item/ammo_box/m44 = 2,
		/obj/item/radio/headset = 1,
		/obj/item/book/granter/trait/gunslinger = 1
		)

/datum/outfit/loadout/raider_smith
	name = "Raider Smith"
	suit = /obj/item/clothing/suit/armored/heavy/raidermetal
	uniform = /obj/item/clothing/under/f13/raider_leather
	head = /obj/item/clothing/head/helmet/f13/raider/arclight
	gloves = /obj/item/clothing/gloves/f13/blacksmith
	backpack_contents = list(
		/obj/item/gun/ballistic/automatic/pistol/m1911 = 1,
		/obj/item/ammo_box/magazine/m45 = 1,
		/obj/item/twohanded/steelsaw = 1,
		/obj/item/melee/smith/hammer = 1,
		/obj/item/stack/sheet/mineral/sandstone = 50,
		/obj/item/book/granter/trait/techno = 1,
		/obj/item/radio/headset = 1,
		/obj/item/book/granter/crafting_recipe/scav_one = 1
		)

/datum/outfit/loadout/raider_vault
	name = "Vault Renegade"
	suit = /obj/item/clothing/suit/armor/vest/big
	uniform = /obj/item/clothing/under/f13/exile/vault
	id = /obj/item/card/id/rusted/fadedvaultid
	backpack_contents = list(
		/obj/item/gun/ballistic/automatic/pistol/n99 = 1,
		/obj/item/ammo_box/magazine/m10mm_adv/simple = 2,
		/obj/item/radio/headset = 1
		)

/datum/outfit/loadout/raider_tribal
	name = "Tribal Outcast"
	uniform = /obj/item/clothing/under/f13/exile/tribal
	suit = /obj/item/clothing/suit/hooded/tribaloutcast
	suit_store = /obj/item/twohanded/spear/bonespear
	shoes = /obj/item/clothing/shoes/sandal
	belt = /obj/item/storage/backpack/spearquiver
	box = /obj/item/storage/survivalkit_tribal
	back = /obj/item/storage/backpack/satchel/explorer
	backpack_contents = list(
		/obj/item/clothing/mask/cigarette/pipe = 1,
		/obj/item/melee/onehanded/knife/bone = 1,
		/obj/item/radio/tribal = 1,
		/obj/item/book/granter/trait/trekking = 1
		)

/datum/outfit/loadout/raider_powder
	name = "Powder Ganger"
	belt = /obj/item/storage/belt/bandolier
	uniform = /obj/item/clothing/under/f13/ncrcf
	suit = /obj/item/clothing/suit/armor/vest/big
	backpack_contents = list(
		/obj/item/melee/onehanded/knife/hunting = 1,
		/obj/item/gun/ballistic/automatic/pistol/ninemil = 1,
		/obj/item/ammo_box/magazine/m9mmds = 2,
		/obj/item/grenade/f13/dynamite = 1,
		/obj/item/book/granter/trait/explosives = 1
		)

/datum/job/wasteland/f13wastelander
	title = "Wastelander"
	flag = F13WASTELANDER
	faction = FACTION_WASTELAND
	total_positions = -1
	spawn_positions = -1
	description = "You are one of the many travelers along the I-80, your business is your own, but you might consider stopping in Wendover, the last town for a dozens of miles in either direction."
	supervisors = "God"
	selection_color = "#dddddd"

	outfit = /datum/outfit/job/wasteland/f13wastelander

	access = list()		//we can expand on this and make alterations as people suggest different loadouts
	minimal_access = list()
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/wasteland/f13wastelander,
			/datum/job/wasteland/f13raider,
			/datum/job/wendover,
			/datum/job/whitelegs,
			/datum/job/latterdaysaints,
			/datum/job/usps,
			/datum/job/wasteland/f13tribal,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/wasteland/f13wastelander,
			/datum/job/wasteland/f13raider,
			/datum/job/wendover,
			/datum/job/whitelegs,
			/datum/job/latterdaysaints,
			/datum/job/usps,
			/datum/job/wasteland/f13tribal,
		),
		/datum/matchmaking_pref/mentor = list(
			/datum/job/wasteland/f13wastelander,
			/datum/job/wendover,
			/datum/job/wasteland/f13tribal,
		),
		/datum/matchmaking_pref/disciple = list(
			/datum/job/wasteland/f13wastelander,
			/datum/job/wendover,
			/datum/job/wasteland/f13tribal,
		),
		/datum/matchmaking_pref/patron = list(
			/datum/job/wasteland/f13wastelander,
			/datum/job/wendover,
			/datum/job/wasteland/f13tribal,
		),
		/datum/matchmaking_pref/protegee = list(
			/datum/job/wasteland/f13wastelander,
			/datum/job/wendover,
			/datum/job/wasteland/f13tribal,
		),
	)
	loadout_options = list(
	/datum/outfit/loadout/vault_refugee,
	/datum/outfit/loadout/salvager,
	/datum/outfit/loadout/medic,
	/datum/outfit/loadout/merchant,
	/datum/outfit/loadout/scavenger,
	/datum/outfit/loadout/settler,
	/datum/outfit/loadout/warrior,
	/datum/outfit/loadout/ncrcitizen,
	/datum/outfit/loadout/legioncivilian,
	/datum/outfit/loadout/wastelander_desert_ranger
	)

/datum/outfit/job/wasteland/f13wastelander
	name = "Wastelander"
	jobtype = /datum/job/wasteland/f13wastelander

	id = null
	ears = null
	belt = null
	r_hand = /obj/item/book/granter/trait/selection
	l_pocket = /obj/item/storage/bag/money/small/wastelander
	r_pocket = /obj/item/flashlight/flare
	belt = /obj/item/melee/onehanded/knife/survival
	backpack = /obj/item/storage/backpack/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	backpack_contents = list(
		/obj/item/reagent_containers/pill/radx,
		)

/datum/outfit/job/wasteland/f13wastelander/pre_equip(mob/living/carbon/human/H)
	..()
	suit = pick(
		/obj/item/clothing/suit/armor/f13/kit, \
		/obj/item/clothing/suit/f13/veteran, \
		/obj/item/clothing/suit/toggle/labcoat/f13/wanderer, \
		/obj/item/clothing/suit/f13/duster, \
		/obj/item/clothing/suit/f13/mfp/raider, \
		/obj/item/clothing/suit/armor/f13/leatherarmor, \
		/obj/item/clothing/suit/armor/f13/modif_r_vest, \
		/obj/item/clothing/suit/armored/light/cowboyvest, \
		/obj/item/clothing/suit/f13/vest, \
		/obj/item/clothing/suit/toggle/lawyer/black \
		)
	uniform = pick(
		/obj/item/clothing/under/f13/brahminm, \
		/obj/item/clothing/under/f13/caravaneer, \
		/obj/item/clothing/under/f13/cowboyb, \
		/obj/item/clothing/under/f13/cowboyg, \
		/obj/item/clothing/under/f13/doctorm, \
		/obj/item/clothing/under/f13/follower, \
		/obj/item/clothing/under/f13/ikeduds, \
		/obj/item/clothing/under/f13/bennys, \
		/obj/item/clothing/under/f13/bodyguard, \
		/obj/item/clothing/under/f13/combat, \
		/obj/item/clothing/under/f13/mechanic, \
		/obj/item/clothing/under/f13/marlowduds, \
		/obj/item/clothing/under/f13/masonduds, \
		/obj/item/clothing/under/f13/merca, \
		/obj/item/clothing/under/f13/machinist, \
		/obj/item/clothing/under/f13/mercc, \
		/obj/item/clothing/under/f13/merchant, \
		/obj/item/clothing/under/f13/ncrcf, \
		/obj/item/clothing/under/f13/petrochico, \
		/obj/item/clothing/under/f13/relaxedwear, \
		/obj/item/clothing/under/f13/spring, \
		/obj/item/clothing/under/f13/westender, \
		/obj/item/clothing/under/lawyer/blacksuit, \
		/obj/item/clothing/under/misc/pj/blue, \
		/obj/item/clothing/under/pants/classicjeans, \
		/obj/item/clothing/under/pants/jeanripped, \
		/obj/item/clothing/under/pants/khaki, \
		/obj/item/clothing/under/suit_jacket/tan, \
		/obj/item/clothing/under/pants/f13/ghoul, \
		/obj/item/clothing/under/f13/shiny, \
		/obj/item/clothing/under/f13/sleazeball, \
		/obj/item/clothing/under/f13/settler \
		)

/datum/outfit/loadout/salvager
	name = "Salvager"
	uniform = /obj/item/clothing/under/f13/machinist
	shoes = /obj/item/clothing/shoes/f13/explorer
	gloves = /obj/item/clothing/gloves/f13/blacksmith
	head = /obj/item/clothing/head/welding
	r_hand = /obj/item/weldingtool/largetank
	backpack_contents = list(/obj/item/gun/ballistic/automatic/pistol/m1911 = 1
							)

/datum/outfit/loadout/scavenger
	name = "Scavenger"
	uniform = /obj/item/clothing/under/f13/lumberjack
	shoes = /obj/item/clothing/shoes/f13/explorer
	r_hand = /obj/item/storage/backpack/duffelbag/scavengers
	l_hand = /obj/item/pickaxe/drill
	belt = /obj/item/storage/belt
	backpack_contents = list(/obj/item/mining_scanner = 1,
							/obj/item/metaldetector = 1,
							/obj/item/shovel = 1,
							/obj/item/gun/ballistic/automatic/pistol/m1911 = 1
							)

/datum/outfit/loadout/settler
	name = "Settler"
	uniform = /obj/item/clothing/under/f13/settler
	shoes = /obj/item/clothing/shoes/f13/explorer
	r_hand = /obj/item/hatchet
	l_hand = /obj/item/gun/ballistic/automatic/pistol/n99
	belt = /obj/item/storage/belt
	backpack_contents = list(
		/obj/item/stack/sheet/metal = 50,
		/obj/item/stack/sheet/mineral/wood = 50,
		/obj/item/pickaxe/mini = 1,
		/obj/item/toy/crayon/spraycan = 1,
		/obj/item/cultivator = 1,
		/obj/item/reagent_containers/glass/bucket = 1,
		/obj/item/storage/bag/plants/portaseeder = 1,
		/obj/item/ammo_box/magazine/m10mm_adv/simple = 1
		)

/datum/outfit/loadout/medic
	name = "Wasteland Doctor"
	uniform = /obj/item/clothing/under/f13/follower
	suit = /obj/item/clothing/suit/toggle/labcoat/f13/followers
	shoes = /obj/item/clothing/shoes/f13/explorer
	gloves = /obj/item/clothing/gloves/color/latex
	neck = /obj/item/clothing/neck/stethoscope
	belt = /obj/item/storage/belt/medical
	backpack_contents =  list(/obj/item/reagent_containers/medspray/synthflesh = 2,
							/obj/item/smelling_salts = 1,
							/obj/item/healthanalyzer = 1,
							/obj/item/gun/ballistic/automatic/pistol/m1911 = 1,
							/obj/item/reagent_containers/glass/bottle/epinephrine = 2,
							/obj/item/storage/backpack/duffelbag/med/surgery = 1,
							/obj/item/paper_bin = 1,
							/obj/item/folder = 1,
							/obj/item/pen/fountain = 1,
							/obj/item/storage/firstaid/ancient = 1
							)

/datum/outfit/loadout/merchant
	name = "Roving Trader"
	uniform = /obj/item/clothing/under/f13/merchant
	neck = /obj/item/clothing/neck/mantle/brown
	shoes = /obj/item/clothing/shoes/f13/brownie
	head = /obj/item/clothing/head/f13/stormchaser
	gloves = /obj/item/clothing/gloves/color/brown
	glasses = /obj/item/clothing/glasses/f13/biker
	l_hand = /obj/item/gun/ballistic/revolver/caravan_shotgun
	backpack_contents =  list(/obj/item/storage/box/vendingmachine = 1,
							/obj/item/gun/ballistic/automatic/pistol/m1911 = 1
							)

//end new

/datum/outfit/loadout/vault_refugee
	name = "Vaultie"
	uniform = /obj/item/clothing/under/f13/vault
	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/fingerless
	suit = /obj/item/clothing/suit/suspenders
	ears = /obj/item/radio/headset
	backpack_contents = list(
		/obj/item/card/id/selfassign = 1,
		/obj/item/gun/ballistic/automatic/pistol/n99 = 1,
		/obj/item/ammo_box/magazine/m10mm_adv/simple = 2,
		/obj/item/pda = 1
		)

/datum/outfit/loadout/warrior
	name = "Wasteland Warrior"
	uniform = /obj/item/clothing/under/f13/settler
	shoes = /obj/item/clothing/shoes/f13/raidertreads
	suit = /obj/item/clothing/suit/armor/light/wastewar
	head = /obj/item/clothing/head/helmet/f13/wastewarhat
	glasses = /obj/item/clothing/glasses/welding
	l_hand = /obj/item/shield/riot/buckler/stop
	backpack_contents = list(
		/obj/item/melee/onehanded/machete/scrapsabre = 1
		)

/datum/outfit/loadout/legioncivilian
	name = "Legion Civilian"
	uniform = /obj/item/clothing/under/f13/doctor
	shoes = /obj/item/clothing/shoes/f13/fancy
	suit = /obj/item/clothing/suit/curator
	head = /obj/item/clothing/head/scarecrow_hat
	gloves = /obj/item/clothing/gloves/color/black
	glasses = /obj/item/clothing/glasses/welding
	id = /obj/item/card/id/dogtag/town/legion
	l_hand = /obj/item/shield/riot/buckler
	backpack_contents = list(
		/obj/item/melee/onehanded/machete = 1
		)

/datum/outfit/loadout/ncrcitizen
	name = "NCR Citizen"
	uniform = /obj/item/clothing/under/f13/ncrcaravan
	shoes = /obj/item/clothing/shoes/f13/tan
	head = /obj/item/clothing/head/f13/cowboy
	gloves = /obj/item/clothing/gloves/color/brown
	id = /obj/item/card/id/dogtag/town/ncr
	l_hand = /obj/item/gun/ballistic/automatic/varmint
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m556/rifle = 2
		)

/datum/outfit/loadout/wastelander_desert_ranger
	name = "Desert Ranger Scout"
	uniform = /obj/item/clothing/under/f13/desert_ranger_scout
	shoes = /obj/item/clothing/shoes/f13/cowboy
	head = /obj/item/clothing/head/f13/cowboy
	gloves = /obj/item/clothing/gloves/color/brown
	l_hand = /obj/item/gun/ballistic/revolver/colt357
	backpack_contents = list(
		/obj/item/ammo_box/a357 = 2,
		/obj/item/binoculars = 1,
		/obj/item/radio = 1
		)

/datum/job/wasteland/f13brotherhoodscout
	title = "Brotherhood Scout"
	flag = F13BROTHERHOODSCOUT
	faction = FACTION_WASTELAND
	total_positions = 0
	spawn_positions = 0
	description = "You are a Brotherhood scout, a Knight tasked with keeping tabs on the outside world. There is no bunker in Wendover, so you will have to make do as best you can. Improvise, adapt, acquire tech and look out for your brothers."
	supervisors = "The Head Knight back home, the Elder"
	selection_color = "#dddddd"

	outfit = /datum/outfit/job/wasteland/f13brotherhoodscout

	access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_BAR, ACCESS_SEC_DOORS)
	minimal_access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_BAR, ACCESS_SEC_DOORS)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/wasteland/f13wastelander,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/wasteland/f13wastelander,
			/datum/job/wasteland/f13raider,
			/datum/job/wendover,
			/datum/job/whitelegs,
			/datum/job/latterdaysaints,
			/datum/job/usps,
			/datum/job/wasteland/f13tribal,
		),
		/datum/matchmaking_pref/mentor = list(
			/datum/job/wasteland/f13wastelander,
		),
		/datum/matchmaking_pref/disciple = list(
			/datum/job/wasteland/f13wastelander,
			/datum/job/wendover,
			/datum/job/wasteland/f13tribal,
		),
		/datum/matchmaking_pref/patron = list(
			/datum/job/wasteland/f13wastelander,
			/datum/job/wendover,
			/datum/job/wasteland/f13tribal,
		),
		/datum/matchmaking_pref/protegee = list(
			/datum/job/wasteland/f13wastelander,
			/datum/job/wendover,
			/datum/job/wasteland/f13tribal,
		),
	)

/datum/outfit/job/wasteland/f13brotherhoodscout/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_TECHNOPHREAK, src)
	ADD_TRAIT(H, TRAIT_GENERIC, src)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/boscombatarmor)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/boscombathelmet)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/boscombatarmormk2)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/boscombathelmetmk2)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/set_vrboard/bos)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/gate_bos)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/AER9)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/AEP7)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/dks)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/R93)

/datum/outfit/job/wasteland/f13brotherhoodscout
	name = "Brotherhood Scout"
	jobtype = /datum/job/wasteland/f13brotherhoodscout

	id = /obj/item/card/id/dogtag
	ears = /obj/item/radio/headset/headset_bos
	uniform = /obj/item/clothing/under/f13/recon
	suit = /obj/item/clothing/suit/armor/f13/reno/bulletproof
	head = /obj/item/clothing/head/f13/boscap/reconarmorhelmet
	shoes = /obj/item/clothing/shoes/jackboots
	r_hand = /obj/item/book/granter/trait/selection
	l_pocket = /obj/item/storage/bag/money/small/wastelander
	r_pocket = /obj/item/flashlight/flare
	belt = /obj/item/storage/belt/military/assault/enclave
	backpack = /obj/item/storage/backpack/enclave
	satchel = /obj/item/storage/backpack/satchel/explorer
	backpack_contents = list(
		/obj/item/binoculars = 1,
		/obj/item/clothing/under/syndicate/brotherhood = 1,
		/obj/item/gun/energy/laser/wattz = 1
		)

/datum/job/wasteland/f13journeymanscribe
	title = "Journeyman Scribe"
	flag = F13JOURNEYMANSCRIBE
	faction = FACTION_WASTELAND
	total_positions = 0
	spawn_positions = 0
	description = "You are a Brotherhood Scribe on a mission from your chapter. There is no bunker in Wendover, so you will have to make do as best you can. Improvise, adapt, acquire tech, and learn what you can about the wastes."
	supervisors = "The Head Scribe back home, the Elder"
	selection_color = "#dddddd"

	outfit = /datum/outfit/job/wasteland/f13journeymanscribe

	access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_BAR, ACCESS_SEC_DOORS)
	minimal_access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_BAR, ACCESS_SEC_DOORS)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/wasteland/f13wastelander,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/wasteland/f13wastelander,
			/datum/job/wasteland/f13raider,
			/datum/job/wendover,
			/datum/job/whitelegs,
			/datum/job/latterdaysaints,
			/datum/job/usps,
			/datum/job/wasteland/f13tribal,
		),
		/datum/matchmaking_pref/mentor = list(
			/datum/job/wasteland/f13wastelander,
		),
		/datum/matchmaking_pref/disciple = list(
			/datum/job/wasteland/f13wastelander,
			/datum/job/wendover,
			/datum/job/wasteland/f13tribal,
		),
		/datum/matchmaking_pref/patron = list(
			/datum/job/wasteland/f13wastelander,
			/datum/job/wendover,
			/datum/job/wasteland/f13tribal,
		),
		/datum/matchmaking_pref/protegee = list(
			/datum/job/wasteland/f13wastelander,
			/datum/job/wendover,
			/datum/job/wasteland/f13tribal,
		),
	)

/datum/outfit/job/wasteland/f13journeymanscribe/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_TECHNOPHREAK, src)
	ADD_TRAIT(H, TRAIT_GENERIC, src)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/boscombatarmor)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/boscombathelmet)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/boscombatarmormk2)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/boscombathelmetmk2)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/set_vrboard/bos)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/gate_bos)

/datum/outfit/job/wasteland/f13journeymanscribe
	name = "Journeyman Scribe"
	jobtype = /datum/job/wasteland/f13journeymanscribe

	id = /obj/item/card/id/dogtag
	ears = /obj/item/radio/headset/headset_bos
	uniform = /obj/item/clothing/under/f13/recon
	suit = /obj/item/clothing/suit/hooded/cloak/desert
	head = /obj/item/clothing/head/f13/boscap/reconarmorhelmet
	shoes = /obj/item/clothing/shoes/jackboots
	r_hand = /obj/item/book/granter/trait/selection
	l_pocket = /obj/item/storage/bag/money/small/wastelander
	r_pocket = /obj/item/flashlight/flare
	belt = /obj/item/storage/belt/military/assault/enclave
	backpack = /obj/item/storage/backpack/enclave
	satchel = /obj/item/storage/backpack/satchel/explorer
	backpack_contents = list(
		/obj/item/mining_scanner = 1,
		/obj/item/metaldetector = 1,
		/obj/item/storage/bag/salvage = 1,
		/obj/item/clothing/suit/f13/scribe = 1,
		/obj/item/gun/energy/laser/wattz = 1
		)

/datum/job/wasteland/f13remnant
	title = "Remnant"
	flag = F13REMNANT
	faction = FACTION_WASTELAND
	total_positions = 0
	spawn_positions = 0
	description = "You are a citizen of the United States of America. With the destruction of the Oil Rig and Navarro, you are alone in the world. Your business is your own, but you may be aware of a friendly bunker beneath the local airport."
	supervisors = "the Constitution"
	selection_color = "#dddddd"

	outfit = /datum/outfit/job/wasteland/f13remnant

	access = list(ACCESS_ENCLAVE)
	minimal_access = list(ACCESS_ENCLAVE)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/wasteland/f13wastelander,
			/datum/job/wasteland/f13raider,
			/datum/job/wendover,
			/datum/job/whitelegs,
			/datum/job/latterdaysaints,
			/datum/job/usps,
			/datum/job/wasteland/f13tribal,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/wasteland/f13wastelander,
			/datum/job/wasteland/f13raider,
			/datum/job/wendover,
			/datum/job/whitelegs,
			/datum/job/latterdaysaints,
			/datum/job/usps,
			/datum/job/wasteland/f13tribal,
		),
		/datum/matchmaking_pref/mentor = list(
			/datum/job/wasteland/f13wastelander,
			/datum/job/wendover,
			/datum/job/wasteland/f13tribal,
		),
		/datum/matchmaking_pref/disciple = list(
			/datum/job/wasteland/f13wastelander,
			/datum/job/wendover,
			/datum/job/wasteland/f13tribal,
		),
		/datum/matchmaking_pref/patron = list(
			/datum/job/wasteland/f13wastelander,
			/datum/job/wendover,
			/datum/job/wasteland/f13tribal,
		),
		/datum/matchmaking_pref/protegee = list(
			/datum/job/wasteland/f13wastelander,
			/datum/job/wendover,
			/datum/job/wasteland/f13tribal,
		),
	)

/datum/outfit/job/wasteland/f13remnant/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_GENERIC, src)
	ADD_TRAIT(H, TRAIT_TECHNOPHREAK, src)

/datum/outfit/job/wasteland/f13remnant
	name = "Remnant"
	jobtype = /datum/job/wasteland/f13remnant

	id = /obj/item/card/id/dogtag/enclave/trooper
	ears = /obj/item/radio/headset/headset_enclave
	head = /obj/item/clothing/head/f13/enclave
	uniform = /obj/item/clothing/under/f13/exile/enclave
	suit = /obj/item/clothing/suit/armor/f13/reno/bulletproof
	shoes = /obj/item/clothing/shoes/f13/enclave/serviceboots
	r_hand = /obj/item/book/granter/trait/selection
	l_pocket = /obj/item/storage/bag/money/small/wastelander
	r_pocket = /obj/item/flashlight/flare
	belt = /obj/item/storage/belt/military/assault/enclave
	backpack = /obj/item/storage/backpack/enclave
	satchel = /obj/item/storage/backpack/satchel/explorer
	backpack_contents = list(
		/obj/item/gun/energy/laser/plasma/pistol/worn = 1,
		/obj/item/stock_parts/cell/ammo/ec = 1,
		/obj/item/clothing/under/f13/lumberjack = 1
		)

/*datum/job/wasteland/f13enforcer
	title = "Den Mob Enforcer"
	flag = F13ENFORCER
	faction = FACTION_WASTELAND
	social_faction = FACTION_RAIDERS
	total_positions = 4
	spawn_positions = 4
	description = "The mob rules in Yuma. A hitman for the Den's Boss, you are a highly loyal enforcer charged with keeping order among the outlaw groups inhabiting the Den."
	supervisors = "The Boss."
	selection_color = "#ff4747"
	exp_requirements = 600
	exp_type = EXP_TYPE_WASTELAND

	outfit = /datum/outfit/job/wasteland/f13enforcer

	access = list(ACCESS_DEN)
	minimal_access = list(ACCESS_DEN)

	loadout_options = list(
		/datum/outfit/loadout/hitman,
		/datum/outfit/loadout/bodyguard,
		)

/datum/outfit/job/wasteland/f13enforcer
	name = "Den Mob Enforcer"
	jobtype = /datum/job/wasteland/f13enforcer

	id = /obj/item/card/id/denid
	belt = /obj/item/storage/belt/military/assault
	shoes = /obj/item/clothing/shoes/laceup
	ears = /obj/item/radio/headset/headset_den
	l_pocket = /obj/item/melee/onehanded/knife/switchblade
	r_pocket = /obj/item/flashlight/seclite
	uniform = /obj/item/clothing/under/f13/densuit
	backpack =	/obj/item/storage/backpack/satchel
	satchel =  /obj/item/storage/backpack/satchel
	gloves =  /obj/item/clothing/gloves/color/white
	head = /obj/item/clothing/head/beret/durathread
	mask =  /obj/item/clothing/mask/bandana/durathread
	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 1,
		/obj/item/restraints/handcuffs = 1,
		/obj/item/storage/bag/money/small/wastelander
		)

/datum/outfit/job/wasteland/f13enforcer/pre_equip(mob/living/carbon/human/H)
	..()
	r_hand = /obj/item/book/granter/trait/selection

	H.mind.teach_crafting_recipe(/datum/crafting_recipe/set_vrboard/den)

/datum/outfit/loadout/hitman
	name = "Hitman"
	r_hand = /obj/item/gun/ballistic/automatic/smg/mini_uzi
	suit = /obj/item/clothing/suit/armor/vest
	backpack_contents = list(
						/obj/item/ammo_box/magazine/uzim9mm = 3,
						/obj/item/suppressor = 1
						)

/datum/outfit/loadout/bodyguard
	name = "Bodyguard"
	r_hand = /obj/item/gun/ballistic/shotgun/police
	suit = /obj/item/clothing/suit/armor/vest
	backpack_contents = list(
		/obj/item/ammo_box/shotgun/buck = 2,
		/obj/item/melee/onehanded/knife/hunting = 1
		)




/datum/job/wasteland/f13mobboss
	title = "Den Mob Boss"
	flag = F13MOBBOSS
	faction = FACTION_WASTELAND
	social_faction = FACTION_RAIDERS
	total_positions = 1
	spawn_positions = 1
	description = "The mob rules in Yuma, and you're on top. Keeping the loose association of Khans, outlaws, and other no-goods together you maintain order in The Den by force. Ensure that all inhabitants of the Den obey their rules, and spread your influence over the wasteland. Be careful though - even your own men can't be trusted."
	supervisors = "The Overboss, God."
	selection_color = "#ff4747"
	exp_requirements = 1000
	exp_type = EXP_TYPE_OUTLAW

	outfit = /datum/outfit/job/wasteland/f13mobboss

	access = list(ACCESS_DEN)
	minimal_access = list(ACCESS_DEN)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/rival = list(
			/datum/job/oasis/f13mayor,
			/datum/job/oasis/f13sheriff,
		),
		/datum/matchmaking_pref/patron = list(
			/datum/job/wasteland/f13wastelander,
		),
	)

	loadout_options = list(
		/datum/outfit/loadout/ncrrdenboss,
		/datum/outfit/loadout/truedenmob
		)

/datum/outfit/job/wasteland/f13mobboss
	name = "Den Mob Boss"
	jobtype = /datum/job/wasteland/f13mobboss

	id = /obj/item/card/id/denid
	belt = /obj/item/storage/belt/military/assault
	ears = /obj/item/radio/headset/headset_den
	shoes = /obj/item/clothing/shoes/laceup
	l_pocket = /obj/item/melee/onehanded/knife/switchblade
	r_pocket = /obj/item/flashlight/seclite
	uniform = /obj/item/clothing/under/f13/densuit
	suit = /obj/item/clothing/suit/armor/f13/combat/mk2/raider
	backpack =	/obj/item/storage/backpack/satchel
	satchel = 	/obj/item/storage/backpack/satchel
	gloves = /obj/item/clothing/gloves/color/white
	head = /obj/item/clothing/head/caphat/beret/white
	mask = /obj/item/clothing/mask/bandana/durathread
	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 1,
		/obj/item/restraints/handcuffs = 1,
		/obj/item/storage/bag/money/small/raider/mobboss,
		/obj/item/book/granter/crafting_recipe/manual/denvr
		)


/datum/outfit/loadout/ncrrdenboss
	name = "Central Cali Den Boss"
	backpack_contents = list(
							/obj/item/ammo_box/tube/a357 = 4,
							/obj/item/book/granter/trait/trekking = 1,
							/obj/item/gun/ballistic/revolver/colt357/brassgun = 2,
							/obj/item/book/granter/trait/gunslinger = 1
							)

/datum/outfit/loadout/truedenmob
	name = "True Den Boss"
	r_hand = /obj/item/gun/ballistic/automatic/smg/tommygun
	backpack_contents = list(
							/obj/item/ammo_box/magazine/tommygunm45/stick = 3
							)

datum/job/wasteland/f13dendoctor
	title = "Den Doctor"
	flag = F13DENDOCTOR
	faction = FACTION_WASTELAND
	social_faction = FACTION_RAIDERS
	total_positions = 4
	spawn_positions = 4
	description = "While you prioritize providing medical treatment in emergency situations, you are still trained in combat and have the additional role as a loyal combanteer to the Den."
	supervisors = "The Boss."
	selection_color = "#ff4747"
	exp_requirements = 1000
	exp_type = EXP_TYPE_OUTLAW

	outfit = /datum/outfit/job/wasteland/f13dendoctor

	access = list(ACCESS_DEN)
	minimal_access = list(ACCESS_DEN)

	loadout_options = list(
		/* /datum/outfit/loadout/dencombatmedic, */
		/datum/outfit/loadout/denchemist,
		)

/datum/outfit/job/wasteland/f13dendoctor
	name = "Den Doctor"
	jobtype = /datum/job/wasteland/f13dendoctor

	id = /obj/item/card/id/denid
	belt = /obj/item/storage/belt/medical
	shoes = /obj/item/clothing/shoes/laceup
	ears = /obj/item/radio/headset/headset_den
	r_pocket = /obj/item/flashlight/seclite
	uniform = /obj/item/clothing/under/f13/densuit
	backpack =	/obj/item/storage/backpack/medic
	gloves =  /obj/item/clothing/gloves/color/white
	head = /obj/item/clothing/head/beret/durathread
	mask =  /obj/item/clothing/mask/bandana/durathread
	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak=2, \
		/obj/item/healthanalyzer=1, \
		/obj/item/storage/bag/money/small/wastelander)

/datum/outfit/job/wasteland/f13dendoctor/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_TECHNOPHREAK, src)
	ADD_TRAIT(H, TRAIT_CHEMWHIZ, src)
	ADD_TRAIT(H, TRAIT_MEDICALEXPERT, src)
	ADD_TRAIT(H, TRAIT_SURGERY_MID, src)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/jet)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/turbo)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/psycho)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/medx)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/buffout)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/set_vrboard/den)


/*
/datum/outfit/loadout/dencombatmedic
	name = "Combat medic"
	r_hand = /obj/item/gun/ballistic/automatic/smg/tommygun
	suit = /obj/item/clothing/suit/toggle/labcoat/chemist
	backpack_contents = list(
							/obj/item/clothing/glasses/hud/health/f13 = 1,
							/obj/item/ammo_box/magazine/tommygunm45/stick = 2
							)
*/
/datum/outfit/loadout/denchemist
	name = "Chemist"
	r_hand = /obj/item/gun/ballistic/automatic/pistol/type17
	suit = /obj/item/clothing/suit/toggle/labcoat/chemist
	backpack_contents = list(
						/obj/item/ammo_box/magazine/m10mm_adv/simple = 1,
						/obj/item/grenade/chem_grenade = 1,
						/obj/item/clothing/mask/gas = 1,
						/obj/item/reagent_containers/glass/beaker/large = 2
						)*/



//vigilante

/*
/datum/job/wasteland/f13vigilante
	title = "Vigilante"
	flag = F13VIGILANTE
	faction = FACTION_WASTELAND
	total_positions = 0
	spawn_positions = 0
	description = "You have come a long way to reach this god forsaken place... it is now your job to protect its inhabitants from all sorts of injustice. Your moral codex requires you to help anyone in need and to never harm an innocent. Always try to capture and reeducate criminals instead of killing. Do not get involved in the conflicts between the major factions, that is not your fight."
	supervisors = "your moral code"
	selection_color = "#76885f"
	exp_requirements = 3000
	exp_type = EXP_TYPE_FALLOUT

	outfit = /datum/outfit/job/wasteland/f13vigilante

	loadout_options = list(
							/datum/outfit/loadout/desert_ranger,
							/datum/outfit/loadout/bounty_hunter,
							/datum/outfit/loadout/retired_ranger)


/datum/outfit/job/wasteland/f13vigilante
	name = "Vigilante"
	jobtype = /datum/job/wasteland/f13vigilante

	id = /obj/item/card/id/dogtag/vigilante
	belt = /obj/item/storage/belt/military
	shoes = /obj/item/clothing/shoes/f13/explorer
	l_pocket = /obj/item/melee/onehanded/knife/hunting
	r_pocket = /obj/item/flashlight/seclite
	uniform = /obj/item/clothing/under/f13/merca
	backpack = /obj/item/storage/backpack/satchel/trekker
	gloves = /obj/item/clothing/gloves/f13/military
	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak=4, \
		/obj/item/reagent_containers/pill/radx=1, \
		/obj/item/restraints/handcuffs=2, \
		/obj/item/storage/bag/money/small/wastelander)

/datum/outfit/job/wasteland/f13vigilante/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)
	ADD_TRAIT(H, TRAIT_LIGHT_STEP, src)

/datum/outfit/loadout/desert_ranger
	name = "Desert Ranger"
	head = /obj/item/clothing/head/helmet/f13/ncr/rangercombat/desert
	suit = /obj/item/clothing/suit/armor/f13/rangercombat/desert
	r_hand = /obj/item/gun/ballistic/revolver/revolver44/desert_ranger
	backpack_contents = list(
							)

/datum/outfit/loadout/bounty_hunter
	name = "Bounty Hunter"
	head = /obj/item/clothing/suit/armor/f13/combat/mk2/dark
	suit = /obj/item/clothing/head/helmet/f13/combat/mk2/dark
	r_hand = /obj/item/gun/ballistic/automatic/g11
	backpack_contents = list(
							/obj/item/ammo_box/magazine/m473=2
							)

/datum/outfit/loadout/retired_ranger
	name = "Retired Veteran"
	r_hand = /obj/item/gun/ballistic/revolver/sequoia
	backpack_contents = list(
							/obj/item/ammo_box/c4570/explosive=2
							)

/datum/job/wasteland/f13adminboos
	title = "Death"
	flag = F13ADMINBOOS
	faction = FACTION_WASTELAND
	total_positions = 0
	spawn_positions = 0
	description = ""
	supervisors = "no one"
	selection_color = "#76885f"

	outfit = /datum/outfit/job/wasteland/f13adminboos

/datum/outfit/job/wasteland/f13adminboos
	name = "Death"
	jobtype = /datum/job/wasteland/f13vigilante
	id = /obj/item/card/id/dogtag/vigilante
	belt = /obj/item/storage/belt/military
	shoes = /obj/item/clothing/shoes/f13/explorer
	l_pocket = /obj/item/melee/onehanded/knife/hunting
	r_pocket = /obj/item/flashlight/seclite
	uniform = /obj/item/clothing/under/f13/merca
	backpack = /obj/item/storage/backpack/satchel/trekker
	gloves = /obj/item/clothing/gloves/f13/military
	head = /obj/item/clothing/head/helmet/f13/ncr/rangercombat/desert
	suit = /obj/item/clothing/suit/armor/f13/rangercombat/desert
	suit_store = /obj/item/gun/ballistic/revolver/sequoia/death
	glasses = /obj/item/clothing/glasses/hud/health/night
	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak/super=4, \
		/obj/item/reagent_containers/pill/radx=1, \
		/obj/item/restraints/handcuffs=2, \
		/obj/item/ammo_box/c4570/explosive=6)

/datum/outfit/job/wasteland/f13adminboos/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()

	var/obj/item/implant/explosive/E = new
	E.implant(H)

	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)
	ADD_TRAIT(H, TRAIT_LIGHT_STEP, src)
*/
//New tribal role. Replaces old tribe stuff.
/datum/job/wasteland/f13tribal
	title = "Tribal"
	flag = F13TRIBAL
	faction = FACTION_WASTELAND
	total_positions = 10
	spawn_positions = 10
	description = "You are a member of a tribe, far away from your homeland. Well, relatively far away. Whatever your reasons for coming here, you've found yourself pinned between the ongoing war of the NCR and Caesar's Legion. Try not to get shot."
	supervisors = "the stars above"
	selection_color = "#dddddd"
	mapexclude = list("tribal")

	outfit = /datum/outfit/job/wasteland/f13tribal

	access = list()
	minimal_access = list()

	loadout_options = list(
	/datum/outfit/loadout/brawler,
	/datum/outfit/loadout/spearman,
	/datum/outfit/loadout/shaman,
	/datum/outfit/loadout/wayfarermelee,
	/datum/outfit/loadout/wayfarerranged,
	/datum/outfit/loadout/wayfarershaman,
	/datum/outfit/loadout/deadhorsesmelee,
	/datum/outfit/loadout/deadhorsesranged,
	/datum/outfit/loadout/deadhorsesshaman,
	/datum/outfit/loadout/sorrowshunter,
	/datum/outfit/loadout/sorrowsshaman,
	/datum/outfit/loadout/greatkhan,
	/datum/outfit/loadout/rustwalkersscipher,
	/datum/outfit/loadout/rustwalkersscrapper,
	/datum/outfit/loadout/rustwalkersshaman,
	/datum/outfit/loadout/bonedancerexile
	)

/datum/outfit/job/wasteland/f13tribal/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_TRIBAL, src)
	ADD_TRAIT(H, TRAIT_GENERIC, src)
	ADD_TRAIT(H, TRAIT_TRAPPER, src)
	ADD_TRAIT(H, TRAIT_MACHINE_SPIRITS, src)
	ADD_TRAIT(H, TRAIT_AUTO_DRAW, src)
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)
	H.grant_language(/datum/language/tribal)
	var/list/recipes = list(
		/datum/crafting_recipe/tribal_pa,
		/datum/crafting_recipe/tribal_pa_helmet,
		/datum/crafting_recipe/tribal_combat_armor,
		/datum/crafting_recipe/tribal_combat_armor_helmet,
		/datum/crafting_recipe/tribal_r_combat_armor,
		/datum/crafting_recipe/tribal_r_combat_armor_helmet,
		/datum/crafting_recipe/tribalwar/chitinarmor,
		/datum/crafting_recipe/tribalwar/deathclawspear,
		/datum/crafting_recipe/tribalwar/lightcloak,
		/datum/crafting_recipe/tribalwar/legendaryclawcloak,
		/datum/crafting_recipe/warpaint,
		/datum/crafting_recipe/tribalradio,
		/datum/crafting_recipe/tribalwar/goliathcloak,
		/datum/crafting_recipe/tribalwar/bonebow,
		/datum/crafting_recipe/tribalwar/tribe_bow,
		/datum/crafting_recipe/tribalwar/sturdybow,
		/datum/crafting_recipe/tribalwar/warclub,
		/datum/crafting_recipe/tribalwar/silverbow,
		/datum/crafting_recipe/tribalwar/arrowbone,
		/datum/crafting_recipe/tribalwar/bonespear,
		/datum/crafting_recipe/tribalwar/bonecodpiece,
		/datum/crafting_recipe/tribalwar/bracers,
		/datum/crafting_recipe/tribal/bonetalisman,
		/datum/crafting_recipe/tribal/bonebag,
		/datum/crafting_recipe/tribalwar/spearquiver
	)
	for(var/datum/crafting_recipe/recipe as() in recipes)
		H.mind.teach_crafting_recipe(recipe)
	H.grant_language(/datum/language/tribal)
	H.social_faction = FACTION_WASTELAND
	add_verb(H, /mob/living/proc/create_tribe)


/datum/outfit/job/wasteland/f13tribal
	name = "Tribal"
	jobtype = /datum/job/wasteland/f13tribal

	id = null
	ears = null
	belt = /obj/item/melee/onehanded/knife/bone
	uniform =     /obj/item/clothing/under/f13/settler
	box =         /obj/item/storage/survivalkit_tribal
	shoes =     /obj/item/clothing/shoes/sandal
	gloves =    /obj/item/clothing/gloves/f13/handwraps
	r_hand = /obj/item/book/granter/trait/selection/tribal
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	backpack_contents = list(
		/obj/item/reagent_containers/pill/patch/healingpowder = 2,
		/obj/item/flashlight/lantern = 1
		)

//Generic Tribals
/datum/outfit/loadout/brawler
	name = "Tribal Brawler"
	suit = /obj/item/clothing/suit/armor/f13/tribal
	head = /obj/item/clothing/head/helmet/f13/deathskull
	backpack_contents = list(
		/obj/item/twohanded/fireaxe/bmprsword = 1,
		/obj/item/restraints/legcuffs/bola = 2,
		/obj/item/reagent_containers/pill/patch/healpoultice = 2,
		/obj/item/stack/medical/gauze = 1
		)

/datum/outfit/loadout/spearman
	name = "Tribal Spearman"
	suit = /obj/item/clothing/suit/armored/light/tribalraider
	head = /obj/item/clothing/head/helmet/f13/fiend
	mask = /obj/item/clothing/mask/facewrap
	neck = /obj/item/clothing/neck/mantle/gray
	backpack_contents = list(
		/obj/item/twohanded/spear = 1,
		/obj/item/reagent_containers/pill/patch/bitterdrink = 2
		)

/datum/outfit/loadout/shaman
	name = "Tribal Shaman"
	suit = /obj/item/clothing/suit/hooded/cloak/desert
	backpack_contents = list(
		/obj/item/storage/bag/plants = 1,
		/obj/item/cultivator = 1,
		/obj/item/reagent_containers/glass/bucket/wood = 1,
		/obj/item/twohanded/sledgehammer/warmace = 1,
		/obj/item/melee/onehanded/knife/ritualdagger = 1,
		/obj/item/stack/medical/gauze/improvised = 1,
		/obj/item/reagent_containers/pill/patch/healingpowder = 1,
		/obj/item/book/granter/crafting_recipe/tribal = 1
	)

//Dead Horses
/datum/outfit/loadout/deadhorsesmelee
	name = "Dead Horses Stalker"
	suit = /obj/item/clothing/suit/f13/tribal/deadhorses
	backpack_contents = list(
		/obj/item/clothing/under/f13/deadhorses = 1,
		/obj/item/clothing/under/f13/female/deadhorses = 1,
		/obj/item/melee/onehanded/club/warclub = 1,
		/obj/item/storage/backpack/spearquiver = 1,
		/obj/item/reagent_containers/pill/patch/healingpowder = 2
	)

/datum/outfit/loadout/deadhorsesranged
	name = "Dead Horses Disciple"
	suit = /obj/item/clothing/suit/f13/tribal/heavy/deadhorses
	backpack_contents = list(
		/obj/item/clothing/under/f13/deadhorses = 1,
		/obj/item/clothing/under/f13/female/deadhorses = 1,
		/obj/item/gun/ballistic/automatic/pistol/m1911 = 1,
		/obj/item/ammo_box/magazine/m45 = 2,
		/obj/item/reagent_containers/pill/patch/healpoultice = 2
	)

/datum/outfit/loadout/deadhorsesshaman
	name = "Dead Horses Shaman"
	backpack_contents = list(
		/obj/item/clothing/under/f13/deadhorses = 1,
		/obj/item/clothing/under/f13/female/deadhorses = 1,
		/obj/item/storage/bag/plants = 1,
		/obj/item/cultivator = 1,
		/obj/item/reagent_containers/glass/bucket/wood = 1,
		/obj/item/reagent_containers/pill/patch/healingpowder = 2,
		/obj/item/book/granter/crafting_recipe/tribal/deadhorses = 1
	)

//Sorrows
/datum/outfit/loadout/sorrowshunter
	name = "Sorrows Hunter-Guardian"
	suit = /obj/item/clothing/suit/f13/tribal/light/sorrows
	backpack_contents = list(
		/obj/item/clothing/under/f13/sorrows = 1,
		/obj/item/clothing/under/f13/female/sorrows = 1,
		/obj/item/melee/onehanded/knife/survival = 1,
		/obj/item/melee/unarmed/yaoguaigauntlet = 1,
		/obj/item/reagent_containers/pill/patch/healpoultice = 2,
		/obj/item/gun/ballistic/bow = 1,
		/obj/item/storage/belt/tribe_quiver = 1,
		/obj/item/book/granter/crafting_recipe/tribal/sorrows = 1
	)

/datum/outfit/loadout/sorrowsshaman
	name = "Sorrows Ink-Shaman"
	backpack_contents = list(
		/obj/item/clothing/under/f13/sorrows = 1,
		/obj/item/clothing/under/f13/female/sorrows = 1,
		/obj/item/storage/bag/plants = 1,
		/obj/item/cultivator = 1,
		/obj/item/reagent_containers/glass/bucket/wood = 1,
		/obj/item/reagent_containers/pill/patch/healingpowder = 2,
		/obj/item/melee/unarmed/yaoguaigauntlet = 1,
		/obj/item/warpaint_bowl = 1,
		/obj/item/toy/crayon/spraycan = 2,
		/obj/item/book/granter/trait/tagger = 1,
		/obj/item/book/granter/crafting_recipe/tribal/sorrows = 1
	)

/datum/outfit/loadout/greatkhan
	name = "Great Khan"
	backpack_contents = list(
		/obj/item/book/granter/trait/chemistry = 1,
		/obj/item/gun/ballistic/automatic/pistol/ninemil = 1,
		/obj/item/ammo_box/magazine/m9mmds = 2,
		/obj/item/clothing/head/helmet/f13/khan = 1,
		/obj/item/clothing/head/helmet/f13/khan/bandana = 1,
		/obj/item/clothing/under/f13/khan = 1,
		/obj/item/clothing/under/f13/khan/shorts = 1,
		/obj/item/clothing/shoes/f13/military/plated = 1,
		/obj/item/clothing/suit/toggle/armor/f13khan_jacket = 1,
		/obj/item/storage/bag/money/small/khan = 1,
		/obj/item/radio/headset/headset_khans = 1,
	)

//Wayfarers
/datum/outfit/loadout/wayfarermelee
	name = "Wayfarer Warrior"
	suit = /obj/item/clothing/suit/armor/f13/lightcloak
	backpack_contents = list(
		/obj/item/clothing/under/f13/wayfarer = 1,
		/obj/item/clothing/head/helmet/f13/wayfarer/hunter = 1,
		/obj/item/twohanded/spear/bonespear = 1,
		/obj/item/reagent_containers/pill/patch/bitterdrink = 1
	)

/datum/outfit/loadout/wayfarerranged
	name = "Wayfarer Archer"
	suit = /obj/item/clothing/suit/armor/f13/kit
	head = /obj/item/clothing/head/helmet/f13/wayfarer/antler
	neck = /obj/item/clothing/neck/mantle/brown
	backpack_contents = list(
		/obj/item/gun/ballistic/bow/sturdy = 1,
		/obj/item/storage/belt/tribe_quiver/bone = 1,
		/obj/item/storage/belt/tribe_quiver = 1,
		/obj/item/binoculars = 1,
		/obj/item/melee/onehanded/club/warclub = 1
		)

/datum/outfit/loadout/wayfarershaman
	name = "Wayfarer Shaman"
	suit = /obj/item/clothing/suit/armor/f13/lightcloak
	backpack_contents = list(
		/obj/item/storage/bag/plants = 1,
		/obj/item/cultivator = 1,
		/obj/item/reagent_containers/glass/bucket/wood = 1,
		/obj/item/warpaint_bowl = 1,
		/obj/item/melee/onehanded/knife/ritualdagger = 1,
		/obj/item/stack/medical/gauze/improvised = 1,
		/obj/item/reagent_containers/pill/patch/healingpowder = 1,
		/obj/item/book/granter/crafting_recipe/tribal/wayfarer = 1,
	)

//Rustwalkers
/datum/outfit/loadout/rustwalkersscipher
	name = "Rustwalkers Scipher"
	suit = /obj/item/clothing/suit/f13/tribal/rustwalkers
	backpack_contents = list(
		/obj/item/clothing/under/f13/rustwalkers = 1,
		/obj/item/clothing/under/f13/female/rustwalkers = 1,
		/obj/item/gun/ballistic/automatic/autopipe = 1,
		/obj/item/ammo_box/magazine/autopipe = 2,
		/obj/item/reagent_containers/pill/patch/healingpowder = 2,
		/obj/item/circular_saw = 1
	)

/datum/outfit/loadout/rustwalkersscrapper
	name = "Rustwalkers Scrapper"
	suit = /obj/item/clothing/suit/f13/tribal/light/rustwalkers
	backpack_contents = list(
		/obj/item/clothing/under/f13/rustwalkers = 1,
		/obj/item/clothing/under/f13/female/rustwalkers = 1,
		/obj/item/gun/ballistic/revolver/hobo/pepperbox = 1,
		/obj/item/ammo_box/c10mm = 1,
		/obj/item/circular_saw = 1,
		/obj/item/storage/belt/utility/full = 1,
		/obj/item/reagent_containers/pill/patch/healpoultice = 1
	)

/datum/outfit/loadout/rustwalkersshaman
	name = "Rustwalkers Brain-Jack"
	backpack_contents = list(
		/obj/item/clothing/under/f13/rustwalkers = 1,
		/obj/item/clothing/under/f13/female/rustwalkers = 1,
		/obj/item/gun/ballistic/revolver/hobo/knucklegun = 1,
		/obj/item/ammo_box/c45rev = 2,
		/obj/item/circular_saw = 1,
		/obj/item/reagent_containers/pill/patch/healpoultice = 2,
		/obj/item/storage/belt/utility/full = 1,
		/obj/item/book/granter/crafting_recipe/tribal/rustwalkers = 1
	)

//Bone Dancer
/datum/outfit/loadout/bonedancerexile
	name = "Bone Dancer Exile"
	backpack_contents = list(
		/obj/item/clothing/under/f13/bone = 1,
		/obj/item/clothing/head/helmet/skull/bone = 1,
		/obj/item/book/granter/crafting_recipe/tribal/bone = 1,
		/obj/item/twohanded/spear/bonespear = 1,
		/obj/item/warpaint_bowl = 1,
		/obj/item/reagent_containers/pill/patch/healpoultice = 2
	)
