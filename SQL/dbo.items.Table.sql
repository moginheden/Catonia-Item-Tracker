USE [db858d5789ed564b0c9364a73301643bf4]
GO
/****** Object:  Table [dbo].[items]    Script Date: 2020-03-28 12:22:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[items](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[cost] [int] NOT NULL,
	[type] [nvarchar](max) NOT NULL,
	[subtype] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_loot] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[items] ON 

INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (0, N'Gold Coins', N'Standard currency', 1, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1, N'Gnome Mining Helmet', N'Looks like a Fez', 10, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2, N'Fishing Rod', N'Used to capture fish you can trade at fish markets to gain magic items.', 125, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (3, N'Flint & Steel', N'Lighting a torch with flint and steel is a full-round action, and lighting any other fire with them takes at least that long.', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (4, N'Shackles', N'A manacled creature can use the Escape Artist skill to slip free (DC 30) 
Breaking the manacles requires a Strength check (DC 26) 
Manacles have hardness 10 and 10 hit points.', 15, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (8, N'Torch', N'A torch burns for 1 hour, clearly illuminating a 20-foot radius and providing shadowy illumination out to a 40-foot radius. If a torch is used in combat, treat it as a one-handed improvised weapon that deals bludgeoning damage equal to that of a gauntlet of its size, plus 1 point of fire damage.', 0, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (9, N'Flask of oil', N'Worth 1 silver.
A pint of oil burns for 6 hours in a lantern. You can use a flask of oil as a splash weapon. Use the rules for alchemist’s fire, except that it takes a full round action to prepare a flask with a fuse. Once it is thrown, there is a 50% chance of the flask igniting successfully.

You can pour a pint of oil on the ground to cover an area 5 feet square, provided that the surface is smooth. If lit, the oil burns for 2 rounds and deals 1d3 points of fire damage to each creature in the area.', 0, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (10, N'Fishing Rod, Rosewood', N'Used to capture fish you can trade at fish markets to gain magic items.

+2 to Profession: Fishing', 800, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (11, N'Turtle Shell', N'These are the shells of Tokmo fighters and might be worth something to a collector or as proof we fought them.', 0, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (12, N'Diamond-tip chisel', N'Can be used for +1 to mining rolls, or turned into 1/10 of a diamond pebbles item', 36, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (13, N'Potion (Mage Armor)', N'+4 AC for 1 hour.', 50, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (14, N'Deodorizer', N' This cream colored gel makes you harder to track by smell. Effective for 8 hours.
Base Track survival check becomes 20 instead of 10.', 162, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (15, N'Skeleton Solution', N'Raises a corpse as an undead skeleton', 0, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (16, N'Zombie Puffball', N'Raises a corpse as an undead zombie', 0, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (17, N'Bear Trap, Bronze', N'Can be setup on a wilderness path to do 1d6 damage and immobilize a person.

Search, Disable Device, Open Lock, Reflex Save, Escape Artist, and Str DCs for this trap are all 20.', 115, N'Trap', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (18, N'Turtle Helmets (size small)', N'made of a small turtle shell, these helmets are worn by the Tokmo and might be of some value to a collector.', 6, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (19, N'Potion (Neutralize Poison)', N'A poisoned creature suffers no additional effects from the poison, and any temporary effects are ended, but the spell does not reverse instantaneous effects, such as hit point damage, temporary ability damage, or effects that don’t go away on their own.

The creature is immune to any poison it is exposed to during the duration of the spell, (50 minutes.)', 625, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (20, N'Scale Mail, small', N'The standard set of medium armor is made out of Bronze. It is the normal, default type from the players handbook and grants AC 4, Has a max dex bonus of 3, a -4 ACP, 25% arcane spell failure, and weighs 15 lbs, (small size.)  It has a hardness of 10 and 20 HP.', 50, N'Armor - Medium', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (21, N'Banded Mail, small', N'The standard set of heavy armor is made out of Bronze. It is the normal, default type from the players handbook and grants AC 6, Has a max dex bonus of 1, a -6 ACP, 35% arcane spell failure, and weighs 17.5 lbs (small.)  It has a hardness of 10 and 20 HP.', 250, N'Armor - Heavy', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (23, N'Scale Mail, Iron', N'This standard set of medium armor is made out of iron. It grants 6 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.  It grants AC 4, Has a max dex bonus of 3, a -4 ACP, 25% arcane spell failure, and weighs 30 lb. It has a hardness of 10 and 20 HP.', 275, N'Armor - Medium', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (24, N'Chain Shirt', N'Chain Shirt is a set of light armor that grants AC 4, has a max dex bonus of 4, a -2 armour check penalty to skills, 20% arcane spell failure, and weighs 25 lbs.  It has a hardness of 10 and 20 HP.', 100, N'Armor - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (25, N'Shield, heavy wooden', N'The standard wooden heavy sheild is made out of Birch Lumber. It is the normal, default type from the players handbook and grants AC 2, has a 15 arcane spell failure, and weighs 10 lb. It has a hardness of 5 and 15 HP.', 7, N'Shield - Heavy', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (26, N'Club', N'This simple one handed weapon does 1d6 bludgeoning damage with a x2 crit. It can be thrown with a range increment of 10 and weighs 3 lbs. It is just a wooden stick.  It is made out of birch and is the normal, default type from the players handbook.
', 0, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (27, N'Silver Coins', N'Standard Currency, 10 silver = 1 gold', 0, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (28, N'Copper Coins', N'Standard Currency, 100 copper = 1 gold', 0, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (29, N'Shield, Buckler', N'The standard metal sheild is made out of bronze or copper. It is the normal, default type from the players handbook and grants AC 1, a - ACP, 5% arcane spell failure, and weighs 5 lbs.  It has a hardness of 10 and 5 HP.

You can use a bow or crossbow without penalty while carrying it. You can also use your shield arm to wield a weapon, but you take a -1 penalty on attack rolls while doing so. If you use a weapon in your off hand, you don’t get the buckler’s AC bonus for the rest of the round.

You can’t bash someone with a buckler.', 15, N'Shield - Buckler', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (30, N'Dagger, Small, Birch', N'This simple, light, one handed weapon does 1d3 piercing or slashing damage with a 19-20 crit. It can be thrown with a range increment of 10 and weighs 1 lbs. It is a primitive weapon made by the Tokmo out of Birch', 2, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (31, N'Dagger', N'This simple, light, one handed weapon does 1d4 piercing or slashing damage with a 19-20 crit. It can be thrown with a range increment of 10 and weighs 1 lbs. It is made out of bronze and is the normal, default type from the players handbook.', 2, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (32, N'Dagger, Brass', N'This simple, light, one handed weapon does 1d4 piercing or slashing damage with a 19-20 crit. It can be thrown with a range increment of 10 and weighs 1 lbs. It is a standard bronze dagger covered by a brass coating that grants it +1 to hit.', 302, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (33, N'Heavy Crossbow, small', N'This simple ranged two handed weapon does 1d8 piercing damage with a 19-20 crit. It fires bolts with a range increment of 120 and weighs 8 lbs. It is made out of birch/bronze and is the normal, default type from the players handbook.

Loading a heavy crossbow is a full-round action that provokes attacks of opportunity.

Normally, operating it requires two hands. However, you can shoot, but not load, with one hand at a -4 penalty on attack rolls. You can shoot with each hand, but you take a penalty on attack rolls as if attacking with two one-handed weapons. This penalty is cumulative with the penalty for one-handed firing.', 50, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (34, N'Pick, heavy', N'This martial one handed melee weapon does 1d6 piercing damage with a x4 crit. It weighs 6 lbs. and can be used by a miner.  It does not have a diamond tip for mining.  It is made out of bronze and is the normal, default type from the players handbook.', 8, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (35, N'Javelin', N'This simple ranged one handed weapon does 1d6 piercing damage with a x2 crit. It has a range increment of 30 and weighs 2 lbs. It is made out of birch/bronze and is the normal, default type from the players handbook.

Using it as a melee weapon imposes a -4 penalty to hit as it was not designed for that.', 1, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (36, N'Light Crossbow', N'This simple ranged two handed weapon does 1d8 piercing damage with a 19-20 crit. It fires bolts with a range increment of 80 and weighs 4 lbs. It is made out of birch/bronze and is the normal, default type from the players handbook.

Loading a light crossbow is a move action that provokes attacks of opportunity.

Normally, operating it requires two hands. However, you can shoot, but not load, with one hand at a -2 penalty on attack rolls. You can shoot with each hand, but you take a penalty on attack rolls as if attacking with two one-handed weapons. This penalty is cumulative with the penalty for one-handed firing.
', 35, N'Weapon - Other', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (37, N'Longbow', N'This martial ranged two handed weapon does 1d8 piercing damage with a x3 crit. It fires arrows with a range increment of 100 and weighs 3 lbs. It is made out of birch and is the normal, default type from the players handbook.

Loading a longbow is a free action.

Normally, operating it requires two hands. A longbow is too unwieldy to use while you are mounted.', 75, N'Weapon - Other', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (38, N'Long Bow, small', N'This martial ranged two handed weapon does 1d6 piercing damage with a x3 crit. It fires arrows with a range increment of 100 and weighs 3 lbs. It is made out of birch and is the normal, default type from the players handbook.

Loading a longbow is a free action.

Normally, operating it requires two hands. A longbow is too unwieldy to use while you are mounted.', 75, N'Weapon - Other', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (39, N'Heavy Mace', N'This simple one handed weapon does 1d8 bludgeoning damage with a x2 crit. It weighs 8 lbs.  It is made out of birch/bronze and is the normal, default type from the players handbook.
', 12, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (40, N'Morning Star', N'This simple one handed weapon does 1d8 bludgeoning and piercing damage with a x2 crit. It weighs 6 lbs.  It is made out of birch/bronze and is the normal, default type from the players handbook.', 8, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (41, N'Short Bow', N'This martial ranged two handed weapon does 1d6 piercing damage with a x3 crit. It fires arrows with a range increment of 60 and weighs 2 lbs. It is made out of birch and is the normal, default type from the players handbook.

Loading a shortbow is a free action.

Normally, operating it requires two hands. You can use a shortbow while mounted.', 30, N'Weapon - Other', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (42, N'Spear, small', N'this simple, two handed melee weapon does 1d6 Piercing damage with a ×3 crit. it can be thrown with a range increment of 20 ft. and weighs 3 lb. it is made out of birch/bronze and is the normal, default type from the players handbook.', 2, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (43, N'Bolts', N'bolts cost 1/10 gold each. They can be fired from any type of crossbow.

A bolt that misses can be recovered 50% of the time, a bolt that hits always breaks.', 0, N'Ammunition', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (44, N'Bolts, +2 dispel summon', N'Bolts can be fired from any type of crossbow.

These bolts have +2 attack and damage, and might dispell summoned creatures on hit.

A bolt that misses can be recovered 50% of the time, a bolt that hits always breaks.', 0, N'Ammunition', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (45, N'Arrows, +2 dispel summon', N'Arrows can be fired from any type of longbow, or shortbow.

These arrows have +2 attack and damage, and might dispell summoned creatures on hit.

An arrow that misses can be recovered 50% of the time, an arrow that hits always breaks.', 0, N'Ammunition', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (48, N'Amethyst Gem', N'This solid jewel is colored a purple even more beautiful than what royalty wears. It radiates the power of Electric energy and represents Dexterity.', 1000, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (49, N'Amethyst Pebbles', N'This handful of jewel pebbles are colored a purple even more beautiful than what royalty wears. They faintly radiate the power of Electric energy and represent Dexterity.', 100, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (50, N'Amethyst Shard', N'This sharp jewel fragment is colored a purple even more beautiful than what royalty wears. It radiates the power of Electric energy and represent Dexterity.', 250, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (51, N'Flowerpot, Ancient', N'', 222, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (52, N'Angel Amaryllis', N'', 3000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (53, N'Angelfly Wing', N'', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (54, N'Animal Fang', N'The sharp fang of an often predatory animal. Used mostly in the carpentry and boneworker professions as arrowheads or necklaces.', 15, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (55, N'Animal Glue', N' This glue is made from boiling the hides and bones of various animals', 20, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (56, N'Antlion Silk', N'', 200, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (57, N'Antitoxin', N'', 50, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (58, N'Applesauce', N'', 30, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (59, N'Aqua Pearl', N'jewel', 180, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (60, N'Aqua Pearl Necklace', N'This azure colored necklace absorbs the first 5 points of Cold damage from an attack.
It sells for much more than it''s componencts cost.', 6480, N'Necklace', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (61, N'Arcane Seed', N'', 250, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (62, N'Arctic Skin', N'', 450, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (63, N'Attack Pincer', N'', 150, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (64, N'Augery Apple', N'', 6, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (65, N'Avian Egg', N'food', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (66, N'Baby Scuffleshroom', N'', 250, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (67, N'Back Bacon', N'', 2, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (68, N'Balance Brownie', N'A nice dark brownie made from various mystery sweet substances. Gives you +5 to all Balance checks for 4 hours.', 21, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (69, N'Bally', N'', 100, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (70, N'Bally Milk', N'', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (71, N'Bally Wool', N'', 350, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (72, N'Flowerpot, Bamboo', N'', 750, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (73, N'Bashon Coat', N'', 2000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (74, N'Bashon Hide', N'', 40, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (75, N'Bashon Leather', N'', 75, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (76, N'Bashon Meat', N'food', 200, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (77, N'Bat Fang', N'geocraft, arrowhead', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (78, N'Bat Wing', N'leather, alchemy', 10, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (79, N'Beak Trumpet', N'Gives +2 to Perform: Wind Instruments. Vanity item that sells for full price in coastal cities.', 600, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (80, N'Bear Hug Rug', N'', 480, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (81, N'Beet Boar', N'', 650, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (82, N'Beet Boar Back Bacon', N'', 100, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (83, N'Beet Boar Back Bacon Strip', N'', 10, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (84, N'Beholder Bud', N'', 1000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (85, N'Benediction Eggs', N'', 100, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (86, N'Bewitched Orange Juice', N'Restores a Level-0 spell. Takes effect 3 rounds after consuming.', 26, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (87, N'Bewitched Apple Juice', N'Restores a Level-1 spell. Takes effect  3 rounds after consuming.', 84, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (88, N'Bewitched Grape Juice', N'Restores a Level-2 spell. Takes effect 3 rounds after consuming.', 250, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (89, N'Bewitched Pineapple Juice', N'', 600, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (90, N'Bewitched Lemon Juice', N'', 800, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (91, N'Big Bat Wing', N'', 15, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (92, N'Big Bug Egg', N'food', 15, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (93, N'Big Sheep Horn', N'', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (94, N'Big Sheep Leather', N'', 45, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (95, N'Big Sheep Skin', N'', 30, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (96, N'Big Sheep Wool', N'', 200, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (97, N'Birch Log', N'', 2, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (98, N'Bird Feathers', N'', 2, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (99, N'Bird Meat', N'', 3, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (100, N'Bird Beak', N'', 4, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (101, N'Bird Claw', N'', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (102, N'Birch Lumber', N'', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (103, N'Black Bug’s Blood', N'food ingredient', 35, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (104, N'Black Fur', N'', 6, N'', N'')
GO
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (105, N'Black Lotus', N'*illegal*', 350, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (106, N'Black Lotus Extract', N'Ingested Poison:
-3d6 CON then -3d6 CON after 1 min. Fortitude Save DC:20; unconscious for 1d3 hours if failed 2nd save.]
Mildly bitter black vial of liquid, highly illegal and only effective when ingested.
Symptoms: Induces lucid, dream-like state. Victim will seek sleep.
*illegal*', 2000, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (107, N'Black Peppercorn', N'', 3, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (108, N'Blinding Acid', N'', 20, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (109, N'Blizzard''s Breath', N'', 1000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (110, N'Blue Dye', N'', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (111, N'Bomblet of Deafness', N'Direct Attack: Ranged touch attack; 30 ft. range. 3d6 Sonic damage; Fortitude save DC:14 or Deafened for 1d4 rounds.
Indirect Attack: 2d6 Sonic damage; Fortitude save DC:12 or Deafened for 1d4 rounds.
Creatures within 5 ft of impact: 2d6 Sonic damage; Fortitude save DC:12 or Deafened for 1d4 rounds.', 250, N'Bomb', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (112, N'Bomblet of Fire', N'Direct Attack: Ranged touch attack; 30 ft. range. 3d6 Fire Damage. Reflex Save DC:14 or Ablaze.
Indirect Attack: 2d6 Fire damage; Reflex Save DC:12 or Ablaze.
Creatures within 5 ft of impact: 1d6 Fire damage; Reflex Save DC:12 or Ablaze.
Ablaze: 1d6 Fire damage/round until put out or quenched. Max 5 rounds.', 250, N'Bomb', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (113, N'Bomblet of Gravel', N'Direct Attack: Ranged touch attack; 30 ft. range. 3d6 Earth damage; Strength check DC:14 or lose 10 ft. movement for 1d4 rounds.
Indirect Attack: 2d6 Earth damage; Strength check DC:12 or lose 10 ft. movement for 1d4 rounds.
Creatures within 5 ft of impact: 2d6 Earth damage; Strength check DC:12 or lose 10 ft. movement for 1d4 rounds', 250, N'Bomb', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (114, N'Bomblet of Ice', N'Direct Attack: Ranged touch attack; 30 ft. range. 3d6 Cold Damage. Balance Check DC:14 or Prone.
Indirect Attack: 2d6 Cold damage; Balance Check DC:12 or Prone.
Creatures within 5 ft of impact: 2d6 Cold damage; Balance Check DC:12 or Prone.', 250, N'Bomb', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (115, N'Bomblet of Radiance', N'Direct Attack: Ranged touch attack; 30 ft. range. 3d8 Radiant damage; Reflex Save DC:14 or Blinded for 1 minute.
Indirect Attack: 2d8 Radiant damage; Reflex Save DC:12 or Blinded for 1 minute.
Creatures within 5 ft of impact: 2d8 Radiant damage; Reflex Save DC:12 or Blinded for 1 minute.
This bomblet deals double damage to undead creatures.', 600, N'Bomb', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (116, N'Bomblet of Sickening', N'Direct Attack: Ranged touch attack; 30 ft. range. 3d6 Acid damage; Fortitude save DC:14 or Sickened for 1d4 rounds.
Indirect Attack: 2d6 Acid damage; Fortitude save DC:12 or Sickened for 1d4 rounds.
Creatures within 5 ft of impact: 2d6 Acid damage; Fortitude save DC:12 or Sickened for 1d4 rounds.', 250, N'Bomb', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (117, N'Bomblet of Stunning', N'Direct Attack: Ranged touch attack; 30 ft. range. 3d6 Electric damage; Fortitude save DC:14 or Stunned for 1 round.
Indirect Attack: 2d6 Electric damage; Fortitude save DC:12 or Stunned for 1 round.
Creatures within 5 ft of impact: 2d6 Electric damage; Fortitude save DC:12 or Stunned for 1 round.', 250, N'Bomb', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (118, N'Flowerpot, Brass', N'', 300, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (119, N'Brass Ingot', N'', 50, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (120, N'Brittany Log', N'', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (121, N'Flowerpot, Bronze', N'', 100, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (122, N'Bronze Ingot', N'', 15, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (123, N'Bronze Rod', N'', 3, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (124, N'Bucktooth Bunny', N'', 4, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (125, N'Buckwheat', N'', 2, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (126, N'Buckwheat Flour', N'', 10, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (127, N'Buddy Ale', N'food', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (128, N'Bug Meat', N'food', 3, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (129, N'Bum Rum', N'food', 2, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (130, N'Burlap Cloth', N'', 10, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (133, N'Big Sheep Meat', N'food', 10, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (136, N'Calamity Coconut', N'', 250, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (137, N'Carapace Chunk', N'leather, bone', 90, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (138, N'Cashmere Cloth', N'', 3000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (139, N'Catalyzer', N'', 400, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (140, N'Caverncrawler Cocoon', N'', 900, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (141, N'Celestial Holy Water', N'', 250, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (142, N'Centipede Cocoon', N'', 60, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (143, N'Centipede Silk', N'', 150, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (144, N'Ceremonial Beak Trumpet', N'', 3500, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (145, N'Chalet Wine', N'', 40, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (146, N'Chamelyanis', N'', 20, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (147, N'Chantelle White Wine', N'', 100, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (148, N'Chromite Chunk', N'', 50, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (149, N'Chromium Ingot', N'', 225, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (150, N'Chrono Chrysanthemum', N'', 3000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (151, N'Flowerpot, Clay', N'', 50, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (152, N'Cloaker Hide', N'', 450, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (153, N'Cloaker Leather', N'', 500, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (154, N'Clucker', N'', 15, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (155, N'Colorful Spine Arrow / Bolt', N'', 50, N'Ammunition', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (156, N'Come, Apophis (book)', N'', 4, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (157, N'Comet Fragment', N'', 1125, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (158, N'Conch Shell', N'', 45, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (159, N'Coniferous Carrot', N'food', 2, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (160, N'Copper Ore', N'A malleable metal used in the making of both brass and bronze.', 5, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (161, N'Copper Ingot', N'', 20, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (162, N'Cottontail', N'', 20, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (163, N'Cotton Cloth', N'', 50, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (164, N'Cotton Seed', N'', 75, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (165, N'Cow Milk', N'', 1, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (166, N'Crab Meat', N'', 10, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (167, N'Crab Shell', N'bone', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (168, N'Cream of Myconid', N'Made from a type of baby Myconid, this baby cream is used as an ingredient in other more exotic and flavorful dishes.', 345, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (169, N'Crème de la Crème', N'', 40, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (170, N'Crimson Cloth', N'', 650, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (171, N'Crispy Cod', N'This crispy fish dish not only tastes out of this world, but you feel more deadly after youve eaten it.', 83, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (172, N'Croc Hide', N'leather', 20, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (173, N'Croc Leather', N'', 30, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (174, N'Cruel Tentacle', N'', 50, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (175, N'Crusty Carapace', N'', 900, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (176, N'Crying Cod', N'', 100, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (177, N'Flowerpot, Crystal', N'', 300, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (178, N'Crystallizing Potion', N'', 100, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (179, N'Cure Tiny Wounds Potion', N'Restores 1d4 HP immediately', 30, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (180, N'Cure Light Wounds Potion', N' Restores 1d8+1 HP immediately', 150, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (181, N'Cure Moderate Wounds Potion', N'Restores 2d8+3 HP immediately', 310, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (182, N'Cure Serious Wounds Potion', N' Restores 3d8+5 HP immediately', 750, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (183, N'Cure Critical Wounds Potion', N' Restores 4d8+7 HP immediately', 1200, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (184, N'Dandy Brandy', N'', 1000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (185, N'Darkening Arrow', N'', 110, N'Ammunition', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (186, N'Darkmantle Skin', N'', 575, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (187, N'Deer Meat', N'', 20, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (188, N'Dehydrator', N'', 120, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (189, N'Deluxe Dirt', N'This basic soil type can be used to grow various items or melted into a magic orb. It radiates with the power of Earth energy.', 20, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (190, N'Demon Husk', N'', 666, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (192, N'Diamond Pebbles', N'This handful of jewel pebbles are colored like the sparkling white rays of sunshine. They faintly radiate the power of Radiant energy and represent both Strength and Intelligence.', 350, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (193, N'Diamond Shard', N'This sharp jewel fragment is colored like the sparkling white rays of sunshine. It radiates the power of Radiant energy and represent both Strength and Intelligence.', 850, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (194, N'Diamond Gem', N'This solid jewel is colored like the sparkling white rays of sunshine. It radiates the power of Radiant energy and represents both Strength and Intelligence.', 3500, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (195, N'Diabolic Grapes', N'food', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (196, N'Dino Hide', N'', 180, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (197, N'Dino Leather', N'', 250, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (198, N'Dino Meat', N'', 50, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (199, N'Dissolving Potion', N'', 200, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (200, N'Do It Yourself Surgery (book)', N'', 425, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (201, N'Dog Feathers', N'arrow fletching', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (202, N'Dog Hide', N'leather', 10, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (203, N'Dog Jerky', N'Meat jerky made out of the meat of dogs and other canid creatures. It gives you a +1 to your melee weapon damage for 30 minutes, but you must make a Will Save DC:9 to not vomit this up.', 4, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (204, N'Dog Leather', N'', 15, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (205, N'Dog Meat', N'food', 1, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (206, N'Draconic Leather', N'', 5000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (207, N'Dragon Blood', N'', 550, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (208, N'Dragon Bone', N'', 1600, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (209, N'Dragon Claw', N'', 800, N'', N'')
GO
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (210, N'Dragon Heart', N'', 25000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (211, N'Dragon Skin', N'', 3400, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (212, N'Dragonite Chain', N'', 1600, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (213, N'Dragonite Ingot', N'', 700, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (214, N'Dragonite Rod', N'', 175, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (215, N'Dragonite Ore', N'', 150, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (216, N'Dragonite Scales', N'', 800, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (217, N'Dragonite Sheet', N'', 3200, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (218, N'Draconic Cloth', N'', 10800, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (219, N'Dream Flower', N'', 950, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (220, N'Dry Bones', N'', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (221, N'Dungeon Daisy', N'', 1000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (222, N'Dust of Tracelessness', N'Covers 100 ft. radius with dust, cobwebs, and eliminates tracks and scent. Survival checks to track have a +20 to DC', 350, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (223, N'Electric Antenna', N'', 210, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (224, N'Electrosoil', N'Basic soil type, can be used to grow things or melted into a magic orb.', 12, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (225, N'Elixir of Love', N'As spell Charm Person to first humanoid creature the drinker sees; Will Save DC:14 negates; Lasts 1d3 hours.', 150, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (226, N'Elixir of Truth', N'As the spell Zone of Truth; Will Save DC:13 for each question; lasts 10 minutes', 250, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (227, N'Elixir of Fire', N'-1d6HP for 3 rounds (Fire damage); 25 ft. line Fire breath; touch attack; 3d6 Fire damage.
[Save DCs of Fire spells increase by +2, lasts 1 hour', 125, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (228, N'Elm Log', N'This non-magical log provides the same lack-of-benefits as birch, but looks nicer.  It needs to be converted into lumber before use.', 3, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (229, N'Emerald Gem', N'This solid jewel is colored a brilliant green. It faintly radiates the power of Sonic energy and represents Wisdom.', 1000, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (230, N'Emerald Lettuce', N'', 3, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (231, N'Emerald Pebbles', N'This handfull of jewel pebbles is colored a brilliant green. It faintly radiates the power of Sonic energy and represents Wisdom.', 100, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (232, N'Emerald Shard', N'This sharp jewel fragment is colored a brilliant green. It faintly radiates the power of Sonic energy and represents Wisdom.', 250, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (233, N'Enchanted Brittany Log', N'', 800, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (234, N'Enchanted Brittany Lumber', N'', 1000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (235, N'Enchanted Elm Log', N'', 150, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (236, N'Enchanted Elm Lumber', N'', 200, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (237, N'Enchanted Olde Oak Log', N'', 1200, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (238, N'Enchanted Olde Oak Lumber', N'', 1500, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (239, N'Enchanted Rosewood Log', N'', 400, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (240, N'Enchanted Rosewood Lumber', N'', 500, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (241, N'Enchanted Mahogany Log', N'', 1800, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (242, N'Enchanted Mahogany Lumber', N'', 2000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (243, N'Enormous Egg', N'alchemy', 160, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (244, N'Epona', N'', 10, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (245, N'Epona Brick', N'', 120, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (246, N'Ether', N'', 50, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (247, N'Everburning Torch Set (5)', N'', 550, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (248, N'Evil Eyeball', N'', 35, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (249, N'Exalted Horn', N'', 500, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (250, N'Extraction Liquid', N'', 50, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (251, N'Fabled Fowl Meat', N'', 550, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (252, N'Fat of Funghi', N'', 110, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (253, N'Fertilizer (Weak)', N'', 500, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (254, N'Fertilizer (Moderate)', N'', 1200, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (255, N'Fertilizer (Mighty)', N'', 5000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (256, N'Fiend Blood', N'alchemy', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (257, N'Flowerpot, Fiend', N'', 150, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (258, N'Fiery Feathers', N'', 55, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (259, N'Fiery Fern', N'', 1000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (260, N'Fiery Yarlax Arrow / Bolt', N'', 125, N'Ammunition', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (261, N'Fire Antler', N'', 125, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (262, N'Fire Leaf', N'', 4, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (263, N'Firesand', N'Basic soil type, can be used to grow things or melted into a magic orb.', 12, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (264, N'Firolena Hide', N'', 35, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (265, N'Firolena Leather', N'', 40, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (266, N'Fish Eggs', N'food', 60, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (267, N'Fish Scale', N'', 37, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (268, N'Fisherman’s Filet', N'food', 50, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (269, N'Flail Snail Gel', N'Allows you to turn Inhaled, Ingested, Contact Poison or Status Ailment Potion of Apprentice level or below into an Injury Poison', 500, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (270, N'Flail Snail Slime', N'', 150, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (271, N'Fortress Cheese', N'food', 18, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (272, N'Fowl Meat', N'', 20, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (273, N'Frisky Whiskey', N'', 20, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (274, N'Frost Turnip', N'food, herb', 2, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (275, N'Fug Fish', N'', 100, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (276, N'Fug Fish Filet', N'', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (277, N'Gardening Gloves', N'', 500, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (278, N'Gardening Gloves Supreme', N'', 1300, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (279, N'Garlic Baked Bread', N'A type of bread that makes the eater feel more hardy after eating. Gives you +3 TempHP for 4 hours.', 20, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (280, N'Giant Beak', N'', 50, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (281, N'Giant Bird Fan', N'', 300, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (282, N'Giant Compound Eye', N'', 800, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (283, N'Giant Crab Shell', N'', 200, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (284, N'Giant Feather', N'', 10, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (285, N'Giant Stinger', N'arrowhead, bone', 42, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (286, N'Giant Tusk', N'', 100, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (287, N'Gigas Hide', N'', 400, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (288, N'Gigas Skull', N'', 5000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (289, N'Glacial Horn', N'', 1000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (290, N'Glimmering Kernel', N'', 1550, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (291, N'Snail Flesh', N'', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (292, N'Glow Nose', N'', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (293, N'Gnarley Barley', N'', 1, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (294, N'Gorgon Butter', N'', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (295, N'Gorgon Hide', N'', 950, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (296, N'Goblin Head', N'', 70, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (297, N'Gold Chunk', N'', 300, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (298, N'Gold Ingot', N'', 700, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (299, N'Gold Ore', N'', 150, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (300, N'Golden Shovel', N'', 1200, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (301, N'Golem Uprising! (book)', N'', 175, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (302, N'Grain Seed', N'', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (303, N'Grandma Was A Succubus (book)', N'', 69, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (304, N'Growfast Alpha', N'', 350, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (305, N'Growfast Omega', N'', 1200, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (306, N'Grub Cocoon', N'', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (307, N'Grub Silk', N'', 10, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (308, N'Gryph Feathers', N'', 850, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (309, N'Gumbobo (fish)', N'', 100, N'', N'')
GO
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (310, N'Gustka Feathers', N'', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (311, N'Gygax Garlic', N'food', 3, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (312, N'Healing Herb Vine', N'', 100, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (313, N'Hellhound Pelt', N'', 450, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (314, N'Herb Seed', N'', 20, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (315, N'Hex Panther Coat', N'', 60, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (316, N'Hex Panther Leather', N'', 70, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (317, N'Hip Hops', N'', 4, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (318, N'Hippagryph Comb', N'', 200, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (319, N'Hippagryph Egg', N'', 2000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (320, N'Hippagryph Hatchling', N'', 10, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (321, N'Hippogryph Hatchling', N'', 3000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (322, N'Flowerpot, Horn', N'', 300, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (323, N'Horse Hide', N'', 35, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (324, N'Horse Leather', N'', 40, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (325, N'Horse Meat', N'', 10, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (326, N'Holy Water', N'', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (327, N'Hooch Scotch', N'', 7, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (328, N'Homesweet Honey', N'This base ingredient is carried by bees, wasps, and even some types of ants. Did you know most insects can produce some type of honey?', 50, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (329, N'Huge Feather', N'', 50, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (330, N'Humchi Feathers', N'The dark reddish, almost maroon colored feathers of a humchi, a giant hummingbird that lurks in tropical jungles. It is used mostly in the making of arrow fletchlings.', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (331, N'Hush Flower', N'', 800, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (332, N'Hydra Skin', N'', 2500, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (333, N'Ice Claw', N'', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (334, N'Ice Tusk', N'', 15, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (335, N'Ice Vanilla', N'', 75, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (336, N'Ingredients Pack', N'', 300, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (337, N'Insect Fan', N'', 200, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (338, N'Insect Wing', N'', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (339, N'Inverse Potion', N'', 250, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (340, N'Iron Chain', N'', 80, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (341, N'Iron Ingot', N'', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (342, N'Iron Rod', N'', 6, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (343, N'Iron Mandible', N'', 22, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (344, N'Iron Ore', N'', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (345, N'Iron Scales', N'', 50, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (346, N'Iron Sheet', N'', 150, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (347, N'Iron Sphere', N'', 600, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (348, N'Ironweave Cloth', N'', 150, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (349, N'Jackalope Antler', N'', 100, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (350, N'Jackalope Hide', N'', 250, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (351, N'Jackalope Leather', N'', 300, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (352, N'Jagged Antler', N'', 50, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (353, N'Jalapapepper', N'', 4, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (354, N'Jelly Concentrate', N'Allows you to turn Inhaled, Ingested,Contact Poison or Status Ailment Potion of Artisan level or below into a different Poison type.]
[You can switch an Inhaled poison to a Contact Poison or a Contact Poison into an Ingested Poison and so on]', 2000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (355, N'Jelly Mucus', N'', 350, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (356, N'Jewel Gryph Arrow / Bolt', N'', 220, N'Ammunition', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (357, N'Kane''s Sugar', N'', 60, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (358, N'Karoro Feathers', N'', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (359, N'Karpathi (fish)', N'', 100, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (360, N'Keke Lime', N'food', 10, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (361, N'Kingdom Dove Feathers', N'', 55, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (362, N'Kobald Skin', N'', 20, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (363, N'Kobald Leather', N'', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (364, N'Koda Lily (restricted)', N'', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (365, N'Koda Powder (restricted)', N'Contact Poison:
 -1 INT, -1 WIS, -1 CHA per hour; Fortitude Save DC:25(1 save/hour; max 3 saves); ability score damage is permanent.
Deadly pink lily found deep in forests.
Symptoms: Victim sweats, has headaches and difficulty breathing. 2nd hour, breaks into pink rashes shaped like flowers', 350, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (366, N'Kodiak Pelt', N'', 370, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (367, N'Kori-Kori Feathers', N'', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (368, N'Kronus Pebbles', N'This handful of jewel pebbles are colored like a resplendant tree stump, caught in times wake. They faintly radiate the power of Necrotic energy and represent both Dexterity and Wisdom.', 350, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (369, N'Kronus Shard', N'This sharp jewel fragment is colored like a resplendant tree stump, caught in times wake. It radiates the power of Necrotic energy and represent both Dexterity and Wisdom.', 850, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (370, N'Kronus Gem', N'This solid jewel is colored like a resplendant tree stump, caught in times wake. It radiates the power of Necrotic energy and represent both Dexterity and Wisdom.', 3500, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (371, N'Kytar (fish)', N'', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (372, N'Large Mandible', N'', 12, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (373, N'Lesser Leviathan', N'', 300, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (374, N'Leviathan Hide', N'', 100, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (375, N'Liberty Leaf', N'', 250, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (376, N'Lich Crème (illegal)', N'This illegal substance is used to create undead creatures. It is also very effective as a cure for certain bacteria and infections that can’t be rid of by
conventional means.This formula makes 5 bottles of Lich Crème.', 350, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (377, N'Lightning Lily', N'', 1000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (378, N'Lionshrimp (fish)', N'This tasty shrimp is the size of a large lobster and yellow-orange in color. What makes it desirable is the size of its tail. Looks like a lobster, but tastes more like a crab.', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (379, N'(Livestock) Clucker', N'This livestock gives you one regular egg every 3 days and one Avian Egg every year.', 50, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (380, N'(Livestock) Oinker', N'This livestock, when fully grown and slaughtered, will yield 20 Pork Chops. ', 50, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (381, N'(Livestock) Bally', N'This livestock gives you 1 Bally Milk every 4 days (assuming its a mother). The males can be sheered once a year to yield one handful of Bally Wool. If slaughtered, will yield enough meat for 8 meals.', 150, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (382, N'(Livestock) Halcyon Bashon', N'This livestock gives Cow Milk once a day. When slaughtered, yields 50 meals worth of meat and also a 10% chance to yield a Bashon Meat, the most tasty, magic-infused meat on the market.', 400, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (383, N'(Livestock) Beet Boar', N'This is a wild animal and should not be kept as livestock. 
It yields 7 Beet Boar Back Bacon when slaughtered, and as a pet companion, will help you find 1d6 Thicket Beets per day, half of which it will take as food or the deal is off.', 650, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (384, N'Lizard Egg', N'', 35, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (385, N'Lizard Leather', N'', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (386, N'Lizard Skin', N'', 20, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (387, N'Lizard Tail', N'alchemy', 15, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (388, N'Lobster Meat', N'', 10, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (389, N'Long Fuse', N'Used to time a delayed explosion; up to 1 minute.
Info: A longer swab of cotton rolled into a thread and mixed with two flammable, combustible agents', 20, N'Bomb - Mod', N'Fuse')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (390, N'Longhorn', N'', 200, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (391, N'Love Potion No.9', N'-1d4HP for 3 rounds (Poison damage), Save DC to Charm, Charm Monster, Suggestion, Dominate Person, increase by +1.
Also gives +1 to Diplomacy and +1 to Intimidate. Effect lasts for 10 minutes. Can be stacked up to 3x', 255, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (392, N'Lowhog Hide', N'', 100, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (393, N'Lucky Clovers', N'', 12, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (394, N'Lucky Foot', N'', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (395, N'Lulu Lemon', N'', 60, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (396, N'Luminous Brass Ingot', N'', 100, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (397, N'Luminous Silver Ingot', N'', 1000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (398, N'Luminous Gold Ingot', N'', 1500, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (399, N'Luminous Platinum Ingot', N'', 5500, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (400, N'Luminous Moonlight Ingot', N'', 9000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (401, N'Lurid Liqueur', N'', 15, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (402, N'Marii Tea', N'', 30, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (403, N'Magic Bean', N'', 300, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (404, N'Magic Feather', N'', 200, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (405, N'Flowerpot, Magic', N'', 450, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (406, N'Magic Skull', N'', 200, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (407, N'Magic Orb', N'', 100, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (408, N'Magic Orb (Fire)', N'', 120, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (409, N'Magic Orb (Ice)', N'', 80, N'', N'')
GO
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (410, N'Magic Orb (Wind)', N'', 80, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (411, N'Magic Orb (Earth)', N'', 200, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (412, N'Magic Orb (Lightning)', N'', 120, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (413, N'Magic Orb (Water)', N'', 50, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (414, N'Magic Orb (Darkness)', N'', 250, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (415, N'Magic Orb (Time)', N'', 2000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (416, N'Magic Orb (Light)', N'', 4000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (417, N'Magical Horse Hide', N'', 625, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (418, N'Mahogany Log', N'', 7, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (419, N'Malt of Malevolence', N'', 300, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (420, N'Manticore Hide', N'', 600, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (421, N'Manticore Leather', N'', 650, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (422, N'Marshmantle Egg', N'', 500, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (423, N'Mean Bean', N'', 4, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (424, N'Mean Tree Pod', N'', 1800, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (425, N'Meownix Hide', N'When turned into armor, it gives the wearer +DR2/slashing+magic, +2 to Fortitude Saves, -4 Diplomacy, and +2 to Survival. When turned into outerwear, it gives the wearer +2 to their Initiative roll. As a weapon grip, gives an extra 1 Man-of-War Technique "Accurate Attack" per day.', 50, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (426, N'Meownix Leather', N'', 60, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (427, N'Metallic Nut', N'', 2200, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (428, N'Midnight Cloth', N'', 5000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (430, N'Mindflayer Moonmelon', N'', 555, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (432, N'Mistletoe Thistle', N'Green and red plant that can be found when Foraging
', 50, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (433, N'Molar of Monster', N'', 215, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (434, N'Molson Caitonian', N'', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (435, N'Monkey Hide', N'', 70, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (436, N'Monkey Leather', N'', 75, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (437, N'Moon Elf Love Slave (book)', N'', 999, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (438, N'Moonlight Ingot', N'', 4500, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (439, N'Moondust Pile', N'', 800, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (440, N'Mothman Meat', N'', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (441, N'Mountain Ram Hide', N'', 230, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (442, N'Mountain Ram Leather', N'', 300, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (443, N'Mountain Ram Wool', N'', 2500, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (444, N'Mulsum', N'This honey wine restores a level-0, level-1, and level-2 spell without resting. It takes effect 3 hours after drinking it.', 350, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (445, N'Mushroom Poison Potion', N'Ingested Poison:
 -1d6 HP damage for 3 rounds; Fort Save DC:11 (1 save/round)
 Horrible tasting; Will turn most other liquids a bright pink color.
 Victim breaks out in cold sweat and heart races', 225, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (446, N'Moderate Mushroom Poison Potion', N'Ingested Poison:
 -1d6+2 HP damage for 3 rounds; Fort Save DC:13 (1 save/round)
 Horrible tasting; Will turn most other liquids a bright pink color.
 Victim breaks out in cold sweat and heart races', 345, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (447, N'Naga Skin', N'', 252, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (448, N'Neener Tooth', N'', 1, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (450, N'Nightsteel Chain', N'', 1200, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (451, N'Nightsteel Crown', N'', 500, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (452, N'Nightsteel Ingot', N'', 550, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (453, N'Nightsteel Rod', N'', 137, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (454, N'Nightsteel Scales', N'', 600, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (455, N'Nightsteel Sheet', N'', 2400, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (456, N'Nimrod Nut', N'', 1, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (457, N'Occultic Orange', N'', 4, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (458, N'Octofunghi Dust', N' Inhaled Poison:
 Loss of last Feat taken, then subject is Nauseated 1 minute later; Fort Save DC:15 (1 save/hour; max 3 saves)
 Symptoms: Purple coin-sized rashes cover the victim’s body. Typically lasts 3 days.', 450, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (459, N'Octopi Funghi', N'', 200, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (460, N'Octovole Tail', N'', 125, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (461, N'Oilsand', N'', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (462, N'Oinker', N'', 50, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (463, N'Olde Oak Log', N'', 6, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (464, N'Opal Pebbles', N'This handful of jewel pebbles are colored like the darkest hour of midnight. They faintly radiate the power of Vile energy and represent both Constitution and Charisma.', 350, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (465, N'Opal Shard', N'This sharp jewel fragment is colored like the darkest hour of midnight. It radiates the power of Vile energy and represent both Constitution and Charisma.', 850, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (466, N'Opal Gem', N'This solid jewel is colored like the darkest hour of midnight. It radiates the power of Vile energy and represent both Constitution and Charisma.', 3500, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (475, N'Oregano', N'', 1, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (476, N'Oregano Flakes', N'', 1, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (477, N'Legendary Drumstick', N'+1 to DEX, lasts 1 year! (Maximum of +1)', 1610, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (478, N'Pantheron Eye', N'', 20, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (479, N'Pantheron Hide', N'', 45, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (480, N'Pantheron Leather', N'', 60, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (481, N'Paralyzing Poison', N'', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (482, N'Peppercorn Sauce', N'This sauce tastes extra peppery. The pinch of funghi fat seems to enhance the flavor. This is an ingredient used in other culinary recipes.', 450, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (483, N'Petri Seed', N'', 600, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (484, N'Petrifying Acid', N'', 475, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (485, N'Petrifying Potion', N' Petrified for 1 hour; Fort Save DC:17 (1 save/round; max 3 saves)', 500, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (486, N'Phoenix Feathers', N'', 600, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (487, N'Pig Skin', N'', 3, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (488, N'Pig Leather', N'', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (489, N'Pinewood Mint', N'', 1, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (491, N'Platinum Ore', N'', 400, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (492, N'Platinum Ingot', N'', 2000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (493, N'Plumpkin', N'', 100, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (494, N'Plumpkin Flesh', N'food', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (495, N'Flowerpot, Plumpkin', N'This flowerpot is used in the Gardening profession . If eaten, it replicates the spell Hide From Undead. Lasts 20 minutes.', 150, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (496, N'Plumpkin Seed', N'herb, alchemy', 3, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (497, N'Poison Bomblet', N'', 150, N'Bomb', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (498, N'Poison Claw', N'', 10, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (499, N'Poison Dust', N'Inhaled Poison:
 -1d4 HP damage for 3 rounds; Fort Save DC:11 (1 save/round)
 Purple dust; very fine powder easy to become airborne.
 [Symptoms: Induces coughing and severe sneezing.', 75, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (500, N'Poison Leaf', N'', 10, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (501, N'Poison Paste', N'Allows you to turn Inhaled, Ingested,Contact Poison or Status Ailment Potion of Beginner level into an Injury Poison.', 380, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (502, N'Poison Princess', N'', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (503, N'Poison Sac', N'alchemy', 20, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (504, N'Polarcrystal Gem', N'This solid jewel is colored like the sky on a cloudless day. It radiates the power of Cold energy and represent Intelligence.', 1000, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (505, N'Polarcrystal Pebbles', N'This handful of jewel pebbles are colored like the sky on a cloudless day. They faintly radiate the power of Cold energy and represent Intelligence.', 100, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (506, N'Polarcrystal Shard', N'This sharp jewel fragment is colored like the sky on a cloudless day. It radiates the power of Cold energy and represent Intelligence.', 250, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (507, N'Pool Pirahna (fish)', N'', 145, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (508, N'Poptato', N'', 3, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (509, N'Pork Chop', N'', 3, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (510, N'Prehistoric Egg', N'', 50, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (511, N'Primitive Ceremonial Dagger', N'', 35, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (512, N'Primordial Soup', N'', 200, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (513, N'Princess Toadstool', N'food, gardening enhancer', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (514, N'Purple Dye', N'', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (515, N'Quickening Potion', N'', 100, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (516, N'Quicksand', N'Basic soil type, can be used to grow things or melted into a magic orb.', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (517, N'Quicksilver (ball)', N'', 50, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (518, N'Rabbit Leather', N'', 20, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (519, N'Rabbit Meat', N'food', 50, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (520, N'Rabbit Pelt', N'', 15, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (521, N'Raging Red Onion', N'food', 2, N'', N'')
GO
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (522, N'Rain Rose', N'', 1000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (523, N'Rolling Hill Honey', N'', 77, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (524, N'Razorfin Flail', N'', 250, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (525, N'Red Dragon Royal', N'', 500, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (526, N'Red Dye', N'', 50, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (527, N'Red Reed Funghi', N'', 2, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (528, N'Red Rock', N'', 100, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (529, N'Redsteel Chain', N'', 250, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (530, N'Redsteel Ingot', N'', 120, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (531, N'Redsteel Rod', N'', 30, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (532, N'Redsteel Scales', N'', 180, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (533, N'Redsteel Sheet', N'', 500, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (534, N'Regen Potion (Tiny)', N' Restores 1d4 HP immediately then 1HP per round for 2 more rounds', 55, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (535, N'Regen Potion (Light)', N' Restores 1d4 HP immediately then 1d4 HP per round for 2 more rounds', 175, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (536, N'Regen Potion (Moderate)', N' Restores 2d4 HP immediately then 2d4 HP per round for 2 more rounds', 245, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (537, N'Regen Potion (Serious)', N' Restores 3d4 HP immediately then 3d4 HP per round for 2 more rounds', 325, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (538, N'Regen Potion (Critical)', N' Restores 4d4 HP immediately then 4d4 HP per round for 2 more rounds', 555, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (539, N'Remedial Poppy', N'', 400, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (540, N'Restoration Root', N'', 275, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (541, N'Revival Radish Heart', N'resurection alchemy ingredient', 250, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (542, N'Rock Child', N'', 1000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (543, N'Rodent Pelt', N'', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (544, N'Romanov Leaves', N'cloth, food, herb, gardening enhancer', 4, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (545, N'Rosewood Log', N'', 4, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (546, N'Royal Jelly', N'', 150, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (547, N'Royal Tea', N'', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (548, N'Royal Tea Leaves', N'food', 4, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (549, N'Ruby Gem', N'This solid jewel is colored like an erupted volcano at midnight. It radiates the power of Fire energy and represent Strength.', 1000, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (550, N'Ruby Pebbles', N'This handful of jewel pebbles are colored like an erupted volcano at midnight. They faintly radiate the power of Fire energy and represent Strength.', 100, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (551, N'Ruby Shard', N'This sharp jewel fragment  is colored like an erupted volcano at midnight. It radiates the power of Fire energy and represent Strength.', 250, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (552, N'Rug Ray', N'', 225, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (553, N'Runnel Shark', N'', 1000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (554, N'Flowerpot, Rusty', N'', 600, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (555, N'Sabre Tooth', N'', 350, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (556, N'Salt of the Sea', N'', 2, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (557, N'Sandguin Feathers', N'', 15, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (558, N'Sandy Fish Arrow / Bolt', N'', 25, N'Ammunition', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (559, N'Sapphire Pebbles', N'This handful of jewel pebbles are colored like the intense blue of a night about to fall into blackness. They faintly radiate the power of Acid energy and represent Charisma.', 100, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (560, N'Sapphire Shard', N'This sharp jewel fragment is colored like the intense blue of a night about to fall into blackness. It radiates the power of Acid energy and represent Charisma.', 250, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (561, N'Sapphire Gem', N'This solid jewel is colored like the intense blue of a night about to fall into blackness. It radiates the power of Acid energy and represent Charisma.
', 1000, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (562, N'Satyr Horn', N'', 300, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (563, N'Scorpion Husk', N'bone', 45, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (564, N'Scroll of 0 level spell', N'', 15, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (565, N'Scroll of 1st level spell', N'', 30, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (566, N'Scroll of 2nd level spell', N'', 160, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (567, N'Scroll of 3rd level spell', N'', 375, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (568, N'Scroll of 4th level spell', N'', 600, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (569, N'Scroll of 5th level spell', N'', 950, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (570, N'Sea Serpent Hide', N'', 1000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (571, N'Sea Serpent Leather', N'', 1400, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (572, N'Segmented Legs', N'food', 45, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (573, N'Seraph Feathers', N'', 700, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (574, N'Shard Venom Sac', N'', 50, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (575, N'Sharp Beak', N'', 10, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (576, N'Sharp Fin (small)', N'food, bone', 23, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (577, N'Sharp Fin (medium)', N'food, bone', 23, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (578, N'Sharp Fin (large)', N'food, bone', 46, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (579, N'Sharp Fin (huge)', N'', 46, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (580, N'Sharp Spine', N'A spine of a fantastical creature. These are often found on dragons and creatures from the dragon family.', 50, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (581, N'Sheepskin', N'', 30, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (582, N'Sheep Horn', N'', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (583, N'Shikari Pelt', N'', 350, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (584, N'Shikari Leather', N'', 400, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (586, N'Shorthorn', N'', 75, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (587, N'Silent Pot Shard', N'', 150, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (588, N'Silver Horn', N'', 1750, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (589, N'Silver Ingot', N'', 350, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (590, N'Silver Insect Hairpin', N'+2 diplomacy, +2 gather information', 255, N'Headgear', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (591, N'Silver Ore', N'', 50, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (592, N'Silver Shovel', N'', 800, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (593, N'Skeleton Shamrock', N'', 3000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (594, N'Skin of Dread Beast', N'', 2000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (595, N'Sleep Arrow', N'', 85, N'Ammunition', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (596, N'Slime Oil', N'gardening, herb, alchemy, stonecrafting ingredient', 10, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (597, N'Small Iron Mandible', N'', 12, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (598, N'Snail Scales', N'', 65, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (599, N'Snake Meat', N'', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (600, N'Snake Oil', N'', 15, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (601, N'Snowpowder', N'Basic soil type, can be used to grow things or melted into a magic orb.', 8, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (602, N'Sparkling White Wine', N'', 100, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (603, N'Spectral Stem', N'', 575, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (604, N'Spectre Syrup', N'', 75, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (605, N'Spider Eggplant', N'', 9, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (606, N'Spider Eye', N'food, herb', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (607, N'Spider Ink', N'', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (608, N'Spider Satin', N'', 450, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (609, N'Spider Silk', N'', 35, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (610, N'Spider Web', N'', 15, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (611, N'Spine Vine', N'herb, gardening equipment, alchemy', 20, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (612, N'Spirit Orb (0 Circle)', N'', 225, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (613, N'Spirit Orb (1st Circle)', N'', 690, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (614, N'Spirit Orb (2nd Circle)', N'', 1290, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (615, N'Spirit Orb (3rd Circle) ', N'', 2390, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (616, N'Spirit Orb (4th Circle)', N'', 3690, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (617, N'Spirit Orb (5th Circle)', N'', 5490, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (618, N'Spirit Orb (6th Circle)', N'', 7690, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (619, N'Spirit Orb (7th Circle)', N'', 10290, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (620, N'Spirit Orb (8th Circle)', N'', 13290, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (621, N'Spirit Orb (9th Circle)', N'', 16690, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (622, N'Spring Water', N'food', 3, N'', N'')
GO
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (623, N'Spyglass', N'', 1000, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (624, N'Star Seed', N'', 1000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (625, N'Stardust', N'', 400, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (626, N'Steelweave Silk', N'', 2000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (627, N'Stillborn Plumpkin', N'', 70, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (628, N'Stone Morningstar Wand', N'3 Stone Shape, 3 Stone Skin, 1 Resilient Sphere Spells', 5000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (629, N'Storm Corn', N'', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (630, N'Sugarkane', N'food', 12, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (631, N'Sunrise Oil', N'', 50, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (632, N'Swamp Tomato', N'', 3, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (633, N'Swampslicer', N'', 250, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (634, N'Swampslicer Dicer', N'', 500, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (635, N'Swiftcow Hide', N'', 50, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (636, N'Swiftcow Horn', N'', 200, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (638, N'Swiftcow Leather', N'', 100, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (640, N'Swiftcow Sirloin', N'', 50, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (641, N'Swiftcow Ribs', N'', 20, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (642, N'Syrnx Feathers', N'', 400, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (643, N'Terra Root', N'', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (644, N'The Passionate Yeti (book)', N'', 27, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (645, N'Thicket Beet', N'', 35, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (646, N'Thistlesnake Head', N'', 50, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (647, N'Thrashing Wheat', N'food', 2, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (648, N'Thornmelon', N'', 100, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (649, N'Thunderstone', N'', 30, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (650, N'Tin Ore', N'', 1, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (651, N'Tinfoil Hat', N'+2 Save vs. Command, Charm, Suggestion, Dominate Person', 300, N'Headgear', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (652, N'Tome of [Magic], Vol. I', N'', 250, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (653, N'Tome of [Magic], Vol. II', N'', 500, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (654, N'Tome of [Magic], Vol. III', N'', 750, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (655, N'Tome of [Magic], Vol. IIII', N'', 1500, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (656, N'Tome of [Magic], Vol. V', N'', 3000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (657, N'Topaz Pebbles', N'This handful of jewel pebbles are mostly orange, though some are known to also be yellow. They faintly radiate the power of Earth energy and represent Constitution.', 100, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (658, N'Topaz Shard', N'This sharp jewel fragment is mostly orange, though some are known to also be yellow. It radiates the power of Earth energy and represent Constitution.
', 250, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (659, N'Topaz Gem', N'This solid jewel is mostly orange, though some are known to also be yellow. They faintly radiate the power of Earth energy and represent Constitution.', 1000, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (660, N'Tornado Tulip', N'', 1000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (661, N'Tortosaur Shell', N'', 1280, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (662, N'Trailspringer Mitten', N'', 800, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (663, N'Trawler’s Meat', N'', 27, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (664, N'Tree Seed', N'', 50, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (665, N'Trembull Hide', N'', 250, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (666, N'Trembull Leather', N'', 300, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (667, N'Tribronodon Shell Fragment', N'', 500, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (668, N'Tritanium Chain', N'', 700, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (669, N'Tritanium Ingot', N'', 350, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (670, N'Tritanium Rod', N'', 87, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (671, N'Tritanium Scales', N'', 370, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (672, N'Tritanium Sheet', N'', 1300, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (673, N'Tritanium Skeleton', N'', 2450, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (674, N'Truffalo', N'', 300, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (675, N'Tycondria (fish)', N'', 515, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (676, N'Ultra Sharp Toenail', N'', 150, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (677, N'Unholy Water', N'', 325, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (678, N'Universal Solvent', N'', 50, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (679, N'Unwilded Oats', N'', 1, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (680, N'Urex Feathers', N'', 50, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (681, N'Varkmaw Hide', N'', 250, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (682, N'Varkmaw Leather', N'', 300, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (683, N'Veggie Seed', N'', 15, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (684, N'Velvet Cloth', N'', 1200, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (685, N'Venom Fang', N'', 37, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (686, N'Venom of Fire Beetle', N'[Stats: -1d10 Fire damage then -1d10 Fire damage for 3 rounds; Fort Save DC:12 each round]
[Info: This venom is a very dark purple color.]
[Extraction: Wild Empathy or Handle Animal check DC:15 to extract from wild creature.]
[Symptoms: Victim slightly glows red and looks like they will combust.]
Each unit of poison fills a single potion bottle and is enough to coat a piercing weapon 10 times or a whole quiver of 10 arrows or bolts
', 380, N'Ammunition - Mod', N'Poison')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (687, N'Venom of Centipede', N'[Stats: -1d2 DEX then -1d2 DEX in 1 hour; Fort Save DC:10] value: 150
[Info: This venom is a clear orange-tinted color.]
[Extraction: Wild Empathy or Handle Animal check DC:15 to extract from wild creature.]
[Symptoms: Victim becomes paranoid as their heart rate increases.]
Each unit of poison fills a single potion bottle and is enough to coat a piercing weapon 10 times or a whole quiver of 10 arrows or bolts
', 150, N'Ammunition - Mod', N'Poison')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (688, N'Venom of Scorpion', N'[Stats: -1d2 CON then -1d2 CON in 1 hour; Fort Save DC:10] value: 150
[Info: This venom is a murky dark brown color.]
[Extraction: Wild Empathy or Handle Animal check DC:15 to extract from wild creature.]
[Symptoms: Victim starts babbling.]
Each unit of poison fills a single potion bottle and is enough to coat a piercing weapon 10 times or a whole quiver of 10 arrows or bolts', 150, N'Ammunition - Mod', N'Poison')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (689, N'Venom of Spider', N' Stats: -1d2 STR then -1d2 STR in 1 hour; Fort Save DC:10] value: 150
[Info: This venom is a grayish black color.]
[Extraction: Wild Empathy or Handle Animal check DC:15 to extract from wild creature.]
[Symptoms: Victim sweats profusely and finds it painful to speak.', 150, N'Ammunition - Mod', N'Poison')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (690, N'Venom of Viper', N'[Stats: (tiny) -1d2 CHA then -1d2 CHA in 1 hour; Fort Save DC:10] value: 150
[Info: This venom is a clear purple-tinted color.]
[Extraction: Wild Empathy or Handle Animal check DC:15 to extract from wild creature.]
[Symptoms: Victim becomes lethargic.]
Each unit of poison fills a single potion bottle and is enough to coat a piercing weapon 10 times or a whole quiver of 10 arrows or bolts', 150, N'Ammunition - Mod', N'Poison')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (691, N'Vibrant Red Fur', N'This vibrant red fur has a faint glow to it. If you attach three of these around the neck area of any body slot item such as robes, shirts, or armor, you gain advantage to Reflex Saves vs. Fire Energy (if applicable). It does not take up a space on your neck slot. Fur is also sometimes used as a lining for boots or in other fashion items.', 100, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (692, N'Vibrant Azure Fur', N'This vibrant azure fur has a faint glow to it. If you attach three of these around the neck area of any body slot item such as robes, shirts, or armor, you gain advantage to Reflex Saves vs. Cold Energy (if applicable). It does not take up a space on your neck slot. Fur is also sometimes used as a lining for boots or in other fashion items.', 100, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (693, N'Vibrant Green Fur', N'This vibrant green fur has a faint glow to it. If you attach three of these around the neck area of any body slot item such as robes, shirts, or armor, you gain advantage to Reflex Saves vs. Wind and Sonic Energy (if applicable). It does not take up a space on your neck slot. Fur is also sometimes used as a lining for boots or in other fashion items.', 100, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (694, N'Vibrant Yellow Fur', N'This vibrant yellow fur has a faint glow to it. If you attach three of these around the neck area of any body slot item such as robes, shirts, or armor, you gain advantage to Reflex Saves vs. Earth Energy (if applicable). It does not take up a space on your neck slot. Fur is also sometimes used as a lining for boots or in other fashion items.', 100, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (695, N'Vibrant Purple Fur', N'This vibrant purple fur has a faint glow to it. If you attach three of these around the neck area of any body slot item such as robes, shirts, or armor, you gain advantage to Reflex Saves vs. Electric Energy (if applicable). It does not take up a space on your neck slot. Fur is also sometimes used as a lining for boots or in other fashion items.', 100, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (696, N'Vibrant White Fur', N'This vibrant white fur has a faint glow to it. If you attach three of these around the neck area of any body slot item such as robes, shirts, or armor, you gain advantage to Reflex Saves vs. Radiant and Holy Energy (if applicable). It does not take up a space on your neck slot. Fur is also sometimes used as a lining for boots or in other fashion items.', 100, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (697, N'Vibrant Brown Fur', N'This vibrant brown fur has a faint glow to it. If you attach three of these around the neck area of any body slot item such as robes, shirts, or armor, you gain advantage to Reflex Saves vs. Necrotic and Death Energy (if applicable). It does not take up a space on your neck slot. Fur is also sometimes used as a lining for boots or in other fashion items.', 100, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (698, N'Vibrant Black Fur', N'This vibrant black fur has a faint glow to it. If you attach three of these around the neck area of any body slot item such as robes, shirts, or armor, you gain advantage to Reflex Saves vs. Vile and Dark Energy (if applicable). It does not take up a space on your neck slot. Fur is also sometimes used as a lining for boots or in other fashion items.', 100, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (699, N'Vicious Arrow (+1 atk, +1 dmg)', N'This arrow adds +1 to your ranged attack rolls and +1 to your damage rolls when used. Cannot be recovered.', 30, N'Ammunition', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (700, N'Violaceous Cloth', N'', 2250, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (701, N'Volcano Sauce', N'', 20, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (702, N'Voodoo Pineapple', N'food', 40, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (703, N'Walrus Pelt', N'', 20, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (704, N'War Won Ton', N'This pork soup is made from Pakalele, and also includes noodles. It is a favorite among Monks and Brawlers. Gives you +2 to your melee damage and the Improved Unarmed Strike feat for 1 hour. ', 45, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (705, N'Wasp Venom', N'', 150, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (706, N'Water', N'', 1, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (707, N'Flowerpot, Cocoon', N'', 200, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (708, N'Wolf Head', N'', 68, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (709, N'Wolf Pelt', N'', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (710, N'Wool Cloth', N'', 220, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (711, N'Wyrm Skull', N'', 35, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (712, N'Wyrm Skull Helm', N'', 45, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (713, N'Wyvern Skin', N'', 1700, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (714, N'Yarlax Feathers', N'', 400, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (715, N'Yeti Fur', N'', 35, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (716, N'Zentoki Moss', N'', 10, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (717, N'Zephyr Ash', N'Basic soil type, can be used to grow things or melted into a magic orb.', 8, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (718, N'Zinc Ore', N'', 20, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (719, N'Apple', N'Standard fruit for eating. Not a special food.', 1, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (720, N'Bee Venom', N'[Stats: -1d2 WIS then -1d2 WIS in 1 min; Fort Save DC:11]
[Info: This venom is a bright yellow color.]
[Extraction: Wild Empathy or Handle Animal check DC:15 to extract from wild creature.]
[Symptoms: Victim becomes irritable and short tempered.]
Each unit of poison fills a single potion bottle and is enough to coat a piercing weapon 10 times or a whole quiver of 10 arrows or bolts
', 150, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (721, N'Brass Rod', N'This represents 1/4 of an ingot.  It is used for rings or other small-scale work.', 12, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (722, N'Elm Lumber', N'This non-magical wood provides the same lack-of-benefits as birch, but looks nicer. Price is unknown.', 0, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (723, N'Orange', N'Standard fruit for eating. Not a special food.', 1, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (724, N'Spirit Orb (1st Circle) [Dirt Cruncher]', N'', 690, N'Raw Material', N'')
GO
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (725, N'Ash Granite', N'This kind of rock is mostly used by novice stonemasons to grant +2AC to armor or sheilds or Blind on weapons', 50, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (726, N'Darkflint', N'This kind of rock is mostly used by beginner stonemasons to grant +1AC to armor or sheilds or Dazzle on weapons', 10, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (727, N'Tranquil Marble', N'This kind of rock is mostly used by apprentice stonemasons to grant +3AC to armor or sheilds or Sleep on weapons
', 250, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (728, N'Carbonite', N'This kind of rock is mostly used by Journeyman stonemasons to grant +4AC to armor or sheilds or Daze on weapons
', 800, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (729, N'Storm Obsidian', N'This kind of rock is mostly used by Artisan stonemasons to grant +5AC to armor or sheilds or Daze then deafen and silence on weapons', 2000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (731, N'Flowerpot, Wooden', N'', 300, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (732, N'Heavy Crossbow', N'This simple ranged two handed weapon does 1d10 piercing damage with a 19-20 crit. It fires bolts with a range increment of 120 and weighs 8 lbs. It is made out of birch/bronze and is the normal, default type from the players handbook.  Loading a heavy crossbow is a full-round action that provokes attacks of opportunity.  Normally, operating it requires two hands. However, you can shoot, but not load, with one hand at a -4 penalty on attack rolls. You can shoot with each hand, but you take a penalty on attack rolls as if attacking with two one-handed weapons. This penalty is cumulative with the penalty for one-handed firing.', 50, N'Weapon - Other', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (733, N'Light Crossbow, small', N'This simple ranged two handed weapon does 1d6 piercing damage with a 19-20 crit. It fires bolts with a range increment of 80 and weighs 4 lbs. It is made out of birch/bronze and is the normal, default type from the players handbook.  Loading a light crossbow is a move action that provokes attacks of opportunity.  Normally, operating it requires two hands. However, you can shoot, but not load, with one hand at a -2 penalty on attack rolls. You can shoot with each hand, but you take a penalty on attack rolls as if attacking with two one-handed weapons. This penalty is cumulative with the penalty for one-handed firing.', 35, N'Weapon - Other', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (734, N'Short Bow, small', N'This martial ranged two handed weapon does 1d4 piercing damage with a x3 crit. It fires arrows with a range increment of 60 and weighs 2 lbs. It is made out of birch and is the normal, default type from the players handbook.  Loading a shortbow is a free action.  Normally, operating it requires two hands. You can use a shortbow while mounted.', 30, N'Weapon - Other', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (735, N'Arrows', N'arrows cost 1/20g each. Arrows can be fired from any type of longbow, or shortbow. An arrow that misses can be recovered 50% of the time, an arrow that hits always breaks.', 0, N'Ammunition', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (736, N'Gauntlet', N'This metal glove lets you deal lethal damage rather than nonlethal damage with unarmed strikes. A strike with a gauntlet is otherwise considered an unarmed attack. Medium and heavy armors (except breastplate) come with gauntlets.

This simple, light, one handed melee weapon does 1d3 Bludgeoning damage with a ×2 crit. and weighs 1 lb. it is made out of bronze and is the normal, default type from the players handbook.', 2, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (738, N'Punching Dagger', N'this simple, light, one handed melee weapon does 1d4 Piercing damage with a ×3 crit. and weighs 1 lb. it is made out of bronze and is the normal, default type from the players handbook.', 2, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (739, N'Spiked Gauntlet', N'this simple, light, one handed melee weapon does 1d4 Piercing damage with a ×2 crit. and weighs 1 lb. it is made out of bronze and is the normal, default type from the players handbook.', 5, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (740, N'Light Mace', N'this simple, light, one handed melee weapon does 1d6 Bludgeoning damage with a ×2 crit. and weighs 4 lb. it is made out of bronze and is the normal, default type from the players handbook.', 5, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (741, N'Sickle', N'this simple, light, one handed melee weapon does 1d6 Slashing damage with a ×2 crit. and weighs 2 lb. it is made out of bronze and is the normal, default type from the players handbook.', 6, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (745, N'Shortspear', N'this simple, one handed melee weapon does 1d6 Piercing damage with a ×2 crit. it can be thrown with a range increment of 20 ft. and weighs 3 lb. it is made out of birch/bronze and is the normal, default type from the players handbook.', 1, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (746, N'Longspear', N'this simple, two handed melee reach weapon does 1d8 Piercing damage with a ×3 crit. and weighs 9 lb. it is made out of birch/bronze and is the normal, default type from the players handbook.', 5, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (747, N'Quarterstaff', N'this simple double weapon can be used two handed or each end can act as it''s own melee weapon and does 1d6/1d6 Bludgeoning damage with a ×2 crit. and weighs 4 lb. it is made out of birch and is the normal, default type from the players handbook.', 0, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (748, N'Spear', N'this simple, two handed melee weapon does 1d8 Piercing damage with a ×3 crit. it can be thrown with a range increment of 20 ft. and weighs 6 lb. it is made out of birch/bronze and is the normal, default type from the players handbook.', 2, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (749, N'Dart', N'Darts cost 1/2 gold each this simple, one handed ranged weapon does 1d4 Piercing damage with a ×2 crit. it can be thrown with a range increment of 20 ft. and weighs ½ lb. it is made out of bronze and is the normal, default type from the players handbook.', 0, N'Ammunition', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (751, N'Sling', N'this simple, one handed ranged weapon does 1d4 Bludgeoning damage with a ×2 crit. it can fling bullets with a range increment of 50 ft. and weighs 0 lb. it is made out of rope and is the normal, default type from the players handbook.', 0, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (752, N'Throwing Axe', N'this martial, light, one handed melee weapon does 1d6 Slashing damage with a ×2 crit. it can be thrown with a range increment of 10 ft. and weighs 2 lb. it is made out of birch/bronze and is the normal, default type from the players handbook.', 8, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (753, N'Light Hammer', N'this martial, light, one handed melee weapon does 1d4 Bludgeoning damage with a ×2 crit. it can be thrown with a range increment of 20 ft. and weighs 2 lb. it is made out of bronze and is the normal, default type from the players handbook.', 1, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (754, N'Handaxe', N'this martial, light, one handed melee weapon does 1d6 Slashing damage with a ×3 crit. and weighs 3 lb. it is made out of birch/bronze and is the normal, default type from the players handbook.', 6, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (755, N'Kukri', N'this martial, light, one handed melee weapon does 1d4 Slashing damage with a 18-20/×2 crit. and weighs 2 lb. it is made out of bronze and is the normal, default type from the players handbook.', 8, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (756, N'Pick, light', N'this martial, light, one handed melee weapon does 1d4 Piercing damage with a ×4 crit. and weighs 3 lb. it is made out of birch/bronze and is the normal, default type from the players handbook.', 4, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (757, N'Sap', N'this martial, light, one handed melee weapon does 1d6 Bludgeoning damage with a ×2 crit. and weighs 2 lb. it is made out of unremarkable leather filled with rocks and is the normal, default type from the players handbook.', 1, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (758, N'Short Sword', N'This martial, light, one handed melee weapon does 1d6 Piercing damage with a 19-20/×2 crit. and weighs 2 lb. it is made out of bronze and is the normal, default type from the players handbook.', 10, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (759, N'Battleaxe', N'this martial, one handed melee weapon does 1d8 Slashing damage with a ×3 crit. and weighs 6 lb. it is made out of birch/bronze and is the normal, default type from the players handbook.', 10, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (760, N'Flail', N'this martial, one handed melee weapon does 1d8 Bludgeoning damage with a ×2 crit. and weighs 5 lb. it is made out of birch/bronze and is the normal, default type from the players handbook.', 8, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (761, N'Longsword', N'this martial, one handed melee weapon does 1d8 Slashing damage with a 19-20/×2 crit. and weighs 4 lb. it is made out of bronze and is the normal, default type from the players handbook.', 15, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (763, N'Rapier', N'this martial, one handed melee weapon does 1d6 Piercing damage with a 18-20/×2 crit. and weighs 2 lb. it is made out of bronze and is the normal, default type from the players handbook.', 20, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (764, N'Scimitar', N'this martial, one handed melee weapon does 1d6 Slashing damage with a 18-20/×2 crit. and weighs 4 lb. it is made out of bronze and is the normal, default type from the players handbook.', 15, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (765, N'Trident', N'this martial, one handed melee weapon does 1d8 Piercing damage with a ×2 crit. it can be thrown with a range increment of 10 ft. and weighs 4 lb. it is made out of bronze and is the normal, default type from the players handbook.', 15, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (766, N'Warhammer', N'this martial, one handed melee weapon does 1d8 Bludgeoning damage with a ×3 crit. and weighs 5 lb. it is made out of bronze and is the normal, default type from the players handbook.', 12, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (767, N'Falchion', N'this martial, two handed melee weapon does 2d4 Slashing damage with a 18-20/×2 crit. and weighs 8 lb. it is made out of bronze and is the normal, default type from the players handbook.', 75, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (768, N'Glaive', N'this martial, two handed melee reach weapon does 1d10 Slashing damage with a ×3 crit. and weighs 10 lb. it is made out of bronze and is the normal, default type from the players handbook.', 8, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (769, N'Greataxe', N'this martial, two handed melee weapon does 1d12 Slashing damage with a ×3 crit. and weighs 12 lb. it is made out of bronze and is the normal, default type from the players handbook.', 20, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (770, N'Greatclub', N'this martial, two handed melee weapon does 1d10 Bludgeoning damage with a ×2 crit. and weighs 8 lb. it is made out of bronze and is the normal, default type from the players handbook.', 5, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (771, N'Flail, heavy', N'this martial, two handed melee weapon does 1d10 Bludgeoning damage with a 19-20/×2 crit. and weighs 10 lb. it is made out of bronze and is the normal, default type from the players handbook.', 15, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (772, N'Greatsword', N'this martial, two handed melee weapon does 2d6 Slashing damage with a 19-20/×2 crit. and weighs 8 lb. it is made out of bronze and is the normal, default type from the players handbook.', 50, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (773, N'Guisarme', N'this martial, two handed melee reach weapon does 2d4 Slashing damage with a ×3 crit. and weighs 12 lb. it is made out of bronze and is the normal, default type from the players handbook.', 9, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (774, N'Halberd', N'this martial, two handed melee weapon does 1d10 Piercing or slashing damage with a ×3 crit. and weighs 12 lb. it is made out of bronze and is the normal, default type from the players handbook.', 10, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (775, N'Lance', N'this martial, two handed melee reach weapon does 1d8 Piercing damage with a ×3 crit. and weighs 10 lb. it is made out of bronze and is the normal, default type from the players handbook.', 10, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (776, N'Ranseur', N'this martial, two handed melee reach weapon does 2d4 Piercing damage with a ×3 crit. and weighs 12 lb. it is made out of bronze and is the normal, default type from the players handbook.', 10, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (777, N'Scythe', N'this martial, two handed melee weapon does 2d4 Piercing or slashing damage with a ×4 crit. and weighs 10 lb. it is made out of bronze and is the normal, default type from the players handbook.', 18, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (778, N'Kama', N'this exotic, light, one handed melee weapon does 1d6 Slashing damage with a ×2 crit. and weighs 2 lb. it is made out of bronze and is the normal, default type from the players handbook.', 2, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (779, N'Nunchaku', N'this exotic, light, one handed melee weapon does 1d6 Bludgeoning damage with a ×2 crit. and weighs 2 lb. it is made out of bronze and is the normal, default type from the players handbook.', 2, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (780, N'Sai', N'this exotic, light, one handed melee weapon does 1d4 Bludgeoning damage with a ×2 crit. it can be thrown with a range increment of 10 ft. and weighs 1 lb. it is made out of bronze and is the normal, default type from the players handbook.', 1, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (781, N'Siangham', N'this exotic, light, one handed melee weapon does 1d6 Piercing damage with a ×2 crit. and weighs 1 lb. it is made out of bronze and is the normal, default type from the players handbook.', 3, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (782, N'Bastard Sword', N'this exotic, one handed melee weapon does 1d10 Slashing damage with a 19-20/×2 crit. and weighs 6 lb. it is made out of bronze and is the normal, default type from the players handbook. It can be used as a martial weapon two handed', 35, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (783, N'Dwarven Waraxe', N'this exotic, one handed melee weapon does 1d10 Slashing damage with a ×3 crit. and weighs 8 lb. it is made out of bronze and is the normal, default type from the players handbook. It is a martial weapon for Dwarves', 30, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (784, N'Whip', N'this exotic, one handed melee 15 reach weapon does 1d3 Slashing damage with a ×2 crit. and weighs 2 lb. it is made out of unremarkable leather and is the normal, default type from the players handbook. It does non-lethal damage, and no damage to creatures with an armor or natural armour bonus of +3 or higher. It does not threaten any squares, but you can use it against adjacent foes. Using a whip provokes an AoO, Weapon Finesse applies to whips', 1, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (785, N'Axe, orc double', N'this exotic, double weapon can be used two handed or each end can act as it''s own melee weapon and does 1d8/1d8 Slashing damage with a ×3 crit. and weighs 15 lb. it is made out of bronze and is the normal, default type from the players handbook. It can be used as a martial weapon two handed', 60, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (786, N'Chain, spiked', N'this exotic, two handed melee reach weapon does 2d4 Piercing damage with a ×2 crit. and weighs 10 lb. it is made out of bronze and is the normal, default type from the players handbook. You can use it against adjacent foes. Weapon Finesse applies to it', 25, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (787, N'Flail, dire', N'this exotic, double weapon can be used two handed or each end can act as its own melee weapon and does 1d8/1d8 Bludgeoning damage with a ×2 crit. and weighs 10 lb. it is made out of bronze and is the normal, default type from the players handbook. It can be used as a martial weapon two handed', 90, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (788, N'gnome hooked Hammer', N'this exotic, double weapon can be used two handed or each end can act as it''s own melee weapon and does 1d8/1d6 Bludgeoning/Piercing damage with a ×3/×4 crit. and weighs 6 lb. it is made out of bronze and is the normal, default type from the players handbook. It can be used as a martial weapon two handed', 20, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (789, N'Sword Two-bladed', N'this exotic, double weapon can be used two handed or each end can act as it''s own melee weapon and does 1d8/1d8 Slashing damage with a 19-20/×2 crit. and weighs 10 lb. it is made out of bronze and is the normal, default type from the players handbook. It can be used as a martial weapon two handed', 100, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (790, N'Dwarven Ungrosh', N'this exotic, double weapon can be used two handed or each end can act as it''s own melee weapon and does 1d8/1d6 Slashing or piercing damage with a ×3 crit. and weighs 12 lb. it is made out of bronze and is the normal, default type from the players handbook. It can be used as a martial weapon two handed', 50, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (791, N'Bolas', N'this exotic, one handed ranged weapon does 1d4 Bludgeoning damage with a ×2 crit. it has a range increment of 10 ft. and weighs 2 lb. it is made out of rope and bronze and is the normal, default type from the players handbook. You can make a trip attempt with it with no risk of being tripped yourself', 5, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (792, N'Hand Crossbow', N'this exotic, one handed ranged weapon does 1d4 Piercing damage with a 19-20/×2 crit. it has a range increment of 30 ft. and weighs 2 lb. it is made out of birch and is the normal, default type from the players handbook. Loading a hand crossbow is a move action that provokes an AoO.  You can shoot, but not load a hand crossbow with one hand at no penalty. You can shoot a hand crossbow with each hand, but you take an attack penalty as if using 2 light weapons.', 100, N'Weapon - Other', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (793, N'Heavy Repeating Crossbow', N'This exotic ranged two handed weapon does 1d10 piercing damage with a 19-20 crit. It fires bolts with a range increment of 120 and weighs 12 lbs. It is made out of birch/bronze and is the normal, default type from the players handbook.  It holds 5 crossbow bolts. As long as it holds bolts, you can reload it by pulling the reloading lever (a free action requireing 2 hands.) Loading a new case of 5 bolts is a full-round action that provokes attacks of opportunity.  Normally, operating it requires two hands. However, you can shoot, but not load, with one hand at a -4 penalty on attack rolls. You can shoot with each hand, but you take a penalty on attack rolls as if attacking with two one-handed weapons. This penalty is cumulative with the penalty for one-handed firing.', 400, N'Weapon - Other', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (794, N'Light Repeating Crossbow', N'This exotic ranged two handed weapon does 1d8 piercing damage with a 19-20 crit. It fires bolts with a range increment of 80 and weighs 6 lbs. It is made out of birch/bronze and is the normal, default type from the players handbook.  It holds 5 crossbow bolts. As long as it holds bolts, you can reload it by pulling the reloading lever (a free action requireing 2 hands.) Loading a new case of 5 bolts is a full-round action that provokes attacks of opportunity.  Normally, operating it requires two hands. However, you can shoot, but not load, with one hand at a -2 penalty on attack rolls. You can shoot with each hand, but you take a penalty on attack rolls as if attacking with two one-handed weapons. This penalty is cumulative with the penalty for one-handed firing.', 250, N'Weapon - Other', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (795, N'Net', N'this exotic, two handed ranged weapon does no damage. It can be thrown with a range increment of 10 ft. and weighs 6 lb. it is made out of rope/bronze and is the normal, default type from the players handbook.', 20, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (796, N'Shuriken', N'A Shuriken costs 1/5g each this exotic, monk, one handed ranged weapon does 1d2 Piercing damage with a ×2 crit. it can be thrown with a range increment of 10 ft. and weighs ½ lb. it is made out of bronze and is the normal, default type from the players handbook.', 0, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (797, N'Gauntlet, small', N'this simple, light, one handed melee weapon does 1d2 Bludgeoning damage with a ×2 crit. and weighs 0.5 lb. it is made out of bronze and is the normal, default type from the players handbook.', 2, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (798, N'Dagger, small', N'this simple, light, one handed melee weapon does 1d3 Piercing or slashing damage with a 19-20/×2 crit. it can be thrown with a range increment of 10 ft. and weighs 0.5 lb. it is made out of bronze and is the normal, default type from the players handbook.', 2, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (799, N'Punching Dagger, small', N'this simple, light, one handed melee weapon does 1d3 Piercing damage with a ×3 crit. and weighs 0.5 lb. it is made out of bronze and is the normal, default type from the players handbook.', 2, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (800, N'Spiked Gauntlet, small', N'this simple, light, one handed melee weapon does 1d3 Piercing damage with a ×2 crit. and weighs 0.5 lb. it is made out of bronze and is the normal, default type from the players handbook.', 5, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (801, N'Light Mace, small', N'this simple, light, one handed melee weapon does 1d4 Bludgeoning damage with a ×2 crit. and weighs 2 lb. it is made out of bronze and is the normal, default type from the players handbook.', 5, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (802, N'Sickle, small', N'this simple, light, one handed melee weapon does 1d4 Slashing damage with a ×2 crit. and weighs 1 lb. it is made out of bronze and is the normal, default type from the players handbook.', 6, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (803, N'Club, small', N'this simple, one handed melee weapon does 1d4 Bludgeoning damage with a ×2 crit. it can be thrown with a range increment of 10 ft. and weighs 1.5 lb. it is made out of birch and is the normal, default type from the players handbook.', 0, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (804, N'Heavy Mace, small', N'this simple, one handed melee weapon does 1d6 Bludgeoning damage with a ×2 crit. and weighs 4 lb. it is made out of birch/bronze and is the normal, default type from the players handbook.', 12, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (805, N'Morningstar, small', N'this simple, one handed melee weapon does 1d6 Bludgeoning and piercing damage with a ×2 crit. and weighs 3 lb. it is made out of birch/bronze and is the normal, default type from the players handbook.', 8, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (806, N'Shortspear, small', N'this simple, one handed melee weapon does 1d4 Piercing damage with a ×2 crit. it can be thrown with a range increment of 20 ft. and weighs 1.5 lb. it is made out of birch/bronze and is the normal, default type from the players handbook.', 1, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (807, N'Longspear, small', N'this simple, two handed melee reach weapon does 1d6 Piercing damage with a ×3 crit. and weighs 4.5 lb. it is made out of birch/bronze and is the normal, default type from the players handbook.', 5, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (808, N'Quarterstaff, small', N'this simple double weapon can be used two handed or each end can act as it''s own melee weapon and does 1d4/1d4 Bludgeoning damage with a ×2 crit. and weighs 2 lb. it is made out of bronze and is the normal, default type from the players handbook.', 0, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (810, N'Dart, small', N'Darts cost 1/2 gold each this simple, one handed ranged weapon does 1d3 Piercing damage with a ×2 crit. it can be thrown with a range increment of 20 ft. and weighs 0.25 lb. it is made out of bronze and is the normal, default type from the players handbook.', 0, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (811, N'Javelin, small', N'this simple, one handed ranged weapon does 1d4 Piercing damage with a ×2 crit. it can be thrown with a range increment of 30 ft. and weighs 1 lb. it is made out of birch/bronze and is the normal, default type from the players handbook.', 1, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (812, N'Sling, small', N'this simple, one handed ranged weapon does 1d3 Bludgeoning damage with a ×2 crit. it can fling bullets with a range increment of 50 ft. and weighs 0 lb. it is made out of rope and is the normal, default type from the players handbook.', 0, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (813, N'Throwing Axe, small', N'this martial, light, one handed melee weapon does 1d4 Slashing damage with a ×2 crit. it can be thrown with a range increment of 10 ft. and weighs 1 lb. it is made out of birch/bronze and is the normal, default type from the players handbook.', 8, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (814, N'Light Hammer, small', N'this martial, light, one handed melee weapon does 1d3 Bludgeoning damage with a ×2 crit. it can be thrown with a range increment of 20 ft. and weighs 1 lb. it is made out of bronze and is the normal, default type from the players handbook.', 1, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (815, N'Handaxe, small', N'this martial, light, one handed melee weapon does 1d4 Slashing damage with a ×3 crit. and weighs 1.5 lb. it is made out of birch/bronze and is the normal, default type from the players handbook.', 6, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (816, N'Kukri, small', N'this martial, light, one handed melee weapon does 1d3 Slashing damage with a 18-20/×2 crit. and weighs 1 lb. it is made out of bronze and is the normal, default type from the players handbook.', 8, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (817, N'Pick, light, small', N'this martial, light, one handed melee weapon does 1d3 Piercing damage with a ×4 crit. and weighs 1.5 lb. it is made out of birch/bronze and is the normal, default type from the players handbook.', 4, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (818, N'Sap, small', N'this martial, light, one handed melee weapon does 1d4 Bludgeoning damage with a ×2 crit. and weighs 1 lb. it is made out of unremarkable leather filled with rocks and is the normal, default type from the players handbook.', 1, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (819, N'Shortsword, small', N'this martial, light, one handed melee weapon does 1d4 Piercing damage with a 19-20/×2 crit. and weighs 1 lb. it is made out of bronze and is the normal, default type from the players handbook.', 10, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (820, N'Battleaxe, small', N'this martial, one handed melee weapon does 1d6 Slashing damage with a ×3 crit. and weighs 3 lb. it is made out of birch/bronze and is the normal, default type from the players handbook.', 10, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (821, N'Flail, small', N'this martial, one handed melee weapon does 1d6 Bludgeoning damage with a ×2 crit. and weighs 2.5 lb. it is made out of birch/bronze and is the normal, default type from the players handbook.', 8, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (822, N'Longsword, small', N'this martial, one handed melee weapon does 1d6 Slashing damage with a 19-20/×2 crit. and weighs 2 lb. it is made out of bronze and is the normal, default type from the players handbook.', 15, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (823, N'Pick, heavy, small', N'this martial, one handed melee weapon does 1d4 Piercing damage with a ×4 crit. and weighs 3 lb. it is made out of birch/bronze and is the normal, default type from the players handbook.', 8, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (824, N'Rapier, small', N'this martial, one handed melee weapon does 1d4 Piercing damage with a 18-20/×2 crit. and weighs 1 lb. it is made out of bronze and is the normal, default type from the players handbook.', 20, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (825, N'Scimitar, small', N'this martial, one handed melee weapon does 1d4 Slashing damage with a 18-20/×2 crit. and weighs 2 lb. it is made out of bronze and is the normal, default type from the players handbook.', 15, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (826, N'Trident, small', N'this martial, one handed melee weapon does 1d6 Piercing damage with a ×2 crit. it can be thrown with a range increment of 10 ft. and weighs 2 lb. it is made out of bronze and is the normal, default type from the players handbook.', 15, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (827, N'Warhammer, small', N'this martial, one handed melee weapon does 1d6 Bludgeoning damage with a ×3 crit. and weighs 2.5 lb. it is made out of bronze and is the normal, default type from the players handbook.', 12, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (828, N'Falchion, small', N'this martial, two handed melee weapon does 1d6 Slashing damage with a 18-20/×2 crit. and weighs 4 lb. it is made out of bronze and is the normal, default type from the players handbook.', 75, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (829, N'Glaive, small', N'this martial, two handed melee reach weapon does 1d8 Slashing damage with a ×3 crit. and weighs 5 lb. it is made out of bronze and is the normal, default type from the players handbook.', 8, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (830, N'Greataxe, small', N'this martial, two handed melee weapon does 1d10 Slashing damage with a ×3 crit. and weighs 6 lb. it is made out of bronze and is the normal, default type from the players handbook.', 20, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (831, N'Greatclub, small', N'this martial, two handed melee weapon does 1d8 Bludgeoning damage with a ×2 crit. and weighs 4 lb. it is made out of bronze and is the normal, default type from the players handbook.', 5, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (832, N'Flail, heavy, small', N'this martial, two handed melee weapon does 1d8 Bludgeoning damage with a 19-20/×2 crit. and weighs 5 lb. it is made out of bronze and is the normal, default type from the players handbook.', 15, N'Weapon - 2H', N'')
GO
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (833, N'Greatsword, small', N'this martial, two handed melee weapon does 1d10 Slashing damage with a 19-20/×2 crit. and weighs 4 lb. it is made out of bronze and is the normal, default type from the players handbook.', 50, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (834, N'Guisarme, small', N'this martial, two handed melee reach weapon does 1d6 Slashing damage with a ×3 crit. and weighs 6 lb. it is made out of bronze and is the normal, default type from the players handbook.', 9, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (835, N'Halberd, small', N'this martial, two handed melee weapon does 1d8 Piercing or slashing damage with a ×3 crit. and weighs 6 lb. it is made out of bronze and is the normal, default type from the players handbook.', 10, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (836, N'Lance, small', N'this martial, two handed melee reach weapon does 1d6 Piercing damage with a ×3 crit. and weighs 5 lb. it is made out of bronze and is the normal, default type from the players handbook.', 10, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (837, N'Ranseur, small', N'this martial, two handed melee reach weapon does 1d6 Piercing damage with a ×3 crit. and weighs 6 lb. it is made out of bronze and is the normal, default type from the players handbook.', 10, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (838, N'Scythe, small', N'this martial, two handed melee weapon does 1d6 Piercing or slashing damage with a ×4 crit. and weighs 5 lb. it is made out of bronze and is the normal, default type from the players handbook.', 18, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (839, N'Kama, small', N'this exotic, light, one handed melee weapon does 1d4 Slashing damage with a ×2 crit. and weighs 1 lb. it is made out of bronze and is the normal, default type from the players handbook.', 2, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (840, N'Nunchaku, small', N'this exotic, light, one handed melee weapon does 1d4 Bludgeoning damage with a ×2 crit. and weighs 1 lb. it is made out of bronze and is the normal, default type from the players handbook.', 2, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (841, N'Sai, small', N'this exotic, light, one handed melee weapon does 1d3 Bludgeoning damage with a ×2 crit. it can be thrown with a range increment of 10 ft. and weighs 0.5 lb. it is made out of bronze and is the normal, default type from the players handbook.', 1, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (842, N'Siangham, small', N'this exotic, light, one handed melee weapon does 1d4 Piercing damage with a ×2 crit. and weighs 0.5 lb. it is made out of bronze and is the normal, default type from the players handbook.', 3, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (843, N'Bastard Sword, small', N'this exotic, one handed melee weapon does 1d8 Slashing damage with a 19-20/×2 crit. and weighs 3 lb. it is made out of bronze and is the normal, default type from the players handbook. It can be used as a martial weapon two handed', 35, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (844, N'Dwarven Waraxe, small', N'this exotic, one handed melee weapon does 1d8 Slashing damage with a ×3 crit. and weighs 4 lb. it is made out of bronze and is the normal, default type from the players handbook. It is a martial weapon for Dwarves', 30, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (845, N'Whip, small', N'this exotic, one handed melee 15 reach weapon does 1d2 Slashing damage with a ×2 crit. and weighs 1 lb. it is made out of unremarkable leather and is the normal, default type from the players handbook. It does non-lethal damage, and no damage to creatures with an armor or natural armour bonus of +3 or higher. It does not threaten any squares, but you can use it against adjacent foes. Using a whip provokes an AoO, Weapon Finesse applies to whips', 1, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (846, N'Axe, orc double, small', N'this exotic, double weapon can be used two handed or each end can act as it''s own melee weapon and does 1d6/1d6 Slashing damage with a ×3 crit. and weighs 7.5 lb. it is made out of bronze and is the normal, default type from the players handbook. It can be used as a martial weapon two handed', 60, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (847, N'Chain, spiked, small', N'this exotic, two handed melee reach weapon does 1d6 Piercing damage with a ×2 crit. and weighs 5 lb. it is made out of bronze and is the normal, default type from the players handbook. You can use it against adjacent foes. Weapon Finesse applies to it', 25, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (848, N'Flail, dire, small', N'this exotic, double weapon can be used two handed or each end can act as it''s own melee weapon and does 1d6/1d6 Bludgeoning damage with a ×2 crit. and weighs 5 lb. it is made out of bronze and is the normal, default type from the players handbook. It can be used as a martial weapon two handed', 90, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (849, N'gnome hooked Hammer, small', N'this exotic, double weapon can be used two handed or each end can act as it''s own melee weapon and does 1d6/1d4 Bludgeoning/Piercing damage with a ×3/×4 crit. and weighs 3 lb. it is made out of bronze and is the normal, default type from the players handbook. It can be used as a martial weapon two handed', 20, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (850, N'Sword Two-bladed, small', N'this exotic, double weapon can be used two handed or each end can act as it''s own melee weapon and does 1d6/1d6 Slashing damage with a 19-20/×2 crit. and weighs 5 lb. it is made out of bronze and is the normal, default type from the players handbook. It can be used as a martial weapon two handed', 100, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (851, N'Dwarven Ungrosh, small', N'this exotic, double weapon can be used two handed or each end can act as it''s own melee weapon and does 1d6/1d4 Slashing or piercing damage with a ×3 crit. and weighs 6 lb. it is made out of bronze and is the normal, default type from the players handbook. It can be used as a martial weapon two handed', 50, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (852, N'Bolas, small', N'this exotic, one handed ranged weapon does 1d3 Bludgeoning damage with a ×2 crit. it has a range increment of 10 ft. and weighs 1 lb. it is made out of rope and bronze and is the normal, default type from the players handbook. You can make a trip attempt with it with no risk of being tripped yourself', 5, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (853, N'Hand Crossbow, small', N'this exotic, one handed ranged weapon does 1d3 Piercing damage with a 19-20/×2 crit. it has a range increment of 30 ft. and weighs 1 lb. it is made out of birch and is the normal, default type from the players handbook. Loading a hand crossbow is a move action that provokes an AoO.  You can shoot, but not load a hand crossbow with one hand at no penalty. You can shoot a hand crossbow with each hand, but you take an attack penalty as if using 2 light weapons.', 100, N'Weapon - Other', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (854, N'Heavy Repeating Crossbow, small', N'This exotic ranged two handed weapon does 1d8 piercing damage with a 19-20 crit. It fires bolts with a range increment of 120 and weighs 12 lbs. It is made out of birch/bronze and is the normal, default type from the players handbook.  It holds 5 crossbow bolts. As long as it holds bolts, you can reload it by pulling the reloading lever (a free action requireing 2 hands.) Loading a new case of 5 bolts is a full-round action that provokes attacks of opportunity.  Normally, operating it requires two hands. However, you can shoot, but not load, with one hand at a -4 penalty on attack rolls. You can shoot with each hand, but you take a penalty on attack rolls as if attacking with two one-handed weapons. This penalty is cumulative with the penalty for one-handed firing.', 400, N'Weapon - Other', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (855, N'Light Repeating Crossbow, small', N'This exotic ranged two handed weapon does 1d6 piercing damage with a 19-20 crit. It fires bolts with a range increment of 80 and weighs 6 lbs. It is made out of birch/bronze and is the normal, default type from the players handbook.  It holds 5 crossbow bolts. As long as it holds bolts, you can reload it by pulling the reloading lever (a free action requireing 2 hands.) Loading a new case of 5 bolts is a full-round action that provokes attacks of opportunity.  Normally, operating it requires two hands. However, you can shoot, but not load, with one hand at a -2 penalty on attack rolls. You can shoot with each hand, but you take a penalty on attack rolls as if attacking with two one-handed weapons. This penalty is cumulative with the penalty for one-handed firing.', 250, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (856, N'Net, small', N'this exotic, two handed ranged weapon does no damage. It can be thrown with a range increment of 10 ft. and weighs 3 lb. it is made out of rope/bronze and is the normal, default type from the players handbook.', 20, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (857, N'Shuriken, small', N'A Shuriken costs 1/5g each this exotic, monk, one handed ranged weapon does 1 Piercing damage with a ×2 crit. it can be thrown with a range increment of 10 ft. and weighs 0.25 lb. it is made out of bronze and is the normal, default type from the players handbook.', 0, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1309, N'Warhammer, redsteel', N'this martial, one handed melee weapon does 1d8+2 Bludgeoning damage with a ×3 crit. and weighs 5 lb. it is made out of Redsteel and is made by Blacksmiths.', 920, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1354, N'shortsword, iron', N'this martial, light, one handed melee weapon does 1d6+1 Piercing damage with a 19-20/×2 crit. and weighs 2 lb. it is made out of Iron and is made by Blacksmiths.', 200, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1388, N'Diamond-tiped heavy pick', N'This martial one handed melee weapon does 1d6 piercing damage with a x4 crit. It weighs 6 lbs. and can be used by a miner.  It has a diamond tip for +1 to mining rolls.  It is made out of bronze. The diamond tip can be recovered for 1/10 of a diamond pebbles item', 0, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1389, N'Backpack', N'', 2, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1390, N'Backpack, small', N'', 2, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1391, N'Barrel (empty)', N'', 2, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1392, N'Basket (empty)', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1393, N'Bedroll', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1394, N'Bedroll, small', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1395, N'Bell', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1396, N'Blanket, winter', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1397, N'Blanket, winter small', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1398, N'Block and tackle', N'', 5, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1399, N'Bottle, wine, glass', N'', 2, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1400, N'Bucket (empty)', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1401, N'Caltrops, Bronze', N'Caltrops do 1d2 damage when a creature steps in the square occupied by caltrops. They make an attack roll against the creature (at +0 atk), ignoring the creature’s shield, armor, and deflection bonuses. Each bag has enough caltrops to cover a 5x5 ft. square.', 16, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1402, N'Candle', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1403, N'Canvas (sq. yd.)', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1404, N'Case, map or scroll', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1405, N'Chain (10 ft.)', N'', 30, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1406, N'Chalk, 1 piece', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1407, N'Chest (empty)', N'', 2, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1408, N'Crowbar', N'', 2, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1409, N'Firewood (per day)', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1410, N'Fishhook', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1411, N'Fishing net, 25 sq. ft.', N'', 4, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1412, N'Flask (empty)', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1413, N'Flint and steel', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1414, N'Grappling Hook', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1415, N'Hammer', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1416, N'Ink (1 oz. vial)', N'', 8, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1417, N'Inkpen', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1418, N'Jug, clay', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1419, N'Ladder, 10-foot', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1420, N'Lamp, common', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1421, N'Lantern, bullseye', N'', 12, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1422, N'Lantern, hooded', N'', 7, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1423, N'Lock (very simple)', N'', 20, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1424, N'Lock (average)', N'', 40, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1425, N'Lock (good)', N'', 80, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1426, N'Lock (amazing)', N'', 150, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1427, N'Manacles', N'A manacled creature can use the Escape Artist skill to slip free (DC 30) 
Breaking the manacles requires a Strength check (DC 26) 
Manacles have hardness 10 and 10 hit points.', 15, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1428, N'Manacles, masterwork', N'', 50, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1429, N'Mirror, small steel', N'', 10, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1430, N'Mug/Tankard, clay', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1431, N'Oil (1-pint flask)', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1432, N'Paper (sheet)', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1433, N'Parchment (sheet)', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1434, N'Pick, miner’s', N'', 3, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1435, N'Pitcher, clay', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1436, N'Piton', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1437, N'Pole, 10-foot', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1438, N'Pot, iron', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1439, N'Pouch, belt (empty)', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1440, N'Pouch, belt small (empty)', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1441, N'Ram, portable', N'', 10, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1442, N'Rations, trail (per day)', N'food', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1443, N'Rations, trail small creature (per day)', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1444, N'Rope, hempen (50 ft.)', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1445, N'Rope, silk (50 ft.)', N'', 10, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1446, N'Sack (empty)', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1447, N'Sack small (empty)', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1449, N'Sewing needle', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1450, N'Signal Whistle', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1451, N'Signet ring', N'', 5, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1452, N'Sledge', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1453, N'Soap (per lb.)', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1454, N'Spade or shovel', N'', 2, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1456, N'Tent', N'', 10, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1457, N'Tent, small', N'', 10, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1459, N'Vial, ink or potion', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1460, N'Waterskin', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1461, N'Waterskin, small', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1462, N'Whetstone', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1463, N'Acid (flask)', N'', 10, N'Consumable', N'')
GO
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1464, N'Alchemist’s fire (flask)', N'', 20, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1465, N'Antitoxin (vial)', N'', 50, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1466, N'Everburning torch', N'', 110, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1468, N'Smokestick', N'', 20, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1469, N'Sunrod', N'', 2, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1470, N'Tanglefoot bag', N'', 50, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1472, N'Tindertwig', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1473, N'Alchemist’s lab', N'', 500, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1474, N'Artisan’s tools', N'', 5, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1475, N'Artisan’s tools, masterwork', N'', 55, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1476, N'Climber’s kit', N'', 80, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1477, N'Climber’s kit, small', N'', 80, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1478, N'Disguise kit', N'', 50, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1479, N'Disguise kit, small', N'', 50, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1480, N'Healer’s kit', N'', 50, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1481, N'Holly and mistletoe', N'', 0, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1482, N'Holy symbol, wooden', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1483, N'Holy symbol, silver', N'', 25, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1484, N'Hourglass', N'', 25, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1485, N'Magnifying glass', N'', 100, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1486, N'Scale, merchant’s', N'', 2, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1487, N'Spell component pouch', N'', 5, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1488, N'Spellbook, wizard’s (blank)', N'', 15, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1489, N'Thieves’ tools', N'', 30, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1490, N'Thieves’ tools, masterwork', N'', 100, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1491, N'Tool, masterwork', N'', 50, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1492, N'Water clock', N'', 1000, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1493, N'Artisan’s outfit', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1494, N'Cleric’s vestments', N'', 5, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1495, N'Cold weather outfit', N'', 8, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1496, N'Courtier’s outfit', N'', 30, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1497, N'Entertainer’s outfit', N'', 3, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1498, N'Explorer’s outfit', N'', 10, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1499, N'Monk’s outfit', N'', 5, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1500, N'Noble’s outfit', N'', 75, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1501, N'Peasant’s outfit', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1502, N'Royal outfit', N'', 200, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1503, N'Scholar’s outfit', N'', 5, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1504, N'Traveler’s outfit', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1505, N'Artisan’s outfit, small', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1506, N'Cleric’s vestments, small', N'', 5, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1507, N'Cold weather outfit, small', N'', 8, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1508, N'Courtier’s outfit, small', N'', 30, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1509, N'Entertainer’s outfit, small', N'', 3, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1510, N'Explorer’s outfit, small', N'', 10, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1511, N'Monk’s outfit, small', N'', 5, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1512, N'Noble’s outfit, small', N'', 75, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1513, N'Peasant’s outfit, small', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1514, N'Royal outfit, small', N'', 200, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1515, N'Scholar’s outfit, small', N'', 5, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1516, N'Traveler’s outfit, small', N'', 1, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1517, N'Shield, Buckler, small', N'The standard metal sheild is made out of bronze or copper. It is the normal, default type from the players handbook and grants AC 1, a - ACP, 5% arcane spell failure, and weighs 5 lbs.  It has a hardness of 10 and 5 HP.

You can use a bow or crossbow without penalty while carrying it. You can also use your shield arm to wield a weapon, but you take a -1 penalty on attack rolls while doing so. If you use a weapon in your off hand, you don’t get the buckler’s AC bonus for the rest of the round.

You can’t bash someone with a buckler.', 15, N'Shield - Buckler', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1518, N'Padded Armor', N'This standard set of light armor is made out of layers of cloth. It is the normal, default type from the players handbook and grants AC 1, Has a max dex bonus of 8, a 0 ACP, 5% arcane spell failure, and weighs 10 lb. It has a hardness of 0 and 5 HP.', 5, N'Armor - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1519, N'Leather Armor', N'This standard set of light armor is made out of unremarkable leather. It is the normal, default type from the players handbook and grants AC 2, Has a max dex bonus of 6, a 0 ACP, 10% arcane spell failure, and weighs 15 lb. It has a hardness of 2 and 10 HP.', 10, N'Armor - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1520, N'Studded Leather Armor', N'This standard set of light armor is made out of unremarkable leather and bronze. It is the normal, default type from the players handbook and grants AC 3, Has a max dex bonus of 5, a -1 ACP, 15% arcane spell failure, and weighs 20 lb. It has a hardness of 2 and 15 HP.', 25, N'Armor - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1522, N'Hide Armor', N'The standard set of medium armor is made out of unremarkable hides. It is the normal, default type from the players handbook and grants AC 3, Has a max dex bonus of 4, a -3 ACP, 20% arcane spell failure, and weighs 25 lb. It has a hardness of 2 and 15 HP.', 15, N'Armor - Medium', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1523, N'Scale mail', N'This standard set of medium armor is made out of Bronze. It is the normal, default type from the players handbook and grants AC 4, Has a max dex bonus of 3, a -4 ACP, 25% arcane spell failure, and weighs 30 lb. It has a hardness of 10 and 20 HP.', 50, N'Armor - Medium', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1524, N'Chainmail', N'This standard set of medium armor is made out of Bronze. It is the normal, default type from the players handbook and grants AC 5, Has a max dex bonus of 2, a -5 ACP, 30% arcane spell failure, and weighs 40 lb. It has a hardness of 10 and 25 HP.', 150, N'Armor - Medium', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1525, N'Breastplate', N'This standard set of medium armor is made out of Bronze. It is the normal, default type from the players handbook and grants AC 5, Has a max dex bonus of 3, a -4 ACP, 25% arcane spell failure, and weighs 30 lb. It has a hardness of 10 and 25 HP.', 200, N'Armor - Medium', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1526, N'Splint mail', N'The standard set of heavy armor is made out of Bronze. It is the normal, default type from the players handbook and grants AC 6, Has a max dex bonus of 0, a -7 ACP, 40% arcane spell failure, and weighs 45 lb. It has a hardness of 10 and 30 HP.', 200, N'Armor - Heavy', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1527, N'Banded mail', N'The standard set of heavy armor is made out of Bronze. It is the normal, default type from the players handbook and grants AC 6, Has a max dex bonus of 1, a -6 ACP, 35% arcane spell failure, and weighs 35 lb. It has a hardness of 10 and 30 HP.', 250, N'Armor - Heavy', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1528, N'Half-plate', N'The standard set of heavy armor is made out of Bronze. It is the normal, default type from the players handbook and grants AC 7, Has a max dex bonus of 0, a -7 ACP, 40% arcane spell failure, and weighs 50 lb. It has a hardness of 10 and 35 HP.', 600, N'Armor - Heavy', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1529, N'Full plate', N'The standard set of heavy armor is made out of Bronze. It is the normal, default type from the players handbook and grants AC 8, Has a max dex bonus of 1, a -6 ACP, 35% arcane spell failure, and weighs 50 lb. It has a hardness of 10 and 40 HP.', 1500, N'Armor - Heavy', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1530, N'Shield, light wooden', N'The standard wooden light sheild is made out of Birch Lumber. It is the normal, default type from the players handbook and grants AC 1, has a 5 arcane spell failure, and weighs 5 lb. It has a hardness of 5 and 7 HP.', 3, N'Shield - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1531, N'Shield, light metal', N'The standard metal light sheild is made out of Bronze or copper. It is the normal, default steel type from the players handbook and grants AC 1, has a 5 arcane spell failure, and weighs 6 lb. It has a hardness of 10 and 10 HP.', 9, N'Shield - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1532, N'Shield, heavy metal', N'The standard metal light sheild is made out of bronze or copper. It is the normal, default steel type from the players handbook and grants AC 2, has a 15 arcane spell failure, and weighs 15 lb. It has a hardness of 10 and 20 HP.', 20, N'Shield - Heavy', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1533, N'Shield, Tower', N'This massive shield is nearly as tall as you are. It is the normal, default type from the players handbook and grants AC 4, has an ACP of 2, a 50 arcane spell failure, and weighs 45 lb. It has a hardness of 5 and 20 HP. 

Attacking while using a tower shield has a -2 penalty even when proficient with it. You can use it as total cover, though you must give up your attacks to do so. The shield does not, however, provide cover against targeted spells; a spellcaster can cast a spell on you by targeting the shield you are holding. You cannot bash with a tower shield, nor can you use your shield hand for anything else. ', 30, N'Shield - Tower', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1534, N'Padded Armor, small', N'This standard set of light armor is made out of layers of cloth. It is the normal, default type from the players handbook and grants AC 1, Has a max dex bonus of 8, a 0 ACP, 5% arcane spell failure, and weighs 5 lb. It has a hardness of 0 and 5 HP.', 5, N'Armor - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1535, N'Leather Armor, small', N'This standard set of light armor is made out of unremarkable leather. It is the normal, default type from the players handbook and grants AC 2, Has a max dex bonus of 6, a 0 ACP, 10% arcane spell failure, and weighs 7.5 lb. It has a hardness of 2 and 10 HP.', 10, N'Armor - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1536, N'Studded leather armor, small', N'This standard set of light armor is made out of unremarkable leather and bronze. It is the normal, default type from the players handbook and grants AC 3, Has a max dex bonus of 5, a -1 ACP, 15% arcane spell failure, and weighs 10 lb. It has a hardness of 2 and 15 HP.', 25, N'Armor - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1537, N'Chain shirt, small', N'This standard set of light armor is made out of Bronze. It is the normal, default type from the players handbook and grants AC 4, Has a max dex bonus of 4, a -2 ACP, 20% arcane spell failure, and weighs 12.5 lb. It has a hardness of 10 and 20 HP.', 100, N'Armor - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1538, N'Hide Armor, small', N'The standard set of medium armor is made out of unremarkable hides. It is the normal, default type from the players handbook and grants AC 3, Has a max dex bonus of 4, a -3 ACP, 20% arcane spell failure, and weighs 12.5 lb. It has a hardness of 2 and 15 HP.', 15, N'Armor - Medium', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1540, N'Chainmail, small', N'This standard set of medium armor is made out of Bronze. It is the normal, default type from the players handbook and grants AC 5, Has a max dex bonus of 2, a -5 ACP, 30% arcane spell failure, and weighs 20 lb. It has a hardness of 10 and 25 HP.', 150, N'Armor - Medium', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1541, N'Breastplate, small', N'This standard set of medium armor is made out of Bronze. It is the normal, default type from the players handbook and grants AC 5, Has a max dex bonus of 3, a -4 ACP, 25% arcane spell failure, and weighs 15 lb. It has a hardness of 10 and 25 HP.', 200, N'Armor - Medium', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1542, N'Splint mail, small', N'The standard set of heavy armor is made out of Bronze. It is the normal, default type from the players handbook and grants AC 6, Has a max dex bonus of 0, a -7 ACP, 40% arcane spell failure, and weighs 22.5 lb. It has a hardness of 10 and 30 HP.', 200, N'Armor - Heavy', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1544, N'Half-plate, small', N'The standard set of heavy armor is made out of Bronze. It is the normal, default type from the players handbook and grants AC 7, Has a max dex bonus of 0, a -7 ACP, 40% arcane spell failure, and weighs 25 lb. It has a hardness of 10 and 35 HP.', 600, N'Armor - Heavy', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1545, N'Full plate, small', N'The standard set of heavy armor is made out of Bronze. It is the normal, default type from the players handbook and grants AC 8, Has a max dex bonus of 1, a -6 ACP, 35% arcane spell failure, and weighs 25 lb. It has a hardness of 10 and 40 HP.', 1500, N'Armor - Heavy', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1546, N'Shield, light wooden, small', N'The standard wooden light sheild is made out of Birch Lumber. It is the normal, default type from the players handbook and grants AC 1, has a 5 arcane spell failure, and weighs 2.5 lb. It has a hardness of 5 and 7 HP.', 3, N'Shield - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1547, N'Shield, light, metal, small', N'The standard metal light sheild is made out of bronze or copper. It is the normal, default steel type from the players handbook and grants AC 1, has a 5 arcane spell failure, and weighs 3 lb. It has a hardness of 10 and 10 HP.', 9, N'Shield - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1548, N'Shield, heavy wooden, small', N'The standard wooden heavy sheild is made out of Birch Lumber. It is the normal, default type from the players handbook and grants AC 2, has a 15 arcane spell failure, and weighs 5 lb. It has a hardness of 5 and 15 HP.', 7, N'Shield - Heavy', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1549, N'Shield, heavy metal, small', N'The standard metal light sheild is made out of bronze or copper. It is the normal, default steel type from the players handbook and grants AC 2, has a 15 arcane spell failure, and weighs 7.5 lb. It has a hardness of 10 and 20 HP.', 20, N'Shield - Heavy', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1550, N'Shield, tower, small', N'This massive wooden shield is nearly as tall as you are. It is made out of Birch Lumber. It is the normal, default type from the players handbook and grants AC 43, has an ACP of 2, a 50 arcane spell failure, and weighs 22.5 lb. It has a hardness of 5 and 20 HP. 

Attacking while using a tower shield has a -2 penalty even when proficient with it. You can use it as total cover, though you must give up your attacks to do so. The shield does not, however, provide cover against targeted spells; a spellcaster can cast a spell on you by targeting the shield you are holding. You cannot bash with a tower shield, nor can you use your shield hand for anything else. ', 30, N'Shield - Tower', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1558, N'Full plate, small iron', N'The standard set of heavy armor is made out of iron. It grants 10 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.  It grants AC 8, Has a max dex bonus of 1, a -6 ACP, 35% arcane spell failure, and weighs 25 lb. It has a hardness of 10 and 40 HP.', 725, N'Armor - Heavy', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1586, N'Chain shirt, Redsteel', N'This set of light armor is made out of Redsteel. It grants 8 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.  It grants AC 4, Has a max dex bonus of 4, a -2 ACP, 20% arcane spell failure, and weighs 25 lb. It has a hardness of 10 and 30 HP.', 800, N'Armor - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1610, N'Chain shirt, Tritanium', N'This set of light armor is made out of Tritanium. It grants 12 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.  It grants AC 4, Has a max dex bonus of 4, a -2 ACP, 20% arcane spell failure, and weighs 25 lb. It has a hardness of 10 and 40 HP.', 2150, N'Armor - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1634, N'Chain shirt, Nightsteel', N'This set of light armor is made out of Nightsteel. It grants 16 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.  It grants AC 4, Has a max dex bonus of 4, a -2 ACP, 20% arcane spell failure, and weighs 25 lb. It has a hardness of 10 and 50 HP.', 3550, N'Armor - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1670, N'Saboryx Leather', N'', 55, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1671, N'Spiked Buckler', N'', 0, N'Shield - Buckler', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1672, N'Animal Fang Necklace', N'+1 damage to melee attacks', 250, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1673, N'Kokonos (fish)', N'', 0, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1674, N'kytar fish repeat item', N'', 0, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1676, N'Trifin (fish)', N'', 0, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1678, N'halanzi fish', N'', 0, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1679, N'Lamellar Lizard Armor', N'dr1/slashing+magic -3 diplomacy, +2 intimidate', 350, N'Armor - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1680, N'Spirit Orb (1st Circle) [Gumbobo]', N'', 690, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1681, N'Spirit Orb (2nd Circle) [Kingdom Dove]', N'', 1290, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1682, N'Composite +1 Longbow', N'+1 damage from STR mod.', 200, N'Weapon - Other', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1683, N'Long Bow, Masterwork ', N'', 375, N'Weapon - Other', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1684, N'+1 Attack (magic)', N'', 690, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1685, N'+2 Attack (magic)', N'', 2580, N'', N'')
GO
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1686, N'+3 Attack (magic)', N'', 7170, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1687, N'+4 Attack (magic)', N'', 15560, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1688, N'+5 Attack (magic)', N'', 27450, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1689, N'Shield, buckler, small, spine', N'', 0, N'Shield - Buckler', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1690, N'Empty Potion Bottles', N'', 0, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1691, N'Shield, heavy, small', N'', 0, N'Shield - Heavy', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1693, N'Spirit Orb (2nd Circle) [Ball Sheep]', N'', 1290, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1694, N'Spirit Orb (0 Circle) [Wandering Wolf]', N'', 0, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1695, N'Quartz', N'for building buildings in stonemason', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1696, N'Jampucha', N'A type of yellow stony fish found in caves. Cannot be sold.', 0, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1697, N'Spirit Orb (4th circle) [Rockrilla] ', N'', 3690, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1698, N'Shard Venom', N'[Stats: Petrify for 3 rounds; Fort Save DC:10] value: 250
[Info: This venom is a misty light grey color.]
[Extraction: Wild Empathy or Handle Animal check DC:15 to extract from wild creature.]
[Symptoms: Victim becomes stone faced.]
Each unit of poison fills a single potion bottle and is enough to coat a piercing weapon 10 times or a whole quiver of 10 arrows or bolts
', 250, N'Ammunition - Mod', N'Poison')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1699, N'Chocotang', N'A type of round, brown fish found in caves. Its scales are used to make chocolate among some kinfolk. Cannot be sold.', 0, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1700, N'Vorstela', N'This starfish-type creature is often found in caves. Its central eye will mind control fishers to put it back.', 0, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1701, N'Flint Stone', N'', 1, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1702, N'iron', N'', 0, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1703, N'Shortsword, brass', N'+1 to attack.', 300, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1704, N'shortsword, iron, pantheron grip', N'', 0, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1705, N'Spirit Orb (3rd Circle) [Giant Mantis]', N'', 2390, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1706, N'Spirit Orb (2nd Circle) [Slug Ram]', N'', 1290, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1707, N'Shortsword, crecent', N'This type of hooked sword gives you a +2 to attack vs. using shields.', 10, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1708, N'Studded Leather Armor, masterwork', N'', 0, N'Armor - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1709, N'Gloves, studded leather', N'', 1, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1710, N'Studded Doggy Leather Armor', N'', 0, N'Armor - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1711, N'War Wagon', N'Takes 1 Camelops to pull at 2 squares/hour
Takes 2 horses to move at 1 square/hour
Takes 4 horses to move at 2 squares/hour
Big and steady enough to read, spar, or craft any beginner or novice recipies in while moving.', 350, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1712, N'Spirit Orb (1st Circle) [kranokraken]', N'', 690, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1713, N'Great Bow', N'', 0, N'Weapon - Other', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1714, N'Ash Granite Sling Stone', N'blinds dc 14', 11, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1715, N'Spine Arrowhead', N'', 15, N'Ammunition', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1717, N'Cactus Juice', N'A sweet cool drink found in cactus plants. ', 5, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1718, N'Camelops', N'massive beast of burden, can solo-pull a war wagon at 2 squares/hour, but only last 1 day outside the desert before they dont feel well.', 350, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1719, N'Summoning Tureen', N'', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1720, N'Bear Trap, Iron', N'Can be setup on a wilderness path to do 2d6 damage and immobilize a person.

Search, Disable Device, Open Lock, Reflex Save, Escape Artist, and Str DCs for this trap are all 22.', 125, N'Trap', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1721, N'hooksword', N'', 0, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1722, N'Beholder Mask', N'Grants the wearer True Seeing for 1 round. Immediate action to activate, (hit the center eye) 120 ft. range, 1/day.', 2500, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1723, N'Shard Spider Dagger', N'', 3500, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1724, N'Terrorbeak Bolts', N'+3 attack not damage', 5, N'Ammunition', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1726, N'Aegyal Feathers', N'A tuft of feathers from the Aegyal bird. Can be used to craft +2 atk fletchlings.', 15, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1727, N'arrows +3', N'', 0, N'Ammunition', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1728, N'Longbow, masterwork composite +1', N'', 200, N'Weapon - Other', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1729, N'Sealing Wax', N'', 0, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1731, N'Burning Compound', N'Used when burning or quickly turning a liquid into gas is required', 100, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1732, N'Liquid Courage', N' Functions like the spell Remove Fear but is really just a placebo', 22, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1733, N'Back Pain Serum', N' Cures anyone who is Paralyzed. Functions like the spell Remove Paralysis', 115, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1734, N'Energy Drink', N' Cures anyone who is Fatigued', 130, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1735, N'Disease-B-Gone', N' Functions like spell Remove Disease. May not work on all diseases', 550, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1736, N'Ear Oil', N' Restores hearing when Deafened. Functions like the spell Remove Deafness', 230, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1737, N'Eye Ointment', N' Restores sight when Blinded. Functions like the spell Remove Blindness', 240, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1738, N'Queen Bee Balm', N' Restores subject to full HP after resting for 8 hours', 385, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1739, N'Sickness Syrup', N' Cures anyone who is Sickened', 215, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1740, N'Stomach Flu Remedy', N' Cures anyone who is Nauseated', 385, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1741, N'Bardic Beer', N' Cures anyone who is Silenced, magical or otherwise', 540, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1742, N'Clear Thought Cola', N' Cures anyone who is Confused', 575, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1743, N'Curse Capsule', N' This pill removes various types of curses. Functions like the spell Remove Curse', 705, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1744, N'Petrisporin', N' Cream cures anyone who is Petrified and +2 Save vs. Petrification for 8 hrs', 1100, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1745, N'Blinding Potion', N' Blinded for 1 hour; Fort Save DC:11 (1 save/round; max 3 saves)', 150, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1746, N'Deafening Potion', N' Deafened for 1 hour; Fort Save DC:11 (1 save/round; max 3 saves)', 150, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1747, N'Shakening Potion', N' Shaken for 1 hour; Fort Save DC:11 (1 save/round; max 3 saves)', 150, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1748, N'Frightening Potion', N'Stats: Frightened for 1 hour; Fort Save DC:13 (1 save/round; max 3 saves)', 300, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1749, N'Intensifying Potion (Harsh)', N' Mix into other potions; Increases Harmful Status Ailment Potion Save DCs by 2', 300, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1750, N'Sickening Potion', N' Sickened for 1 hour; Fort Save DC:13 (1 save/round; max 3 saves)', 200, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1751, N'Silencing Potion', N' Muffles your voice for 1 hour; Fort Save DC:13 (1 save/round; max 3 saves)', 275, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1752, N'Intensifying Potion (Fierce)', N' Mix into other potions; Increases Harmful Status Ailment Potion Save DCs by 2', 300, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1753, N'Nauseating Potion', N' Sickened for 1 hour; Fort Save DC:15 (1 save/round; max 3 saves)', 350, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1754, N'Panicking Potion', N' Panicked for 1 hour; Fort Save DC:15 (1 save/round; max 3 saves)', 450, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1755, N'Paralyzing Potion', N' Paralyzed for 1 hour; Fort Save DC:15 (1 save/round; max 3 saves)', 250, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1756, N'Berserker Blend', N' Rage for 3 rounds; Fort Save DC:17 (1 save/round; max 3 saves)', 450, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1757, N'Potion of Confusion', N' Confused for 1 hour; Fort Save DC:17 (1 save/round; max 3 saves)', 550, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1758, N'Intensifying Potion (Extreme)', N' Mix into other potions; Increases Harmful Status Ailment Potion Save DCs by 3', 600, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1759, N'Poison Leaf Powder', N'Contact Poison:
 2d12 HP initial then -1d6 CON a minute later; Fort Save DC:15

This powder is a lime green color and very noticable.

Symptoms: Turns the skin around the contact area green and victim produces excessive runny nose.', 350, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1760, N'Kingdom Crab Legs', N'DR2 for 4 hours. This recipe makes 2 servings.', 247, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1761, N'Terrorbeak Feather', N'', 50, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1762, N'Amazing Lock', N'', 150, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1770, N'Alluring Tail Feather', N'The tail feather of a beautiful bird. ', 12, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1773, N'Critter Grip', N'', 0, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1774, N'Animal Grip', N'', 0, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1775, N'Beast Grip', N'', 0, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1776, N'Darkflint Buckler', N'Gives the wielder a +1 to their AC.', 180, N'Shield - Buckler', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1778, N'Monster Grip', N'', 0, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1779, N'Medieval Muffin', N'A typical muffin used in a variety of recipes or consumed plain. Its value is derived from the magical properties of both the Buckwheat and Bally Milk found within it.', 17, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1780, N'Midnight Oil', N'A type of oil made by combining Black Bugs Blood with magical tar.', 15, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1781, N'Horror Grip', N'', 0, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1782, N'Masterwork Darkflint Sling Stone', N'', 0, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1783, N'Beet Stew', N'A stew that lets you be a bit more dodgy. Your Dodge bonus (if you have chosen the feat) increases by +1 for 30 minutes.', 52, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1784, N'Beggars Salad', N'A salad made by hobos that make you harder to touch. Increases your TouchAC by +1 for 30 minutes.', 19, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1785, N'Bird Broth', N'A salty soup made with fowl meat and oregano. Consuming this gives you +2 to your ranged weapon damage for 5 rounds.', 33, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1786, N'Brass Insect Hairpin', N'Stats: +1 diplomacy, +1 gather information', 110, N'Headgear', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1787, N'Butter Herb Cod', N'A buttery fish filet fried with Gorgon Butter and Oregano. Gives you +1 to your melee attack roll for 1 minute.', 66, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1788, N'Charging Mutton', N'Delicious sheep meat with a big hint of mushroom flavor. Negates your AC penalty when charging.', 130, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1789, N'German Shepherds Pie', N'Though it uses dog meat, this pie does not come with the risk of you vomitting up the contents due to poor flavor. When consumed, gives you +1 melee weapon damage for 1 hour.', 23, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1790, N'Kobald Truffle', N'This little confection is shaped like a Kobald. They say the young shouldnt consume it as the long term effects are not known. Your spell save DCs are increased by +1 for and hour after eating these. One batch makes 4 candies.', 20, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1791, N'Lullaby Stew (A)', N'A stew you take before sleeping. Allows you to recover an extra +1d10HP while resting so long as you get 8 hours of uninterrupted sleep.', 58, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1792, N'Lullaby Stew (B)', N'A stew you take before sleeping. Allows you to recover an extra +1d10HP while resting so long as you get 8 hours of uninterrupted sleep.', 58, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1793, N'Lullaby Stew (Fire)', N'A stew you take before sleeping. Allows you to recover an extra +1d10HP while resting so long as you get 8 hours of uninterrupted sleep. When you awaken, you also gain Fire Resistance 5 for 24 hours.', 70, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1794, N'Pebble Soup', N'A soup that helps the one who consumes it with their concentration. It tastes garlicy and fresh. Gives you +5 to Concentration checks for 1 hour.', 26, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1795, N'Pirates Punch', N'Pirates must be quick on their feet. This mixture of alcohol and bewitched fruits has an exotic taste to it. Gives you +2 to your movement speed for 1 minute.', 44, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1796, N'Roast Rabbit', N'A charred dish of wild hare. The spicy, yet slightly burned flavor makes you remember campfires with family. Gives you a +10 bonus on jump checks for 1 hour.', 81, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1797, N'Scramble Supreme', N'This basic dish enhances the power of Cure spells. +2HP is added to all Cure Wounds spells cast by you for 1 hour.', 45, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1798, N'Soft Boiled Egg (A)', N'A very easy to make egg recipe that gives you +5 TempHP for 1 hour after you eat it. It can be made with an Avian, Lizard, or Big Bug Egg.', 50, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1799, N'Soft Boiled Egg (B)', N'A very easy to make egg recipe that gives you +5 TempHP for 1 hour after you eat it. It can be made with an Avian, Lizard, or Big Bug Egg.', 50, N'', N'')
GO
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1800, N'Soft Boiled Egg (C)', N'A very easy to make egg recipe that gives you +5 TempHP for 1 hour after you eat it. It can be made with an Avian, Lizard, or Big Bug Egg.', 50, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1801, N'Uncle Cracker', N'This bland cracker allows those who consume it to gain a +1 to their Hide and Move Silently checks for 1 hour.', 10, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1802, N'Rah-Rah Rice', N'A type of wild rice found in swamps and marshes. It is possible for farmers to grow them, though the creatures that inevitably show up and evolve in the bog might be too much for them to handle.', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1803, N'Attack Lollipop', N'A candy on a stick made from junk sugar products. On your next attack roll, roll twice and take the higher number.', 155, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1804, N'Augery Apple Pie', N'A pie that, when eaten, attunes you to elemental energy. Adds 1d6 elemental to next elemental spell cast. If unused, lasts 4 hours.', 28, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1805, N'Corsica Cola', N'A drink considered an old favorite from a town in the Old Kingdom. The one who drinks it gains +10 ft. of movement, +1 to their attack rolls, and a +1 dodge bonus to AC that lasts 3 rounds.', 110, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1806, N'Enfeebling Empanada', N'This exotic dish, when eaten, makes your Ray of Enfeeblement spells more effective. Your Ray of Enfeeblement spells do -1d8+1 to STR per two caster levels (max. 1d8+5) instead of -1d6+1. Lasts 4 hours.', 145, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1807, N'Exquisite Escargot', N'These snails not only have an excellent taste, they enhance your fortitude. Gives you +2 to your next Fortitude Save. Lasts for 2 hours. ', 155, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1808, N'Hellfire Wings', N'These wings of a fowl mixed with hot sauces and herbs make you feel more dexterous. You gain a +2 to your DEX ability score for 30 minutes.', 112, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1809, N'J''orvo''zal', N'An alchemically brewed wine of Elven origins that can be created quickly. Allows the drinker to retrain a feat.', 310, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1810, N'Maniac Mushrooms', N'This mushroom meal seems to make you more apt at figuring out how magic contraptions work. Gives you a +4 bonus to your Use Magic Device skill checks for 4 hours.', 139, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1811, N'Princess Mushroom Kabob', N'The mushrooms in this barbeque snack are not made right unless the honey is just a little bit burnt. When eaten, this food gives you +2 to your next Will Save. Lasts for 2 hours.', 123, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1812, N'Spicy Snake Satay', N'When you eat this dish, you take on the traits of a snake: sneaky, shadowy, and dexterous. +1 DEX, +2 Disguise, and +2 Escape Artist for 2 hours.', 95, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1813, N'Swamp Water', N'This tomato drink has a hint of mint in it. You gain +2 on Reflex Saves, and the Mobility feat for the rest of the day.', 149, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1814, N'Swiftcow Burger', N'The meat of a Swiftcow is both supple and tasty. Putting it into a burger gives you +2 to melee weapon damage and +5 TempHP for 1 hour.', 107, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1815, N'Tator Crisps', N'These sliced poptato snacks have a hint of mushroom flavor in them. They give you +2 CON for 30 minutes.', 135, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1816, N'Toadstool Soup', N'Not only do you feel wiser when you drink this concoction, your mouth has a mushroomy aftertaste. Gives you +2 WIS for 30 minutes.', 155, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1817, N'Bashon Steak', N'This steak is big, and you wonder how many people can finish it in one sitting. Gives you +2 to melee weapon damage and the feat Improved Grapple for 1 hour.', 288, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1819, N'Pakalele Pork', N'The fatty meat of a Pakalele.', 14, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1820, N'Shortsword, bronze', N'', 75, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1848, N'Baked Beans with Bat Wings', N'A vile dish served only for its added benefits. Even the Spectre Syrups sweetness cant mask its foulness. Grants the eater +10 to all Profession: Alchemy checks for 4 hours.', 166, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1849, N'Bedtime Mutton', N'A gravy-heavy meal that can put both you and your enemies to sleep. Qualified spellcasters can cast an extra 3 Sleep spells. Lasts the rest of the day. Make a Will Save of DC:12 to not fall asleep. If you fail and are awakened before 4 hours of sleep, you are fatigued for 4 hours. Elves do not need to make this check.', 153, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1850, N'Bird Kabob', N'Drinking this will make your pull of your bow more powerful. Gain +2 ranged weapon damage for 1 hour.', 214, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1851, N'Carrot Cheesecake', N'A sweet cake that can be eaten as a dessert or a meal unto itself. Gives you a +5 bonus to Spot checks for 4 hours.', 152, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1852, N'Chili Con Carnage', N'This spicy mixture adds a fiery aftermath to both your enemies and your taste buds. Your Fireball and Scorching Ray spells each deal an extra 1d6 Fire damage. Lasts 12 hours.', 40, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1853, N'Colonial Caviar', N'This seafood meal is a favorite of pirates and treasure hunters. Gives you a +5 to your Swim checks and Water Breathing for 4 hours.', 108, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1854, N'Elm Ministers Taco', N'A wheaty tasting meat taco that is a favorite among those in the carpentry profession. Gives you +10 to all Profession: Carpentry checks for 4 hours.', 160, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1855, N'Fish n Chips', N'Poptato crisps and cod with a hint of lemon makes you feel tougher. Gives +2 to critical confirmation rolls and +10 TempHP for 4 hours.', 228, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1856, N'Funday Sundae', N'This favorite among cooks is an expensive dessert not meant for kids, peasants, and poor people. Gives +10 to all Profession: Cooking checks for 4 hours.', 165, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1857, N'Golden Nuggets', N'These clucker chunks fried in oil and wrapped in barley are the go-to food of Jewelcrafters. Gives +10 to all Profession: Jewelcrafter checks for 4 hours.', 168, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1858, N'Grub Gruel', N'It is said clotiers drink this so they can concentrate on their work. It isnt the most pleasant meal to eat. Gives +10 to all Profession: Seamstress checks for 4 hours.', 172, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1859, N'Hammer Stew', N'Someone threw a Dwarven Waraxe into this pot of stew and a new staple of Dwarven society was born. Gives +10 to all Profession: Blacksmith checks for 4 hours. This recipe makes 4 servings. You can recover the Dwarven Waraxe after cooking...but it must be there throughout! ', 135, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1860, N'Crimson Robe', N'This nice red robe covers a person from head to toe and gives them +10 TempHP. Can be repaired with a Mending spell (for +1HP) a Make Whole spell (for 1d8+3 HP) or with a Redsteel Ingot and a Spider Silk.', 2800, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1861, N'Crimson Cape', N'This nice red cape covers a person from head to toe from the back and gives them +10 TempHP. Can be repaired with a Mending spell (for +1HP) a Make Whole spell (for 1d8+3 HP) or with a Redsteel Ingot and a Spider Silk.', 2800, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1866, N'Arrow Fletching (+1 atk)', N'A fletching that goes on the back of an arrow or bolt shaft.
This fletching gives the shooter a +1 bonus to their attack roll.', 2, N'Ammunition - Mod', N'Fleching')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1867, N'Arrowhead (+1 dmg)', N'The point of this arrowhead or bolt head gives the shooter a +1 bonus to damage.', 20, N'Ammunition - Mod', N'Head')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1868, N'Savage Arrow (+2 atk, +2 dmg)', N'This arrow adds +2 to your ranged attack rolls and +2 to your damage rolls when used. Cannot be recovered.', 60, N'Ammunition', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1869, N'Onslaught Arrow (+3 atk, +3 dmg)', N'This arrow adds +3 to your ranged attack rolls and +3 to your damage rolls when used. Cannot be recovered.', 90, N'Ammunition', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1870, N'Murder Arrow (+4 atk, +4 dmg)', N'This arrow adds +4 to your ranged attack rolls and +4 to your damage rolls when used. Cannot be recovered.', 270, N'Ammunition', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1871, N'Destruction Arrow (+5 atk, +5 dmg)', N'This arrow adds +5 to your ranged attack rolls and +5 to your damage rolls when used. Cannot be recovered.', 445, N'Ammunition', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1872, N'Arrowhead (+2 dmg)', N'The point of this arrowhead or bolt head gives the shooter a +2 bonus to damage.', 37, N'Ammunition', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1873, N'Arrow Fletchling (+2 atk)', N'A fletchling that goes on the back of an arrow or bolt shaft.
This fletchling gives the shooter a +2 bonus to their ranged attack roll.', 4, N'Ammunition', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1874, N'Vicious Bolt (+1 atk, +1 dmg)', N'This crossbow bolt adds +1 to your ranged attack rolls and +1 to your damage rolls when used. Cannot be recovered.', 30, N'Ammunition', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1875, N'Savage Bolt (+2 atk, +2 dmg)', N'This crossbow bolt adds +2 to your ranged attack rolls and +2 to your damage rolls when used. Cannot be recovered.', 60, N'Ammunition', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1876, N'Onslaught Bolt (+3 atk, +3 dmg)', N'This crossbow bolt adds +3 to your ranged attack rolls and +3 to your damage rolls when used. Cannot be recovered.', 90, N'Ammunition', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1877, N'Murder Bolt (+4 atk, +4 dmg)', N'This crossbow bolt adds +4 to your ranged attack rolls and +4 to your damage rolls when used. Cannot be recovered.', 270, N'Ammunition', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1878, N'Destruction Bolt (+5 atk, +5 dmg)', N'This crossbow bolt adds +5 to your ranged attack rolls and +5 to your damage rolls when used. Cannot be recovered.', 445, N'Ammunition', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1879, N'Bronze Shaft', N'A bronze rod measuring about 20 inches long. Used in the crafting of crossbow bolts.', 3, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1880, N'Birch Shaft', N'A wooden shaft about 30 inches long. Used in the construction of arrows.', 1, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1882, N'Garnet Pebbles', N'This handful of jewel pebbles are colored a vivid pink. They faintly radiate the power of Magic energy and can be used to increase caster level in some jewelry.', 350, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1883, N'Garnet Shard', N'This sharp jewel fragment is colored a vivid pink. It faintly radiates the power of Magic energy and can be used to increase caster level in some jewelry.', 850, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1884, N'Garnet Gem', N'This solid jewel is colored a vivid pink. It forcefully radiates the power of Magic energy and can be used to increase caster level in some jewelry.
', 3500, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1885, N'Wand of Poisoning Entanglement', N'', 100, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1886, N'Seaweed (bait)', N'When used, gives you +5 to catch cave fish. Once it is used, it is lost.', 1, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1887, N'Sea Scion (bait)', N'When used, gives you +5 to catch pond fish. Once it is used, it is lost.', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1888, N'Lowslug (bait)', N'When used, gives you +5 to catch swamp fish. Once it is used, it is lost.', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1889, N'Ice Pip (bait)', N'When used, gives you +5 to catch geyser fish. Once it is used, it is lost.', 1, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1890, N'Crawqueen (bait)', N'When used, gives you +5 to catch sewer fish. Once it is used, it is lost.', 1, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1891, N'Uhmgor (bait)', N'When used, gives you +5 to catch coastline fish. Once it is used, it is lost.', 1, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1892, N'Cave Clam (bait)', N'When used, gives you +5 to catch shallow sea fish. Once it is used, it is lost.', 1, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1893, N'Glowing Algae (bait)', N'When used, gives you +5 to catch deep sea fish. Once it is used, it is lost.', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1894, N'Grey Worms (bait)', N'When used, gives you +5 to catch chasm fish. Once it is used, it is lost.', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1895, N'Grotto Snail (bait)', N'When used, gives you +5 to catch lake fish. Once it is used, it is lost.', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1896, N'Ringworm (bait)', N'When used, gives you +5 to catch river fish. Once it is used, it is lost.', 1, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1897, N'Trilobite (bait)', N'When used, gives you +5 to catch stream fish. Once it is used, it is lost.', 1, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1898, N'Iron Urchin (fish)', N'A spikey ball found floating in shallow waters and washed up on beaches. It has as much iron in it as a chunk of iron ore.', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1899, N'Vorstela (fish)', N'This fish can mind control the one who catches it. Most of the time, it says "put me back" but there are sometimes more sinister ones.', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1900, N'Phanahamas (fish)', N'A dull grey fish with greyish green fins found in rivers. Similar to the way it looks, it also tastes dull, but satisfies most humanoids nutritional needs. ', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1901, N'Rokazu (fish)', N'This purplish pink fish is found in ponds, usually sucking the filth at the bottom. Its sharp and tough scales make it hard to prepare and the meat isnt that tasty either.', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1902, N'Sewer Squid (fish)', N'This species of squid is rarely seen in shallow seas, where its suppose to make its home. Instead, it has invaded civilization, where it thrives on the filth and excretment of humanoid waste. Only the very poor resort to eating this.', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1903, N'Lobbon (fish)', N'This tiny, bright red lobster-like shellfish is found in hot geysers, often in caves in and around volcanic areas. It is small, but the meat it possesses is very tasty. It possesses incredible strength for something of its size, and pulling one up requires the fisher to be strong.', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1904, N'Salsturg (fish)', N'Though it looks quite beautiful, the Salsturgs meat tastes "slimy" to some people and its natural oils dont appeal to many. Its a bottom feeder found in swamps.', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1905, N'Stabban (fish)', N'This bright red freshwater shrimp is found foraging on the bottom of streams and its meat is a favorite among rural folk because of the ease of cathing them. Be careful though, it can jump quite far, and its sharp beak can take out an eye.', 5, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1906, N'Kokomaru (fish)', N'This big yellow fish with a bulbous head is commonly fished in the deep sea. Though it looks aggressive, it feeds mostly on plankton and other miniscule sea creatures. Its meat is a bit slimy in texture, but very rich in taste.', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1907, N'Jampucha (fish)', N'This greenish yellow and grey fish is found in caves. Its most distinguishing feature is its rows of square buck teeth that protrude out of its mouth. Its meat is tough and not very flavorful.', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1908, N'Squeemee (fish)', N'', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1909, N'Thunderhead Trout (fish)', N'', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1910, N'Rainbow Roe (fish)', N'', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1911, N'Myopi (fish)', N'', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1912, N'Gutterfish (fish)', N'', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1913, N'Pigfish (fish)', N'', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1914, N'Razorfin (fish)', N'', 500, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1915, N'Lotzsu (fish)', N'', 25, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1916, N'Infernofish (fish)', N'', 2000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1917, N'Axehead (fish)', N'', 1000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1918, N'Queen Pankor (fish)', N'', 5000, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1919, N'Ash Granite - Light Armor', N'Adds 10 lbs and increases AC by 2', 600, N'Armor - Light - Mod', N'Stonemason')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1920, N'Iron - Light Armor', N'Adds 10 lbs and grants 4 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 225, N'Armor - Light - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1921, N'Redsteel - Light Armor', N'Adds 10 lbs and grants 8 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 800, N'Armor - Light - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1922, N'Darkflint - Light Armor', N'Adds 10 lbs and increases AC by 1', 180, N'Armor - Light - Mod', N'Stonemason')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1923, N'Tranquil Marble - Light Armor', N'Adds 10 lbs and increases AC by 3', 2400, N'Armor - Light - Mod', N'Stonemason')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1924, N'Carbonite - Light Armor', N'Adds 10 lbs and increases AC by 4', 7200, N'Armor - Light - Mod', N'Stonemason')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1925, N'Storm Obsidian - Light Armor', N'Adds 10 lbs and increases AC by 5', 17600, N'Armor - Light - Mod', N'Stonemason')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1926, N'Darkflint - Medium Armor', N'Adds 10 lbs and increases AC by 1', 260, N'Armor - Medium - Mod', N'Stonemason')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1927, N'Ash Granite - Medium Armor', N'Adds 10 lbs and increases AC by 2', 1000, N'Armor - Medium - Mod', N'Stonemason')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1928, N'Tranquil Marble - Medium Armor', N'Adds 10 lbs and increases AC by 3', 4400, N'Armor - Medium - Mod', N'Stonemason')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1929, N'Carbonite - Medium Armor', N'Adds 10 lbs and increases AC by 4', 13600, N'Armor - Medium - Mod', N'Stonemason')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1930, N'Storm Obsidian - Medium Armor', N'Adds 10 lbs and increases AC by 5', 33600, N'Armor - Medium - Mod', N'Stonemason')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1931, N'Darkflint - Heavy Armor', N'Adds 10 lbs and increases AC by 1', 420, N'Armor - Heavy - Mod', N'Stonemason')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1932, N'Ash Granite - Heavy Armor', N'Adds 10 lbs and increases AC by 2', 1800, N'Armor - Heavy - Mod', N'Stonemason')
GO
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1933, N'Tranquil Marble - Heavy Armor', N'Adds 10 lbs and increases AC by 3', 8400, N'Armor - Heavy - Mod', N'Stonemason')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1934, N'Carbonite - Heavy Armor', N'Adds 10 lbs and increases AC by 4', 26400, N'Armor - Heavy - Mod', N'Stonemason')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1935, N'Storm Obsidian - Heavy Armor', N'Adds 10 lbs and increases AC by 5', 65600, N'Armor - Heavy - Mod', N'Stonemason')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1936, N'Tritanium - Light Armor', N'Adds 10 lbs and grants 12 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 2150, N'Armor - Light - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1937, N'Nightsteel - Light Armor', N'Adds 10 lbs and grants 16 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 3550, N'Armor - Light - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1938, N'Dragonite - Light Armor', N'Adds 10 lbs and grants 20 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 5100, N'Armor - Light - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1939, N'Iron - Medium Armor', N'Adds 10 lbs and grants 6 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 350, N'Armor - Medium - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1940, N'Redsteel - Medium Armor', N'Adds 10 lbs and grants 12 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 1400, N'Armor - Medium - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1941, N'Tritanium - Medium Armor', N'Adds 10 lbs and grants 18 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 3900, N'Armor - Medium - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1942, N'Nightsteel - Medium Armor', N'Adds 10 lbs and grants 24 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 6300, N'Armor - Medium - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1943, N'Dragonite - Medium Armor', N'Adds 10 lbs and grants 30 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 8600, N'Armor - Medium - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1944, N'Iron - Heavy Armor', N'Adds 10 lbs and grants 10 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 1300, N'Armor - Heavy - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1945, N'Redsteel - Heavy Armor', N'Adds 10 lbs and grants 20 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 3200, N'Armor - Heavy - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1946, N'Tritanium - Heavy Armor', N'Adds 10 lbs and grants 30 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 7800, N'Armor - Heavy - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1947, N'Nightsteel - Heavy Armor', N'Adds 10 lbs and grants 40 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 11800, N'Armor - Heavy - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1948, N'Dragonite - Heavy Armor', N'Adds 10 lbs and grants 50 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 15600, N'Armor - Heavy - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1949, N'Resurrection Potion (1HD)', N'This potion may or may not bring back someone from the dead. If they were mighty in life, there is a better chance the resurrection will be successful. 
The synthesis uses Revival Radish Hearts, and depends on the HD of the creature being brought back to life. It must be consumed less than one hour after death, while the soul still cleaves to the body of the deceased.

Penalty for use:
1d6 STR, -1d6 DEX, -1d6 CON, -1d6 INT, -1d6 WIS, & -1d6 CHA (permanent drains) To a minimum score of -8. Scores can be restored with the spell Restoration	

This version only works on characters with 1 or less HD', 0, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1950, N'Resurrection Potion (2HD)', N'This potion may or may not bring back someone from the dead. If they were mighty in life, there is a better chance the resurrection will be successful. 
The synthesis uses Revival Radish Hearts, and depends on the HD of the creature being brought back to life. It must be consumed less than one hour after death, while the soul still cleaves to the body of the deceased.

Penalty for use:
1d6 STR, -1d6 DEX, -1d6 CON, -1d6 INT, -1d6 WIS, & -1d6 CHA (permanent drains) To a minimum score of -8. Scores can be restored with the spell Restoration	

This version only works on characters with 2 or less HD', 0, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1951, N'Resurrection Potion (3HD)', N'This potion may or may not bring back someone from the dead. If they were mighty in life, there is a better chance the resurrection will be successful. 
The synthesis uses Revival Radish Hearts, and depends on the HD of the creature being brought back to life. It must be consumed less than one hour after death, while the soul still cleaves to the body of the deceased.

Penalty for use:
1d6 STR, -1d6 DEX, -1d6 CON, -1d6 INT, -1d6 WIS, & -1d6 CHA (permanent drains) To a minimum score of -8. Scores can be restored with the spell Restoration	

This version only works on characters with 3 or less HD', 0, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1952, N'Resurrection Potion (4HD)', N'This potion may or may not bring back someone from the dead. If they were mighty in life, there is a better chance the resurrection will be successful. 
The synthesis uses Revival Radish Hearts, and depends on the HD of the creature being brought back to life. It must be consumed less than one hour after death, while the soul still cleaves to the body of the deceased.

Penalty for use:
1d6 STR, -1d6 DEX, -1d6 CON, -1d6 INT, -1d6 WIS, & -1d6 CHA (permanent drains) To a minimum score of -8. Scores can be restored with the spell Restoration	

This version only works on characters with 4 or less HD', 0, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1953, N'Resurrection Potion (5HD)', N'This potion may or may not bring back someone from the dead. If they were mighty in life, there is a better chance the resurrection will be successful. 
The synthesis uses Revival Radish Hearts, and depends on the HD of the creature being brought back to life. It must be consumed less than one hour after death, while the soul still cleaves to the body of the deceased.

Penalty for use:
1d6 STR, -1d6 DEX, -1d6 CON, -1d6 INT, -1d6 WIS, & -1d6 CHA (permanent drains) To a minimum score of -8. Scores can be restored with the spell Restoration	

This version only works on characters with 5 or less HD', 0, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1954, N'Resurrection Potion (6HD)', N'This potion may or may not bring back someone from the dead. If they were mighty in life, there is a better chance the resurrection will be successful. 
The synthesis uses Revival Radish Hearts, and depends on the HD of the creature being brought back to life. It must be consumed less than one hour after death, while the soul still cleaves to the body of the deceased.

Penalty for use:
1d6 STR, -1d6 DEX, -1d6 CON, -1d6 INT, -1d6 WIS, & -1d6 CHA (permanent drains) To a minimum score of -8. Scores can be restored with the spell Restoration	

This version only works on characters with 6 or less HD', 0, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1955, N'Resurrection Potion (7HD)', N'This potion may or may not bring back someone from the dead. If they were mighty in life, there is a better chance the resurrection will be successful. 
The synthesis uses Revival Radish Hearts, and depends on the HD of the creature being brought back to life. It must be consumed less than one hour after death, while the soul still cleaves to the body of the deceased.

Penalty for use:
1d6 STR, -1d6 DEX, -1d6 CON, -1d6 INT, -1d6 WIS, & -1d6 CHA (permanent drains) To a minimum score of -8. Scores can be restored with the spell Restoration	

This version only works on characters with 7 or less HD', 0, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1956, N'Resurrection Potion (8HD)', N'This potion may or may not bring back someone from the dead. If they were mighty in life, there is a better chance the resurrection will be successful. 
The synthesis uses Revival Radish Hearts, and depends on the HD of the creature being brought back to life. It must be consumed less than one hour after death, while the soul still cleaves to the body of the deceased.

Penalty for use:
1d6 STR, -1d6 DEX, -1d6 CON, -1d6 INT, -1d6 WIS, & -1d6 CHA (permanent drains) To a minimum score of -8. Scores can be restored with the spell Restoration	

This version only works on characters with 8 or less HD', 0, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1957, N'Resurrection Potion (9HD)', N'This potion may or may not bring back someone from the dead. If they were mighty in life, there is a better chance the resurrection will be successful. 
The synthesis uses Revival Radish Hearts, and depends on the HD of the creature being brought back to life. It must be consumed less than one hour after death, while the soul still cleaves to the body of the deceased.

Penalty for use:
1d6 STR, -1d6 DEX, -1d6 CON, -1d6 INT, -1d6 WIS, & -1d6 CHA (permanent drains) To a minimum score of -8. Scores can be restored with the spell Restoration	

This version only works on characters with 9 or less HD', 0, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1958, N'Resurrection Potion (10HD)', N'This potion may or may not bring back someone from the dead. If they were mighty in life, there is a better chance the resurrection will be successful. 
The synthesis uses Revival Radish Hearts, and depends on the HD of the creature being brought back to life. It must be consumed less than one hour after death, while the soul still cleaves to the body of the deceased.

Penalty for use:
1d6 STR, -1d6 DEX, -1d6 CON, -1d6 INT, -1d6 WIS, & -1d6 CHA (permanent drains) To a minimum score of -8. Scores can be restored with the spell Restoration	

This version only works on characters with 10 or less HD', 0, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1959, N'Resurrection Potion (11HD)', N'This potion may or may not bring back someone from the dead. If they were mighty in life, there is a better chance the resurrection will be successful. 
The synthesis uses Revival Radish Hearts, and depends on the HD of the creature being brought back to life. It must be consumed less than one hour after death, while the soul still cleaves to the body of the deceased.

Penalty for use:
1d6 STR, -1d6 DEX, -1d6 CON, -1d6 INT, -1d6 WIS, & -1d6 CHA (permanent drains) To a minimum score of -8. Scores can be restored with the spell Restoration	

This version only works on characters with 11 or less HD', 0, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1960, N'Resurrection Potion (12HD)', N'This potion may or may not bring back someone from the dead. If they were mighty in life, there is a better chance the resurrection will be successful. 
The synthesis uses Revival Radish Hearts, and depends on the HD of the creature being brought back to life. It must be consumed less than one hour after death, while the soul still cleaves to the body of the deceased.

Penalty for use:
1d6 STR, -1d6 DEX, -1d6 CON, -1d6 INT, -1d6 WIS, & -1d6 CHA (permanent drains) To a minimum score of -8. Scores can be restored with the spell Restoration	

This version only works on characters with 12 or less HD', 0, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1961, N'Resurrection Potion (13HD)', N'This potion may or may not bring back someone from the dead. If they were mighty in life, there is a better chance the resurrection will be successful. 
The synthesis uses Revival Radish Hearts, and depends on the HD of the creature being brought back to life. It must be consumed less than one hour after death, while the soul still cleaves to the body of the deceased.

Penalty for use:
1d6 STR, -1d6 DEX, -1d6 CON, -1d6 INT, -1d6 WIS, & -1d6 CHA (permanent drains) To a minimum score of -8. Scores can be restored with the spell Restoration	

This version only works on characters with 13 or less HD', 0, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1962, N'Resurrection Potion (14HD)', N'This potion may or may not bring back someone from the dead. If they were mighty in life, there is a better chance the resurrection will be successful. 
The synthesis uses Revival Radish Hearts, and depends on the HD of the creature being brought back to life. It must be consumed less than one hour after death, while the soul still cleaves to the body of the deceased.

Penalty for use:
1d6 STR, -1d6 DEX, -1d6 CON, -1d6 INT, -1d6 WIS, & -1d6 CHA (permanent drains) To a minimum score of -8. Scores can be restored with the spell Restoration	

This version only works on characters with 14 or less HD', 0, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1963, N'Resurrection Potion (15HD)', N'This potion may or may not bring back someone from the dead. If they were mighty in life, there is a better chance the resurrection will be successful. 
The synthesis uses Revival Radish Hearts, and depends on the HD of the creature being brought back to life. It must be consumed less than one hour after death, while the soul still cleaves to the body of the deceased.

Penalty for use:
1d6 STR, -1d6 DEX, -1d6 CON, -1d6 INT, -1d6 WIS, & -1d6 CHA (permanent drains) To a minimum score of -8. Scores can be restored with the spell Restoration	

This version only works on characters with 15 or less HD', 0, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1964, N'Resurrection Potion (16HD)', N'This potion may or may not bring back someone from the dead. If they were mighty in life, there is a better chance the resurrection will be successful. 
The synthesis uses Revival Radish Hearts, and depends on the HD of the creature being brought back to life. It must be consumed less than one hour after death, while the soul still cleaves to the body of the deceased.

Penalty for use:
1d6 STR, -1d6 DEX, -1d6 CON, -1d6 INT, -1d6 WIS, & -1d6 CHA (permanent drains) To a minimum score of -8. Scores can be restored with the spell Restoration	

This version only works on characters with 16 or less HD', 0, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1965, N'Resurrection Potion (17HD)', N'This potion may or may not bring back someone from the dead. If they were mighty in life, there is a better chance the resurrection will be successful. 
The synthesis uses Revival Radish Hearts, and depends on the HD of the creature being brought back to life. It must be consumed less than one hour after death, while the soul still cleaves to the body of the deceased.

Penalty for use:
1d6 STR, -1d6 DEX, -1d6 CON, -1d6 INT, -1d6 WIS, & -1d6 CHA (permanent drains) To a minimum score of -8. Scores can be restored with the spell Restoration	

This version only works on characters with 17 or less HD', 0, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1966, N'Resurrection Potion (18HD)', N'This potion may or may not bring back someone from the dead. If they were mighty in life, there is a better chance the resurrection will be successful. 
The synthesis uses Revival Radish Hearts, and depends on the HD of the creature being brought back to life. It must be consumed less than one hour after death, while the soul still cleaves to the body of the deceased.

Penalty for use:
1d6 STR, -1d6 DEX, -1d6 CON, -1d6 INT, -1d6 WIS, & -1d6 CHA (permanent drains) To a minimum score of -8. Scores can be restored with the spell Restoration	

This version only works on characters with 18 or less HD', 0, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1967, N'Resurrection Potion (19HD)', N'This potion may or may not bring back someone from the dead. If they were mighty in life, there is a better chance the resurrection will be successful. 
The synthesis uses Revival Radish Hearts, and depends on the HD of the creature being brought back to life. It must be consumed less than one hour after death, while the soul still cleaves to the body of the deceased.

Penalty for use:
1d6 STR, -1d6 DEX, -1d6 CON, -1d6 INT, -1d6 WIS, & -1d6 CHA (permanent drains) To a minimum score of -8. Scores can be restored with the spell Restoration	

This version only works on characters with 19 or less HD', 0, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1968, N'Resurrection Potion (20HD)', N'This potion may or may not bring back someone from the dead. If they were mighty in life, there is a better chance the resurrection will be successful. 
The synthesis uses Revival Radish Hearts, and depends on the HD of the creature being brought back to life. It must be consumed less than one hour after death, while the soul still cleaves to the body of the deceased.

Penalty for use:
1d6 STR, -1d6 DEX, -1d6 CON, -1d6 INT, -1d6 WIS, & -1d6 CHA (permanent drains) To a minimum score of -8. Scores can be restored with the spell Restoration	

This version only works on characters with 20 or less HD', 0, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1969, N'Venom of Fish', N'[Stats: -1d2 INT then -1d2 INT in 1 hour; Fort Save DC:10] value: 150
[Info: This venom is a clear dull blue color.]
[Extraction: Wild Empathy or Handle Animal check DC:15 to extract from wild creature.]
[Symptoms: Victim becomes faint and wants to sleep.]
Each unit of poison fills a single potion bottle and is enough to coat a piercing weapon 10 times or a whole quiver of 10 arrows or bolts
', 150, N'Ammunition - Mod', N'Poison')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1970, N'Insect Elixir', N'Sprouts antennae; +2 to Natural Armor, Darkvision to 60 ft. Lasts 6 hours.', 306, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1971, N'Invisibility Potion', N'As the spell Invisibility. Lasts 5 minutes', 300, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1972, N'Dullard Dust', N'Pour this over your head to get rid of the outlining effects of Glitterdust for 3 rounds. (Does not cure Blindness)', 330, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1973, N'Potion of Arcane Knowledge', N'Potions of Arcane Knowledge are potions for spontaneous arcane spellcasters that open up the third eye of the subconscious in order for them to absorb the energies of arcane power into their beings. After consuming these potions, they may then read a spell from a spell book or scroll, and once done the study, have that particular spell added to his or her ‘spells known’ list. They may then cast any time it as if it were a spell they have known.This is a serious and dangerous ritual, and there have been many instances of apprentice sorcerers or bards finding their seniors’ lifeless bodies hunched over a table with a Potion of Arcane Knowledge in one hand and bleeding from the ear.

Step 1:
Upon consumption of the Potion of Arcane Knowledge (or several), they must make a Will Save equal to 13 + the spell level they are attempting to learn in order to open a channel from their consciousness to the Plane of Magic. Failure on this save means they take an amount of Psychic Damage as well as having to consume more potions and restart the ritual. (See chart below.)

Step 2:
If successful in consuming the potion(s) they must now spend an amount of time concentrating on the spell equal to the level of the spell being learned. (Ex. 1st level spells take 1 hour to learn, 2nd level spells take 2 hours to learn, etc. 0-Level spells require ½ an hour of concentration.) They must spend this entire time in intense concentration, and any significant interruption may result in failure as well as the psychic damage associated with it.

Step 3:
This infusion of knowledge is often exhausting for the caster, and as such, they must then get a good night of sleep to absorb the spell’s knowledge. This is the typical amount of time required to get a full rest for their race, and enhancements to sleep or items to shorten it cannot be consumed for the potions to take effect. Once the caster has gotten the rest required, they may add the spell to their ‘spells known’ list. Failure to get the proper rest results in the spell not being absorbed into tehir being, but no associated psychic damage other than a pounding headache.

Level of Spell	# of Potions	Will Save		Psychic Damage
0-Level 		½ 		DC:13	 	-2d6 	
1st Level 		1 		DC:14 		-3d6 	
2nd Level		3 		DC:15 		-4d6 	
3rd Level 		6 		DC:16 		-5d6 	
4th Level 		10 		DC:17 		-6d6 	
5th Level 		16 		DC:18 		-7d6 	
6th Level 		24 		DC:19 		-8d6 	
7th Level 		32 		DC:20 		-9d6 	
8th Level 		42 		DC:21 		-10d6 
9th Level 		54 		DC:22 		-11d6 
', 1500, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1974, N'Bomblet of Necrosis', N'Direct Attack: Ranged touch attack; 30 ft. range. 3d8 Necrotic damage; Fortitude Save DC:14 or -3 STR for 1 minute.
Indirect Attack: 2d8 Necrotic damage; Fortitude Save DC:12 or -3 STR for 1 minute.
Creatures within 5 ft of impact: 2d8 Necrotic damage; Fortitude Save DC:12 or -3 STR for 1 minute.', 600, N'Bomb', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1975, N'Bomblet of Evil', N'Direct Attack: Ranged touch attack; 30 ft. range. 3d8 Vile damage; Will Save DC:14 or Frightened for 1 minute.
Indirect Attack: 2d8 Vile damage; Will Save DC:12 or Frightened for 1 minute.
Creatures within 5 ft of impact: 2d8 Vile damage; Will Save DC:12 or Frightened for 1 minute.', 600, N'Bomb', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1977, N'Bomblet of Magic', N'Direct Attack: Ranged touch attack; 30 ft. range. 3d8 Magic damage; Will Save DC:14 or Frightened for 1 minute.
Indirect Attack: 2d8 Magic damage; Will Save DC:12 or Frightened for 1 minute.
Creatures within 5 ft of impact: 2d8 Magic damage; Will Save DC:12 or Silenced for 1 minute.', 600, N'Bomb', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1978, N'Wind Wall Bomblet', N'Direct Attack: Ranged touch attack; 30 ft. range. Creatures within 5 ft of impact make Balance Check DC:12 or Prone
Indirect Attack: Mini Wind Wall, as the spell for 1 minute, area 15 ft wide x 10 ft. high.', 225, N'Bomb', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1979, N'Bomb of Deafness', N'Direct Attack: Ranged touch attack; 30 ft. range. 4d6 Sonic damage; Fortitude save DC:14 or Deafened for 1d4 rounds.
Indirect Attack: 3d6 Sonic damage; Fortitude save DC:12 or Deafened for 1d4 rounds.
Creatures within 10 ft of impact: 3d6 Sonic damage; Fortitude save DC:12 or Deafened for 1d4 rounds.', 360, N'Bomb', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1980, N'Bomb of Fire', N'Direct Attack: Ranged touch attack; 30 ft. range. 4d6 Fire Damage. Reflex Save DC:14 or Ablaze.
Indirect Attack: 3d6 Fire damage; Reflex Save DC:12 or Ablaze.
Creatures within 10 ft of impact: 1d6 Fire damage; Reflex Save DC:12 or Ablaze.
Ablaze: 1d6 Fire damage/round until put out or quenched. Max 5 rounds.', 360, N'Bomb', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1981, N'Bomb of Gravel', N'Direct Attack: Ranged touch attack; 30 ft. range. 4d6 Earth damage; Strength check DC:14 or lose 10 ft. movement for 1d4 rounds.
Indirect Attack: 3d6 Earth damage; Strength check DC:12 or lose 10 ft. movement for 1d4 rounds.
Creatures within 10 ft of impact: 3d6 Earth damage; Strength check DC:12 or lose 10 ft. movement for 1d4 rounds', 360, N'Bomb', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1982, N'Bomb of Ice', N'Direct Attack: Ranged touch attack; 30 ft. range. 4d6 Cold Damage. Balance Check DC:14 or Prone.
Indirect Attack: 3d6 Cold damage; Balance Check DC:12 or Prone.
Creatures within 10 ft of impact: 3d6 Cold damage; Balance Check DC:12 or Prone.', 360, N'Bomb', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1983, N'Bomb of Radiance', N'Direct Attack: Ranged touch attack; 30 ft. range. 4d8 Radiant damage; Reflex Save DC:14 or Blinded for 1 minute.
Indirect Attack: 3d8 Radiant damage; Reflex Save DC:12 or Blinded for 1 minute.
Creatures within 10 ft of impact: 3d8 Radiant damage; Reflex Save DC:12 or Blinded for 1 minute.
This bomblet deals double damage to undead creatures.', 710, N'Bomb', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1984, N'Bomb of Sickening', N'Direct Attack: Ranged touch attack; 30 ft. range. 4d6 Acid damage; Fortitude save DC:14 or Sickened for 1d4 rounds.
Indirect Attack: 3d6 Acid damage; Fortitude save DC:12 or Sickened for 1d4 rounds.
Creatures within 10 ft of impact: 3d6 Acid damage; Fortitude save DC:12 or Sickened for 1d4 rounds.', 360, N'Bomb', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1985, N'Bomb of Stunning', N'Direct Attack: Ranged touch attack; 30 ft. range. 4d6 Electric damage; Fortitude save DC:14 or Stunned for 1 round.
Indirect Attack: 3d6 Electric damage; Fortitude save DC:12 or Stunned for 1 round.
Creatures within 10 ft of impact: 3d6 Electric damage; Fortitude save DC:12 or Stunned for 1 round.', 360, N'Bomb', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1986, N'Bomb of Necrosis', N'Direct Attack: Ranged touch attack; 30 ft. range. 4d8 Necrotic damage; Fortitude Save DC:14 or -3 STR for 1 minute.
Indirect Attack: 3d8 Necrotic damage; Fortitude Save DC:12 or -3 STR for 1 minute.
Creatures within 10 ft of impact: 3d8 Necrotic damage; Fortitude Save DC:12 or -3 STR for 1 minute.', 710, N'Bomb', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1987, N'Bomb of Evil', N'Direct Attack: Ranged touch attack; 30 ft. range. 4d8 Vile damage; Will Save DC:14 or Frightened for 1 minute.
Indirect Attack: 3d8 Vile damage; Will Save DC:12 or Frightened for 1 minute.
Creatures within 10 ft of impact: 3d8 Vile damage; Will Save DC:12 or Frightened for 1 minute.', 710, N'Bomb', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1988, N'Bomb of Magic', N'Direct Attack: Ranged touch attack; 30 ft. range. 4d8 Magic damage; Will Save DC:14 or Frightened for 1 minute.
Indirect Attack: 3d8 Magic damage; Will Save DC:12 or Frightened for 1 minute.
Creatures within 10 ft of impact: 3d8 Magic damage; Will Save DC:12 or Silenced for 1 minute.', 710, N'Bomb', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1989, N'Wind Wall Bomb', N'Direct Attack: Ranged touch attack; 30 ft. range. Creatures within 10 ft of impact make Balance Check DC:12 or Prone
Indirect Attack: Mini Wind Wall, as the spell for 1 minute, area 25 ft wide x 15 ft. high.', 335, N'Bomb', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1990, N'Mega-Bomb of Deafness', N'Direct Attack: Ranged touch attack; 30 ft. range. 5d6 Sonic damage; Fortitude save DC:14 or Deafened for 1d4 rounds.
Indirect Attack: 4d6 Sonic damage; Fortitude save DC:12 or Deafened for 1d4 rounds.
Creatures within 20 ft of impact: 4d6 Sonic damage; Fortitude save DC:12 or Deafened for 1d4 rounds.', 750, N'Bomb', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1991, N'Mega-Bomb of Fire', N'Direct Attack: Ranged touch attack; 30 ft. range. 5d6 Fire Damage. Reflex Save DC:14 or Ablaze.
Indirect Attack: 4d6 Fire damage; Reflex Save DC:12 or Ablaze.
Creatures within 20 ft of impact: 1d6 Fire damage; Reflex Save DC:12 or Ablaze.
Ablaze: 1d6 Fire damage/round until put out or quenched. Max 5 rounds.', 750, N'Bomb', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1992, N'Mega-Bomb of Gravel', N'Direct Attack: Ranged touch attack; 30 ft. range. 5d6 Earth damage; Strength check DC:14 or lose 10 ft. movement for 1d4 rounds.
Indirect Attack: 4d6 Earth damage; Strength check DC:12 or lose 10 ft. movement for 1d4 rounds.
Creatures within 20 ft of impact: 4d6 Earth damage; Strength check DC:12 or lose 10 ft. movement for 1d4 rounds', 750, N'Bomb', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1993, N'Mega-Bomb of Ice', N'Direct Attack: Ranged touch attack; 30 ft. range. 5d6 Cold Damage. Balance Check DC:14 or Prone.
Indirect Attack: 4d6 Cold damage; Balance Check DC:12 or Prone.
Creatures within 20 ft of impact: 4d6 Cold damage; Balance Check DC:12 or Prone.', 750, N'Bomb', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1994, N'Mega-Bomb of Radiance', N'Direct Attack: Ranged touch attack; 30 ft. range. 5d8 Radiant damage; Reflex Save DC:14 or Blinded for 1 minute.
Indirect Attack: 4d8 Radiant damage; Reflex Save DC:12 or Blinded for 1 minute.
Creatures within 20 ft of impact: 4d8 Radiant damage; Reflex Save DC:12 or Blinded for 1 minute.
This bomblet deals double damage to undead creatures.', 1100, N'Bomb', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1995, N'Mega-Bomb of Sickening', N'Direct Attack: Ranged touch attack; 30 ft. range. 5d6 Acid damage; Fortitude save DC:14 or Sickened for 1d4 rounds.
Indirect Attack: 4d6 Acid damage; Fortitude save DC:12 or Sickened for 1d4 rounds.
Creatures within 20 ft of impact: 4d6 Acid damage; Fortitude save DC:12 or Sickened for 1d4 rounds.', 750, N'Bomb', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1996, N'Mega-Bomb of Stunning', N'Direct Attack: Ranged touch attack; 30 ft. range. 5d6 Electric damage; Fortitude save DC:14 or Stunned for 1 round.
Indirect Attack: 4d6 Electric damage; Fortitude save DC:12 or Stunned for 1 round.
Creatures within 20 ft of impact: 4d6 Electric damage; Fortitude save DC:12 or Stunned for 1 round.', 750, N'Bomb', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1997, N'Mega-Bomb of Necrosis', N'Direct Attack: Ranged touch attack; 30 ft. range. 5d8 Necrotic damage; Fortitude Save DC:14 or -3 STR for 1 minute.
Indirect Attack: 4d8 Necrotic damage; Fortitude Save DC:12 or -3 STR for 1 minute.
Creatures within 20 ft of impact: 4d8 Necrotic damage; Fortitude Save DC:12 or -3 STR for 1 minute.', 1100, N'Bomb', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1998, N'Mega-Bomb of Evil', N'Direct Attack: Ranged touch attack; 30 ft. range. 5d8 Vile damage; Will Save DC:14 or Frightened for 1 minute.
Indirect Attack: 4d8 Vile damage; Will Save DC:12 or Frightened for 1 minute.
Creatures within 20 ft of impact: 4d8 Vile damage; Will Save DC:12 or Frightened for 1 minute.', 1100, N'Bomb', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (1999, N'Mega-Bomb of Magic', N'Direct Attack: Ranged touch attack; 30 ft. range. 5d8 Magic damage; Will Save DC:14 or Frightened for 1 minute.
Indirect Attack: 4d8 Magic damage; Will Save DC:12 or Frightened for 1 minute.
Creatures within 20 ft of impact: 4d8 Magic damage; Will Save DC:12 or Silenced for 1 minute.', 1100, N'Bomb', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2000, N'Wind Wall Mega-Bomb', N'Direct Attack: Ranged touch attack; 30 ft. range. Creatures within 20 ft of impact make Balance Check DC:12 or Prone
Indirect Attack: Mini Wind Wall, as the spell for 1 minute, area 35 ft wide x 20 ft. high.', 725, N'Bomb', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2001, N'Short Fuse', N'Used to time a delayed explosion; up to 3 rounds.
Info: A swab of cotton rolled into a thread and mixed with two flammable, combustible agents', 10, N'Bomb - Mod', N'Fuse')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2002, N'Antiacid Potion', N'Drink this potion to remove a single food effect', 55, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2003, N'Fire Suppressant', N'Makes a material more difficult to set ablaze. One suppressant covers a 5 ft. x 5 ft. square. Failure rate is approx. 5%', 25, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2004, N'Bee Venom (small)', N'A small dose of venom in a vial. Two of these make a single unit of venom.

Venom from a bee usually debilitates their victim''s wisdom.', 75, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2005, N'Bee Venom (tiny)', N'A tiny amount of Bee Venom. Two of these tiny vials make a unit of Bee Venom (small) and four of these make a standard sized vial of venom.

Venom from a bee usually debilitates their victim''s wisdom.', 38, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2006, N'Venom of Spider (tiny)', N'A tiny amount of venom. Two of these tiny vials make a unit of venom (small) and four of these make a standard sized vial of venom.

Venom from a spider usually debilitates their victim''s strength.', 38, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2007, N'Venom of Centipede (tiny)', N'A tiny amount of venom. Two of these tiny vials make a unit of venom (small) and four of these make a standard sized vial of venom.

Venom from a centipede usually debilitates their victim''s dexterity.', 38, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2008, N'Venom of Fish (tiny)', N'A tiny amount of venom. Two of these tiny vials make a unit of venom (small) and four of these make a standard sized vial of venom.

Venom from a fish usually debilitates their victim''s intelligence.', 38, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2009, N'Venom of Scorpion (tiny)', N'A tiny amount of venom. Two of these tiny vials make a unit of venom (small) and four of these make a standard sized vial of venom.

Venom from a scorpion usually debilitates their victim''s constitution.', 38, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2010, N'Venom of Viper (tiny)', N'A tiny amount of venom. Two of these tiny vials make a unit of venom (small) and four of these make a standard sized vial of venom.

Venom from a viper usually debilitates their victim''s charisma.', 38, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2011, N'Wasp Venom (tiny)', N'A tiny amount of venom. Two of these tiny vials make a unit of venom (small) and four of these make a standard sized vial of venom.

Venom from a wasp usually deals poison damage over time to their victims. ', 38, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2012, N'Wasp Venom (small)', N'A small dose of venom in a vial. Two of these make a single unit of venom.

Venom from a wasp usually deals poison damage over time to their victims. ', 75, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2013, N'Venom of Spider (small)', N'A small dose of venom in a vial. Two of these make a single unit of venom.

Venom from a spider usually debilitates their victim''s strength.', 75, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2014, N'Venom of Centipede (small)', N'A small dose of venom in a vial. Two of these make a single unit of venom.

Venom from a centipede usually debilitates their victim''s dexterity.', 75, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2015, N'Venom of Fish (small)', N'A small dose of venom in a vial. Two of these make a single unit of venom.

Venom from a fish usually debilitates their victim''s intelligence.', 75, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2016, N'Venom of Scorpion (small)', N'A small dose of venom in a vial. Two of these make a single unit of venom.

Venom from a scorpion usually debilitates their victim''s constitution.', 75, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2017, N'Venom of Viper (small)', N'A small dose of venom in a vial. Two of these make a single unit of venom.

Venom from a viper usually debilitates their victim''s charisma.', 75, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2018, N'Pepperoni Pemmican', N'[Stats: +10 to all Tanning profession checks for 4 hours.]
[Decreases time to synthesize a single Tanner item by 1 hour. Stacks to maximum half time. Minimum 1 hour.]', 164, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2019, N'Red Skeleton Cupcake', N'[Stats: +10 to all Boneworking profession checks for 4 hours.]
[Decreases time to synthesize a single Boneworking item by 1 hour. Stacks to maximum half time. Minimum 1 hour.]
', 154, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2020, N'Mindflayer Mocha', N'Recover one use of Bardic Music, Turn/Rebuke Undead, or Gambit use without resting; makes two servings, takes effect in 3 rounds.
', 350, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2021, N'Olde Oakmeal', N' -20% Arcane Spell Failure Chance, -4 Armor Check Penalty, Carrying Capacity STR+4 for 16 hours.', 400, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2022, N'Tokmo Tossed Salad', N'+10 to all Gardening profession checks for 4 hours.
', 160, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2023, N'Stout Stone Soup', N'+10 to all Stonemason profession checks for 4 hours.
Decreases time to synthesize a single Stonemason item by 1 hour. 
Stacks to maximum half time. 
Minimum 1 hour.
', 170, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2024, N'Poutine Supreme', N'+1 to CON, lasts 1 year! (Maximum of +1)]', 1800, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2025, N'TupTukToak', N'Also known as Goulash of Survival; a Dwarven dish served steaming hot!
-20HP instead of -10HP for death, lasts 1 year!
', 1615, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2026, N'Estanna''s Stew', N'Cures 1d8+1 HP per serving. Can be splashed on undead for damage.
', 62, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2027, N'Bashon T-Bone', N'+4 STR for 12 hours.', 385, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2028, N'Dino Steak', N'+4 STR and +4 CON for 4 hours.', 513, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2029, N'Deep Fried Fug Fish', N'+3 to attack, -3 diplomacy for 6 hours.', 262, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2030, N'Eel Roll', N'Change out one feat for another. Takes effect after sleeping/meditating 4 hours.', 400, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2031, N'Garlic Gumbobo', N'+3 to Fortitude and +3 to Reflex Saves & +3 to Swim, +3 Climb for 12 hours.
', 233, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2032, N'Heart Chocolate', N'Increases the Fortitude and Will Save DCs required to resist divine spells cast by you by +2 for 12 hours.
', 205, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2033, N'Lemon Cream Pie', N'Adds 3d6 elemental damage to next elemental spell cast. If unused, lasts 4 hours.', 140, N'Consumable', N'')
GO
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2034, N'Lightning Chocolate', N' Increases the Reflex Save DCs required to resist both divine and arcane spells cast by you by +2 for 12 hours.
', 195, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2035, N'Lucky Lemonade', N'Roll three dice for attack, save, or skill check one time. Take desired result. Lasts until used or 4 hours.', 540, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2036, N'Mushroom Stew', N'+4 to INT and +4 to WIS for 4 hours.', 438, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2037, N'Pikinana', N'Bread stuffed with various meats. A Halfling specialty.
+2 to ALL dice rolls for 4 hours. (Some exceptions apply.) ', 558, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2038, N'Moth Broth', N'+5 to Fortitude saves vs. poison for 4 hours.', 76, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2039, N'Seafood Chowder', N'Swap out 5 skill points for another 5 skill points.', 401, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2040, N'Sound Burst Sweet', N'Sound Burst spell damages 2d8 Sonic instead of 1d8. Lasts 12 hours. This recipe produces 5 mints.', 63, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2041, N'Star Chocolate', N'Increases the Fortitude and Will Save DCs required to resist arcane spells cast by you by +2 for 12 hours.', 220, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2042, N'Starfish Sushi', N'Change out one ‘spell known’ for another. Spontaneous casters only. Takes effect after sleeping/meditating 4 hours.]', 230, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2043, N'War Won Ton Soup', N'+2 to melee damage, Improved Unarmed Strike, Improved Initiative, and Toughness for 12 hours.
', 450, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2044, N'Bat Fang Necklace', N'+1 damage to melee attacks, Listen +2.', 400, N'Necklace', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2045, N'Fish Scale Necklace', N'+2 damage to melee attacks, Swim +3.', 866, N'Necklace', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2046, N'Venom Fang Necklace', N'+2 damage to melee attacks, Climb +3.', 866, N'Necklace', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2047, N'Stinger Necklace', N'+3 damage to melee attacks, +4 Fort Saves vs. Disease.', 1408, N'Necklace', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2048, N'Spine Necklace', N'+4 damage to melee attacks.', 2600, N'Necklace', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2049, N'Sharp Fin Soup', N'+10ft. to swim speed, +3 ranged attack for 2 hours.', 171, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2050, N'Bewitched Melon Juice', N'Recover one level 5 spell without resting; takes effect in 3 rounds.
', 810, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2051, N'Aurora Tea', N'+1 to CHA, lasts 1 year! (Maximum of +1)
', 1750, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2052, N'Bashon Mignon', N'+1 to STR, lasts 1 year! (Maximum of +1)
', 1500, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2053, N'Dwarven Tator Salad', N'DR3/magic and +5 TempHP for 16 hours.
', 254, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2054, N'Eyeball Chowder', N'+1 to INT, lasts 1 year! (Maximum of +1)
', 1645, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2055, N'Oversized Eyeball', N'A giant eyeball of a large creature.', 480, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2056, N'General''s Custard', N'+3 to HP, lasts 1 year! (Maximum of +3 HP)', 1700, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2057, N'Oasis Steak', N'+5 melee weapon damage for 16 hours.
', 365, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2058, N'Salad of Karma', N'+1 to WIS, lasts 1 year! (Maximum of +1)]', 1900, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2059, N'Morel Matsutaki', N'A rare and flavorful type of mushroom.', 210, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2060, N'Steak of Toughnastiness', N'+15 MaxHP for 16 hours. This doesn''t automatically charge your HP.', 280, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2061, N'Dragonite - Buckler Shield', N'Adds 10 lbs and grants 5 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 3000, N'Shield - Buckler - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2062, N'Dragonite - Light Shield', N'Adds 10 lbs and grants 7 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 4400, N'Shield - Light - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2063, N'Dragonite - Heavy Shield', N'Adds 10 lbs and grants 10 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 7200, N'Shield - Heavy - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2064, N'Dragonite - Tower Shield', N'Adds 10 lbs and grants 20 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 8600, N'Shield - Tower - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2065, N'Dragonite - Light Melee Weapon', N'Adds 5 damage on hit. Weapons made with Dragonite can overcome DR/Adamantine', 4400, N'Weapon - Light - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2066, N'Dragonite - 1H Melee Weapon', N'Adds 5 damage on hit. Weapons made with Dragonite can overcome DR/Adamantine', 5800, N'Weapon - 1H - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2067, N'Dragonite - 2H Melee Weapon', N'Adds 5 damage on hit. Weapons made with Dragonite can overcome DR/Adamantine', 7200, N'Weapon - 2H - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2068, N'Bear Trap, Redsteel', N'Can be setup on a wilderness path to do 3d6 damage and immobilize a person.

Search, Disable Device, Open Lock, Reflex Save, Escape Artist, and Str DCs for this trap are all 24.', 320, N'Trap', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2069, N'Bear Trap, Tritanium', N'Can be setup on a wilderness path to do 4d6 damage and immobilize a person.

Search, Disable Device, Open Lock, Reflex Save, Escape Artist, and Str DCs for this trap are all 26.

Tritanium traps overcome DR/Adamantine.', 750, N'Trap', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2070, N'Bear Trap, Nightsteel', N'Can be setup on a wilderness path to do 5d6 damage and immobilize a person.

Search, Disable Device, Open Lock, Reflex Save, Escape Artist, and Str DCs for this trap are all 28.

Nightsteel traps overcome DR/Adamantine.', 1350, N'Trap', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2071, N'Bear Trap, Dragonite', N'Can be setup on a wilderness path to do 6d6 damage and immobilize a person.

Search, Disable Device, Open Lock, Reflex Save, Escape Artist, and Str DCs for this trap are all 30.

Dragonite traps overcome DR/Adamantine.', 2300, N'Trap', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2072, N'Caltrops, Iron', N'Caltrops do 1d4+1 damage when a creature steps in the square occupied by caltrops. They make an attack roll against the creature (at +0 atk), ignoring the creature’s shield, armor, and deflection bonuses. Each bag has enough caltrops to cover a 5x5 ft. square.', 18, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2073, N'Caltrops, Redsteel', N'Caltrops do 1d6+2 damage when a creature steps in the square occupied by caltrops. They make an attack roll against the creature (at +0 atk), ignoring the creature’s shield, armor, and deflection bonuses. Each bag has enough caltrops to cover a 5x5 ft. square.', 55, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2074, N'Caltrops, Tritanium', N'Caltrops do 1d8+3 damage when a creature steps in the square occupied by caltrops. They make an attack roll against the creature (at +0 atk), ignoring the creature’s shield, armor, and deflection bonuses. Each bag has enough caltrops to cover a 5x5 ft. square.

Tritanium Caltrops overcome DR/Adamantine', 137, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2075, N'Caltrops, Nightsteel', N'Caltrops do 1d10+4 damage when a creature steps in the square occupied by caltrops. They make an attack roll against the creature (at +0 atk), ignoring the creature’s shield, armor, and deflection bonuses. Each bag has enough caltrops to cover a 5x5 ft. square.

Nightsteel Caltrops overcome DR/Adamantine', 237, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2076, N'Caltrops, Dragonite', N'Caltrops do 1d12+5 damage when a creature steps in the square occupied by caltrops. They make an attack roll against the creature (at +0 atk), ignoring the creature’s shield, armor, and deflection bonuses. Each bag has enough caltrops to cover a 5x5 ft. square.

Dragonite Caltrops overcome DR/Adamantine', 375, N'Consumable', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2077, N'Dragonite Bracelets', N'Grants 10 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 3000, N'Bracers', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2078, N'Nightsteel - Buckler Shield', N'Adds 10 lbs and grants 4 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 1900, N'Shield - Buckler - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2079, N'Nightsteel - Light Shield', N'Adds 10 lbs and grants 6 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 3000, N'Shield - Light - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2080, N'Nightsteel - Heavy Shield', N'Adds 10 lbs and grants 8 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 5200, N'Shield - Heavy - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2081, N'Nightsteel - Tower Shield', N'Adds 10 lbs and grants 16 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 6300, N'Shield - Tower - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2082, N'Nightsteel - Light Melee Weapon', N'Adds 4 damage on hit. Weapons made with Nightsteel can overcome DR/Adamantine', 3000, N'Weapon - Light - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2083, N'Nightsteel - 1H Melee Weapon', N'Adds 4 damage on hit. Weapons made with Nightsteel can overcome DR/Adamantine', 4100, N'Weapon - 1H - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2084, N'Nightsteel - 2H Melee Weapon', N'Adds 4 damage on hit. Weapons made with Nightsteel can overcome DR/Adamantine', 5200, N'Weapon - 2H - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2085, N'Nightsteel Bracelets', N'Grants 8 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 1900, N'Bracers', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2086, N'Tritanium - Buckler Shield', N'Adds 10 lbs and grants 3 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 1100, N'Shield - Buckler - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2087, N'Tritanium - Light Shield', N'Adds 10 lbs and grants 5 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 1800, N'Shield - Light - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2088, N'Tritanium - Heavy Shield', N'Adds 10 lbs and grants 6 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 3200, N'Shield - Heavy - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2089, N'Tritanium - Tower Shield', N'Adds 10 lbs and grants 12 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 3900, N'Shield - Tower - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2090, N'Tritanium - Light Melee Weapon', N'Adds 3 damage on hit. Weapons made with Tritanium can overcome DR/Adamantine', 1800, N'Weapon - Light - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2091, N'Tritanium - 1H Melee Weapon', N'Adds 3 damage on hit. Weapons made with Tritanium can overcome DR/Adamantine', 2500, N'Weapon - 1H - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2092, N'Tritanium - 2H Melee Weapon', N'Adds 3 damage on hit. Weapons made with Tritanium can overcome DR/Adamantine', 3200, N'Weapon - 2H - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2093, N'Tritanium Bracelets', N'Grants 6 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 1100, N'Bracers', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2094, N'Redsteel - Buckler Shield', N'Adds 10 lbs and grants 2 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 440, N'Shield - Buckler - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2095, N'Redsteel - Light Shield', N'Adds 10 lbs and grants 3 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 680, N'Shield - Light - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2096, N'Redsteel - Heavy Shield', N'Adds 10 lbs and grants 4 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 1160, N'Shield - Heavy - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2097, N'Redsteel - Tower Shield', N'Adds 10 lbs and grants 8 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 1400, N'Shield - Tower - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2098, N'Redsteel - Light Melee Weapon', N'Adds 2 damage on hit. ', 680, N'Weapon - Light - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2099, N'Redsteel - 1H Melee Weapon', N'Adds 2 damage on hit. ', 920, N'Weapon - 1H - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2100, N'Redsteel - 2H Melee Weapon', N'Adds 2 damage on hit. ', 1160, N'Weapon - 2H - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2101, N'Redsteel Bracelets', N'Grants 4 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 440, N'Bracers', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2102, N'Iron - Buckler Shield', N'Adds 10 lbs and grants 1 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 200, N'Shield - Buckler - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2103, N'Iron - Light Shield', N'Adds 10 lbs and grants 2 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 150, N'Shield - Light - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2104, N'Iron - Heavy Shield', N'Adds 10 lbs and grants 2 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 300, N'Shield - Heavy - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2105, N'Iron - Tower Shield', N'Adds 10 lbs and grants 4 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 350, N'Shield - Tower - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2106, N'Iron - Light Melee Weapon', N'Adds 1 damage on hit. ', 200, N'Weapon - Light - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2107, N'Iron - 1H Melee Weapon', N'Adds 1 damage on hit. ', 250, N'Weapon - 1H - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2108, N'Iron - 2H Melee Weapon', N'Adds 1 damage on hit. ', 300, N'Weapon - 2H - Mod', N'Blacksmithing')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2109, N'Iron Bracelets', N'Grants 2 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 150, N'Bracers', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2110, N'Spirit Orb (1st Circle) [Crab]', N'', 690, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2111, N'Defending 1H Weapon +1', N'Allows you to trade 1 of your weapon’s damage bonus for AC [Enhancement Bonus] as a free action', 1480, N'Weapon - 1H - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2112, N'Defending 2H Weapon +1', N'Allows you to trade 1 of your weapon’s damage bonus for AC [Enhancement Bonus] as a free action
', 1480, N'Weapon - 2H - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2113, N'Defending Light Weapon +1', N'Allows you to trade 1 of your weapon’s damage bonus for AC [Enhancement Bonus] as a free action', 1480, N'Weapon - Light - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2114, N'Spirit Orb (1st Circle) [Blood Grub]', N'', 690, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2115, N'Spirit Orb (1st Circle) [Blackwolf]', N'', 690, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2116, N'Defending 1H Weapon +2', N'Allows you to trade 2 of your weapon’s damage bonus for AC [Enhancement Bonus] as a free action', 2960, N'Weapon - 1H - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2117, N'Defending 2H Weapon +2', N'Allows you to trade 2 of your weapon’s damage bonus for AC [Enhancement Bonus] as a free action
', 2960, N'Weapon - 2H - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2118, N'Defending Light Weapon +2', N'Allows you to trade 2 of your weapon’s damage bonus for AC [Enhancement Bonus] as a free action', 2960, N'Weapon - Light - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2119, N'Defending 1H Weapon +3', N'Allows you to trade 3 of your weapon’s damage bonus for AC [Enhancement Bonus] as a free action', 4540, N'Weapon - 1H - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2120, N'Defending 2H Weapon +3', N'Allows you to trade 3 of your weapon’s damage bonus for AC [Enhancement Bonus] as a free action
', 4540, N'Weapon - 2H - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2121, N'Defending Light Weapon +3', N'Allows you to trade 3 of your weapon’s damage bonus for AC [Enhancement Bonus] as a free action', 4540, N'Weapon - Light - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2122, N'Defending 1H Weapon +4', N'Allows you to trade 4 of your weapon’s damage bonus for AC [Enhancement Bonus] as a free action', 6320, N'Weapon - 1H - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2123, N'Defending 2H Weapon +4', N'Allows you to trade 4 of your weapon’s damage bonus for AC [Enhancement Bonus] as a free action
', 6320, N'Weapon - 2H - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2124, N'Defending Light Weapon +4', N'Allows you to trade 4 of your weapon’s damage bonus for AC [Enhancement Bonus] as a free action', 6320, N'Weapon - Light - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2125, N'Defending 1H Weapon +5', N'Allows you to trade 5 of your weapon’s damage bonus for AC [Enhancement Bonus] as a free action', 7600, N'Weapon - 1H - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2126, N'Defending 2H Weapon +5', N'Allows you to trade 5 of your weapon’s damage bonus for AC [Enhancement Bonus] as a free action
', 7600, N'Weapon - 2H - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2127, N'Defending Light Weapon +5', N'Allows you to trade 5 of your weapon’s damage bonus for AC [Enhancement Bonus] as a free action', 7600, N'Weapon - Light - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2128, N'Vengence 1H Weapon +1', N'Once per round, you may make one attack of opportunity with a +1 bonus to attack and damage against an enemy that has damaged you.', 1480, N'Weapon - 1H - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2129, N'Vengence 2H Weapon +1', N'Once per round, you may make one attack of opportunity with a +1 bonus to attack and damage against an enemy that has damaged you.
', 1480, N'Weapon - 2H - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2130, N'Vengence Light Weapon +1', N'Once per round, you may make one attack of opportunity with a +1 bonus to attack and damage against an enemy that has damaged you.', 1480, N'Weapon - Light - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2131, N'Vengence 1H Weapon +2', N'Once per round, you may make one attack of opportunity with a +2 bonus to attack and damage against an enemy that has damaged you.', 2960, N'Weapon - 1H - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2132, N'Vengence 2H Weapon +2', N'Once per round, you may make one attack of opportunity with a +2 bonus to attack and damage against an enemy that has damaged you.
', 2960, N'Weapon - 2H - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2133, N'Vengence Light Weapon +2', N'Once per round, you may make one attack of opportunity with a +2 bonus to attack and damage against an enemy that has damaged you.', 2960, N'Weapon - Light - Mod', N'Magic')
GO
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2134, N'Vengence 1H Weapon +3', N'Once per round, you may make one attack of opportunity with a +3 bonus to attack and damage against an enemy that has damaged you.', 4540, N'Weapon - 1H - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2135, N'Vengence 2H Weapon +3', N'Once per round, you may make one attack of opportunity with a +3 bonus to attack and damage against an enemy that has damaged you.
', 4540, N'Weapon - 2H - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2136, N'Vengence Light Weapon +3', N'Once per round, you may make one attack of opportunity with a +3 bonus to attack and damage against an enemy that has damaged you.', 4540, N'Weapon - Light - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2137, N'Vengence 1H Weapon +4', N'Once per round, you may make one attack of opportunity with a +4 bonus to attack and damage against an enemy that has damaged you.', 6320, N'Weapon - 1H - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2138, N'Vengence 2H Weapon +4', N'Once per round, you may make one attack of opportunity with a +4 bonus to attack and damage against an enemy that has damaged you.
', 6320, N'Weapon - 2H - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2139, N'Vengence Light Weapon +4', N'Once per round, you may make one attack of opportunity with a +4 bonus to attack and damage against an enemy that has damaged you.', 6320, N'Weapon - Light - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2140, N'Vengence 1H Weapon +5', N'Once per round, you may make one attack of opportunity with a +5 bonus to attack and damage against an enemy that has damaged you.', 7600, N'Weapon - 1H - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2141, N'Vengence 2H Weapon +5', N'Once per round, you may make one attack of opportunity with a +5 bonus to attack and damage against an enemy that has damaged you.
', 7600, N'Weapon - 2H - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2142, N'Vengence Light Weapon +5', N'Once per round, you may make one attack of opportunity with a +5 bonus to attack and damage against an enemy that has damaged you.', 7600, N'Weapon - Light - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2143, N'Carnage 1H Weapon +1', N'Once per round as part of your standard attack, you may add
2d6+1 bonus to damage to your attack but also receive 1d6 damage in return.', 1480, N'Weapon - 1H - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2144, N'Carnage 2H Weapon +1', N'Once per round as part of your standard attack, you may add
2d6+1 bonus to damage to your attack but also receive 1d6 damage in return.
', 1480, N'Weapon - 2H - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2145, N'Carnage Light Weapon +1', N'Once per round as part of your standard attack, you may add
2d6+1 bonus to damage to your attack but also receive 1d6 damage in return.', 1480, N'Weapon - Light - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2146, N'Carnage 1H Weapon +2', N'Once per round as part of your standard attack, you may add
2d6+2 bonus to damage to your attack but also receive 1d6 damage in return.', 2960, N'Weapon - 1H - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2147, N'Carnage 2H Weapon +2', N'Once per round as part of your standard attack, you may add
2d6+2 bonus to damage to your attack but also receive 1d6 damage in return.
', 2960, N'Weapon - 2H - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2148, N'Carnage Light Weapon +2', N'Once per round as part of your standard attack, you may add
2d6+2 bonus to damage to your attack but also receive 1d6 damage in return.', 2960, N'Weapon - Light - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2149, N'Carnage 1H Weapon +3', N'Once per round as part of your standard attack, you may add
2d6+3 bonus to damage to your attack but also receive 1d6 damage in return.', 4540, N'Weapon - 1H - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2150, N'Carnage 2H Weapon +3', N'Once per round as part of your standard attack, you may add
2d6+3 bonus to damage to your attack but also receive 1d6 damage in return.
', 4540, N'Weapon - 2H - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2151, N'Carnage Light Weapon +3', N'Once per round as part of your standard attack, you may add
2d6+3 bonus to damage to your attack but also receive 1d6 damage in return.', 4540, N'Weapon - Light - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2152, N'Carnage 1H Weapon +4', N'Once per round as part of your standard attack, you may add
2d6+4 bonus to damage to your attack but also receive 1d6 damage in return.', 6320, N'Weapon - 1H - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2153, N'Carnage 2H Weapon +4', N'Once per round as part of your standard attack, you may add
2d6+4 bonus to damage to your attack but also receive 1d6 damage in return.
', 6320, N'Weapon - 2H - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2154, N'Carnage Light Weapon +4', N'Once per round as part of your standard attack, you may add
2d6+4 bonus to damage to your attack but also receive 1d6 damage in return.', 6320, N'Weapon - Light - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2155, N'Carnage 1H Weapon +5', N'Once per round as part of your standard attack, you may add
2d6+5 bonus to damage to your attack but also receive 1d6 damage in return.', 7600, N'Weapon - 1H - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2156, N'Carnage 2H Weapon +5', N'Once per round as part of your standard attack, you may add
2d6+5 bonus to damage to your attack but also receive 1d6 damage in return.
', 7600, N'Weapon - 2H - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2157, N'Carnage Light Weapon +5', N'Once per round as part of your standard attack, you may add
2d6+5 bonus to damage to your attack but also receive 1d6 damage in return.', 7600, N'Weapon - Light - Mod', N'Magic')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2158, N'Duskwolf Pelt', N'', 530, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2159, N'Bear Trap - Pinewood', N'Increases the search DC for the trap by 2', 104, N'Trap - Mod', N'Alchemy')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2160, N'Bear Trap - Romanov', N'Increases the search DC for the trap by 4', 116, N'Trap - Mod', N'Alchemy')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2161, N'Bear Trap - Lucky', N'Increases the search DC for the trap by 6', 284, N'Trap - Mod', N'Alchemy')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2162, N'Bear Trap - Chamelyanis', N'Increases the search DC for the trap by 8', 600, N'Trap - Mod', N'Alchemy')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2163, N'Bear Trap - Terra', N'Increases the search DC for the trap by 10', 1100, N'Trap - Mod', N'Alchemy')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2164, N'Bear Trap - Mistletoe', N'Increases the search DC for the trap by 12', 2300, N'Trap - Mod', N'Alchemy')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2165, N'Bear Trap - Copper', N'Increases the disable device DC for the trap by 2', 120, N'Trap - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2166, N'Bear Trap - Brass', N'Increases the disable device DC for the trap by 4', 150, N'Trap - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2167, N'Bear Trap - Silver', N'Increases the disable device DC for the trap by 6', 550, N'Trap - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2168, N'Bear Trap - Gold', N'Increases the disable device DC for the trap by 8', 1100, N'Trap - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2169, N'Bear Trap - Platinum', N'Increases the disable device DC for the trap by 10', 2800, N'Trap - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2170, N'Bear Trap - Moonlight', N'Increases the disable device DC for the trap by 12', 6100, N'Trap - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2171, N'Bear Trap - Birch', N'Increases the reflex save DC for the trap by 2', 105, N'Trap - Mod', N'Carpentry')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2172, N'Bear Trap - Elm', N'Increases the reflex save DC for the trap by 4', 300, N'Trap - Mod', N'Carpentry')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2173, N'Bear Trap - Rosewood', N'Increases the reflex save DC for the trap by 6', 500, N'Trap - Mod', N'Carpentry')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2174, N'Bear Trap - Brittany', N'Increases the reflex save DC for the trap by 8', 1400, N'Trap - Mod', N'Carpentry')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2175, N'Bear Trap - Olde Oak', N'Increases the reflex save DC for the trap by 10', 2300, N'Trap - Mod', N'Carpentry')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2176, N'Bear Trap - Mahogany', N'Increases the reflex save DC for the trap by 12', 3600, N'Trap - Mod', N'Carpentry')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2177, N'Bear Trap - Rabbit', N'Increases the escape artist DC for the trap by 2', 120, N'Trap - Mod', N'Tanner')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2178, N'Bear Trap - Pantheron', N'Increases the escape artist DC for the trap by 4', 160, N'Trap - Mod', N'Tanner')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2179, N'Bear Trap - Swiftcow', N'Increases the escape artist DC for the trap by 6', 300, N'Trap - Mod', N'Tanner')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2180, N'Bear Trap - Jackalope', N'Increases the escape artist DC for the trap by 8', 700, N'Trap - Mod', N'Tanner')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2181, N'Bear Trap - Demon Husk', N'Increases the escape artist DC for the trap by 10', 1466, N'Trap - Mod', N'Tanner')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2182, N'Bear Trap - Dragon Skin', N'Increases the escape artist DC for the trap by 12', 5000, N'Trap - Mod', N'Tanner')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2183, N'Belt of Temporary Toughness', N'Grants 3 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 190, N'Belt', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2184, N'Belt of Temporary Tougherness', N'Grants 6 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 595, N'Belt', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2185, N'Belt of Temporary Toughestness', N'Grants 9 TempHP that is lost first when you take damage.  It can be repaired using a mending spell for 1 HP or a Make Whole spell for 2d8+level HP.', 1750, N'Belt', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2186, N'Cold Iron Ingot', N'Same stats as regular iron. Used for overcoming damage reduction against certain creatures', 60, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2187, N'Army Boots', N'+1 Attack when Charging opponent', 250, N'Boots', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2188, N'Light Brigade Boots', N'+1 Movement when Charging opponent', 270, N'Boots', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2189, N'Battlestrider Boots', N'+1 Movement in Medium or Heavy Armor', 1430, N'Boots', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2190, N'Spirit Orb (1st Circle) [Swiftcow]', N'', 690, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2191, N'Swift-Move Boots', N'Take another move action as a swift action. 1/minute', 800, N'Boots', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2192, N'Shoes of Spider Climbing', N'Constant Balance +2
10 charges of Spider Climb

Recharge with spider webs, (1 web = 1 charge)', 1500, N'Boots', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2193, N'Spirit Orb (1st Circle) [Medium Monstrous Spider]', N'', 690, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2194, N'Serpent Longsword', N'+1 damage, instant summon up to 3 snakes on hit. 1 charge/hour', 0, N'Weapon - 1H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2195, N'Spirit Orb (2nd Circle) [Large Viper]', N'', 1290, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2196, N'Uncivilized Helm', N'This primitive helmet totes two horns from a wild animal.
Adds +2 rounds of Rage', 325, N'Headgear', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2197, N'Helm of Tactics', N'1/per min add CHA mod to ally’s roll one of:
-Damage roll when flanking. 
-Critical hit confirmation.
-AC while charging.
Swift action, lasts 1 round, 60 ft. range', 865, N'Headgear', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2198, N'Circlet of the Third Eye', N'As the spell See Invisibility for 30 minutes, uses Emerald Shards to recharge.', 1300, N'Headgear', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2199, N'Soul Pebbles', N'This handful of jewel pebbles are colored every colour and are extremly rare. They faintly radiate the power of all elements and ability scores.

Unlike what the name would imply it does not contain the soul of anyone.', 5000, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2200, N'Soul Shard', N'This sharp jewel fragment is colored every colour and are extremly rare. It faintly radiate the power of all elements and ability scores.

Unlike what the name would imply it does not contain the soul of anyone.', 10000, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2201, N'Soul Gem', N'This solid jewel is colored every colour and is extremly rare. It radiates the power of all elements and ability scores.

Unlike what the name would imply it does not contain the soul of anyone.', 50000, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2202, N'Masterwork Weapon', N'A masterwork weapon is a finely crafted version of a normal weapon. Wielding it provides a +1 bonus on attack rolls.', 300, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2203, N'Masterwork Armor/Shield', N'Such a well-made item functions like the normal version, except that its armor check penalty is lessened by 1.

The masterwork quality of a suit of armor or shield never provides a bonus on attack or damage rolls, even if the armor or shield is used as a weapon.', 150, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2204, N'Brawler Boots', N'To use this item you must have feat Improved Unarmed Strike
Grants +1 Movement, +1 atk, +1 dmg to unarmed strikes', 460, N'Boots', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2205, N'Healer Moccasins', N'To use these boots you must be able to cast Cure Light Wounds.
You can move 10ft, (2 squares) whenever you cast a Cure Light Wounds spell.  This movement can be taken before or after the cure is cast and provokes attacks of opportunity as normal.', 430, N'Boots', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2206, N'Nimble Boots', N'+1 Movement', 1780, N'Boots', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2207, N'Scout Boots', N'+2 Movement when charging opponent, +1 Tumble', 2770, N'Boots', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2208, N'Thieves Boots', N'To use these boots you need to be wearing light or medium armor and you have to have at least a +6 bonus to a skill in one of bluff, disguise, escape artist, forgery, or sleight of hand', 3650, N'Boots', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2209, N'Cavalier Boots', N'You must be wearing in medium or heavy armor and armed with a medium, heavy or tower shield to use these boots.
+2 Movement, +5 TempHP', 5900, N'Boots', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2210, N'Triple A Shoes', N'To use these boots you have to have all three of the feats Acrobatic, Agile, and Atheletic.
+2 Movement, +3 to Climb, Swim, Jump, Tumble, Balance & Escape Artist', 1620, N'Boots', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2211, N'Speed Demon Shoes', N'Set your move speed to 10 tiles, (50ft) for 1 move action. 1/minute', 4764, N'Boots', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2212, N'Phantom Sandals', N'To use these boots you have to be wearing light or medium armor and you have to have the feat Mobility.
Grants +2 Movement, Evasion (Ex), Improved Initiative', 8390, N'Boots', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2213, N'Boots of the Tracker', N'+2 Movement', 14000, N'Boots', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2214, N'Shoes of the Rage Mage', N'To use these boots you have to have Scorching Ray, Magic Missile, and Detect Magic on your ''Spells Known'' list.
+3 Movement, Ability to Rage once a day', 12355, N'Boots', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2215, N'Spirit Orb (3rd Circle) [Trailspringer]', N'', 2390, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2216, N'Gladiator Boots', N'To use these boots you need to know the Man-of-War Techniques Fire Blade, Blinding Blade and Voltaic Viper Strike.
+3 Movement, Fire Blade 1/day, Blinding Blade 1/day, Voltaic Viper Strike 1/day', 11790, N'Boots', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2217, N'Spirit Orb (4th circle) [Sandstrider]', N'', 3690, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2218, N'Fleur du Mal', N'', 3000, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2219, N'Spirit Orb (2nd Circle) [Blink Dog]', N'', 1290, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2220, N'Protection Boots', N'To use these boots you have to have more than 70HP at full health.
 +3 Movement , DR2/magic', 11650, N'Boots', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2221, N'Spirit Orb (4th circle) [Beat Boar]', N'', 3690, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2222, N'Dimensional Loafers', N'You may teleport, like the spell Dimension Door, as a standard action. 100 ft. range, no more than 10 ft. higher or lower than your current position. 1/minute', 13255, N'Boots', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2223, N'Unicorn Horn', N'', 880, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2224, N'Spirit Orb (4th circle) [Plumpkin Sorcerer]', N'', 3690, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2225, N'Wyvern Boots', N' +3 Movement, DR3/magic, +10 TempHP, +2 AC [Magic]', 44690, N'Boots', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2226, N'Spirit Orb (5th Circle) [Tribronodon]', N'', 5490, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2227, N'Boots of Teleportation', N' Teleport as 10th level caster, 1/day', 30180, N'Boots', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2228, N'Spirit Orb (5th Circle) [Spectral Lantern]', N'', 5490, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2229, N'Boots of the Wildling', N'To use these boots you must know Muhakkee Axe Throwing Technique, Boraz Greataxe Toss, Earthquake Strike, Mighty Strike, and Grapple Guru 
+4 Movement, Move 50 ft. as a swift action, 1/minute', 31180, N'Boots', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2230, N'Spirit Orb (5th Circle) [Trembull]', N'', 5490, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2231, N'Boots of the Airbender', N'To use these boots you must have the feats Improved Unarmed Strike, Improved Grapple, and Mobility.
+4 Movement, Jump 25 ft. in any direction as a move action 1/minute.', 33400, N'Boots', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2232, N'Cold Iron - 1H Melee Weapon', N'Adds 1 damage on hit and overcomes the damage reduction on some Chaotic creatures.

The damage does not stack from other blacksmithing mods, but applying both mods does allow for the higher damage number to be used and the weapon still counts as cold iron for damage reduction.', 460, N'Weapon - 1H - Mod', N'Blacksmithing - Cold Iron')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2233, N'Cold Iron - 2H Melee Weapon', N'Adds 1 damage on hit and overcomes the damage reduction on some Chaotic creatures.

The damage does not stack from other blacksmithing mods, but applying both mods does allow for the higher damage number to be used and the weapon still counts as cold iron for damage reduction.', 580, N'Weapon - 2H - Mod', N'Blacksmithing - Cold Iron')
GO
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2234, N'Cold Iron - Light Melee Weapon', N'Adds 1 damage on hit and overcomes the damage reduction on some Chaotic creatures.

The damage does not stack from other blacksmithing mods, but applying both mods does allow for the higher damage number to be used and the weapon still counts as cold iron for damage reduction.
', 340, N'Weapon - Light - Mod', N'Blacksmithing - Cold Iron')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2235, N'Carnivore Cranium', N'', 250, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2236, N'Spirit Orb (1st Circle) [Saw Moose Female]', N'', 690, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2237, N'Ruby - Light Armor', N'Set of gems for light armor. Grants Fire resist. 
Does nothing without the jewelcrafting metal.', 1000, N'Armor - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2238, N'Polarcrystal - Light Armor', N'Set of gems for light armor. Grants Cold resist. 
Does nothing without the jewelcrafting metal.', 1000, N'Armor - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2239, N'Emerald - Light Armor', N'Set of gems for light armor. Grants Sonic resist. 
Does nothing without the jewelcrafting metal.', 1000, N'Armor - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2240, N'Topaz - Light Armor', N'Set of gems for light armor. Grants Earth resist. 
Does nothing without the jewelcrafting metal.', 1000, N'Armor - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2241, N'Amethyst - Light Armor', N'Set of gems for light armor. Grants Electric resist. 
Does nothing without the jewelcrafting metal.', 1000, N'Armor - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2242, N'Sapphire - Light Armor', N'Set of gems for light armor. Grants Acid resist. 
Does nothing without the jewelcrafting metal.', 1000, N'Armor - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2243, N'Opal - Light Armor', N'Set of gems for light armor. Grants Vile resist. 
Does nothing without the jewelcrafting metal.', 3500, N'Armor - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2244, N'Kronus - Light Armor', N'Set of gems for light armor. Grants Necrotic resist. 
Does nothing without the jewelcrafting metal.', 3500, N'Armor - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2245, N'Diamond - Light Armor', N'Set of gems for light armor. Grants Radiant resist. 
Does nothing without the jewelcrafting metal.', 3500, N'Armor - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2246, N'Garnet - Light Armor', N'Set of gems for light armor. Grants Magic resist. 
Does nothing without the jewelcrafting metal.', 3500, N'Armor - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2247, N'Soul - Light Armor', N'Set of gems for light armor. Grants All Elemental resists (Fire, Cold, Sonic, Earth, Electric, Acid, Vile, Necrotic, Radiant, and Magic damage.) 
Does nothing without the jewelcrafting metal.
', 50000, N'Armor - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2248, N'Antlion Cocoon', N'A silky cocoon which contains a baby antlion. The silk has value, the baby does not.', 100, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2249, N'Bally Fleece', N'This fleece is taken from the body of a Bally. A Bally can produce about one unit of fleece in 5 days. ', 35, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2250, N'Robe/Cape of Burning Hands', N'This dark red robe appears to have faint glowing specks of red and orange woven within its fabric. The wearer of this robe can cast up to 3 Burning Hands spells per day. 

Once ten spells (the one infused into the robe) are cast, the spell’s power infuses itself into the wearer. The caster may then cast one of this particular spell per day as a bonus spell. In addition, the wearers of these robes are able to cast and prepare a number of additional spells from their own spell list.

[Stats: +3 Burning Hands spells per day, and extra level-0, level-1, level-2 spells per day]
', 1830, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2251, N'Spirit Orb (2nd Circle) [Plumpkin]', N'', 1290, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2252, N'Spirit Orb (2nd Circle) [Bingsakana]', N'', 1290, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2253, N'Spirit Orb (2nd Circle) [Dungeon Fly]', N'', 1290, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2254, N'Spirit Orb (2nd Circle) [Shard Wasp]', N'', 1290, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2255, N'Spirit Orb (2nd Circle) [Shockhopper]', N'', 1290, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2256, N'Spirit Orb (2nd Circle) [Crying Cod]', N'', 1290, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2257, N'Spirit Orb (2nd Circle) [Mitzvah Bat]', N'', 1290, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2258, N'Robe/Cape of Ice Dagger', N'This dark aqua-colored robe has what appear to be snow crystals emanating from the bottom.
The wearer of this robe can cast up to 3 Ice Dagger spells per day. (Spell Compendium p.118)

Once ten spells (the one infused into the robe) are cast, the spell’s power infuses itself into the wearer. The caster may then cast one of this particular spell per day as a bonus spell. In addition, the wearers of these robes are able to cast and prepare a number of additional spells from their own spell list.

[Stats: +3 Ice Dagger spells per day, and extra level-0, level-1, level-2 spells per day]', 1830, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2259, N'Robe/Cape of Expeditious Retreat', N'This light green robe has dark green spiral patterns on the bottom. Faint green glowing specks sparkle throughout.
The wearer of this robe can cast up to 3 Expeditious Retreat spells per day.

Once ten spells (the one infused into the robe) are cast, the spell’s power infuses itself into the wearer. The caster may then cast one of this particular spell per day as a bonus spell. In addition, the wearers of these robes are able to cast and prepare a number of additional spells from their own spell list.

[Stats: +3 Expeditious Retreat spells per day, and extra level-0, level-1, level-2 spells per day]', 1830, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2260, N'Robe/Cape of Hail of Stone', N'This dark brown robe appears to be perpetually covered in mud. Dust clouds seem to follow it around.
The wearer of this robe can cast up to 3 Hail of Stone spells per day. (Spell Compendium p.108)

Once ten spells (the one infused into the robe) are cast, the spell’s power infuses itself into the wearer. The caster may then cast one of this particular spell per day as a bonus spell. In addition, the wearers of these robes are able to cast and prepare a number of additional spells from their own spell list.

[Stats: +3 Hail of Stone spells per day, and extra level-0, level-1, level-2 spells per day]', 1830, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2261, N'Robe/Cape of Thunderhead', N'This black and purple robe has lightning patterns covering it.
The wearer of this robe can cast up to 3 Thunderhead spells per day. (Spell Compendium p.219)

Once ten spells (the one infused into the robe) are cast, the spell’s power infuses itself into the wearer. The caster may then cast one of this particular spell per day as a bonus spell. In addition, the wearers of these robes are able to cast and prepare a number of additional spells from their own spell list.

[Stats: +3 Thunderhead spells per day, and extra level-0, level-1, level-2 spells per day]', 1830, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2262, N'Robe/Cape of Lesser Acid Orb', N'This deep blue robe is covered with dark blue circular patterns, like bubbles.
The wearer of this robe can cast up to 3 Lesser Orb of Acid spells per day. (Spell Compendium p.150)

Once ten spells (the one infused into the robe) are cast, the spell’s power infuses itself into the wearer. The caster may then cast one of this particular spell per day as a bonus spell. In addition, the wearers of these robes are able to cast and prepare a number of additional spells from their own spell list.

[Stats: +3 Lesser Orb of Acid spells per day, and extra level-0, level-1, level-2 spells per day]', 1830, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2263, N'Robe/Cape of Cure Light Wounds', N'The white color of this robe seems to give hope to those who look upon the wearer.
The wearer of this robe can cast up to 3 Cure Light Wounds spells per day.

Once ten spells (the one infused into the robe) are cast, the spell’s power infuses itself into the wearer. The caster may then cast one of this particular spell per day as a bonus spell. In addition, the wearers of these robes are able to cast and prepare a number of additional spells from their own spell list.

[Stats: +3 Cure Light Wounds spells per day, and extra level-0, level-1, level-2 spells per day]

', 2080, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2264, N'Robe/Cape of Ray of Enfeeblement', N'The black color of this robe seems to exude malice to those who look upon the wearer.
The wearer of this robe can cast up to 3 Ray of Enfeeblement spells per day.

Once ten spells (the one infused into the robe) are cast, the spell’s power infuses itself into the wearer. The caster may then cast one of this particular spell per day as a bonus spell. In addition, the wearers of these robes are able to cast and prepare a number of additional spells from their own spell list.

[Stats: +3 Ray of Enfeeblement spells per day, and extra level-0, level-1, level-2 spells per day]
', 2080, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2265, N'Robe/Cape of Magic Missile', N'This Fuchsia colored robe is covered in triangles. 
The wearer of this robe can cast up to 3 Magic Missile spells per day.

Once ten spells (the one infused into the robe) are cast, the spell’s power infuses itself into the wearer. The caster may then cast one of this particular spell per day as a bonus spell. In addition, the wearers of these robes are able to cast and prepare a number of additional spells from their own spell list.

[Stats: +3 Magic Missile spells per day, and extra level-0, level-1, level-2 spells per day]', 2080, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2266, N'Spirit Orb (2nd Circle) [Sage Owl]', N'', 1290, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2267, N'Spirit Orb (2nd Circle) [Hex Panther]', N'', 1290, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2268, N'Robe/Cape of Cause Fear', N'The brown color of this robe looks like it was found in a tomb. 
The wearer of this robe can cast up to 3 Cause Fear spells per day.

Once ten spells (the one infused into the robe) are cast, the spell’s power infuses itself into the wearer. The caster may then cast one of this particular spell per day as a bonus spell. In addition, the wearers of these robes are able to cast and prepare a number of additional spells from their own spell list.

[Stats: +3 Cause Fear spells per day, and extra level-0, level-1, level-2 spells per day]', 2080, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2269, N'Vibrant Blue Fur', N'This vibrant blue fur has a faint glow to it. If you attach three of these around the neck area of any body slot item such as robes, shirts, or armor, you gain advantage to Reflex Saves vs. Acid Energy (if applicable). It does not take up a space on your neck slot. Fur is also sometimes used as a lining for boots or in other fashion items.', 100, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2270, N'Vibrant Magenta Fur', N'This vibrant magenta fur has a faint glow to it. If you attach three of these around the neck area of any body slot item such as robes, shirts, or armor, you gain advantage to Reflex Saves vs. Magic Energy (if applicable). It does not take up a space on your neck slot. Fur is also sometimes used as a lining for boots or in other fashion items.', 100, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2271, N'Lesser Robe/Cape/Cloak of Energy Resistance', N'This cheap looking burlap robe makes the wearer look like some sort of amateur magic caster.

It protects against one of Fire, Cold, Sonic, Earth Electric or Acid energy, depending on the type of jewels used in its creation. The protection it affords the wearer is +6 of one element type.

When hit with a certain element type associated with the apparel, it auto-cures the wearer for +1d8 HP.

Robes require both a free body and legs slot.
These can also be turned into capes or cloaks. Capes require a free back slot and cloaks require a free back and head slot.

Cloaks give an extra +2 to the auto-cure when hit with a particular energy type.

You can also split these into Pants and Shirts, with each offering half the Energy Resistance of the whole robe/cape/cloak as well as the split of the auto cure.

Shirts require a free body slot to use while pants require a free legs slot to use.
', 1200, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2272, N'Lesser Pants of Energy Resistance', N'This cheap looking pair of burlap pants makes the wearer look like some sort of amateur magic caster. It looks like the creator of this split the materials of a robe, cloak or cape to make this item.

It protects against one of Fire, Cold, Sonic, Earth Electric or Acid energy, depending on the type of gems used in its creation. The protection it affords the wearer is +3 of one element type.

Shirts require a free body slot to use while pants require a free legs slot to use.

When hit with a certain element type associated with the apparel, it auto-cures the wearer for +1d4 HP.', 600, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2273, N'Lesser Shirt of Energy Resistance', N'This cheap looking burlap shirt makes the wearer look like some sort of amateur magic caster. It looks like the creator of this split the materials of a robe, cloak or cape to make this item.

It protects against one of Fire, Cold, Sonic, Earth Electric or Acid energy, depending on the type of gems used in its creation. The protection it affords the wearer is +3 of one element type.

Shirts require a free body slot to use while pants require a free legs slot to use.

When hit with a certain element type associated with the apparel, it auto-cures the wearer for +1d4 HP.
', 600, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2274, N'Lesser Robe/Cape/Cloak of Alterna Energy Resistance', N'This cheap looking burlap robe makes the wearer look like some sort of amateur magic caster.

It protects against one of Radiant, Necrotic, Vile or Magic energy, depending on the type of jewels used in its creation. The protection it affords the wearer is +6 of one element type.

When hit with a certain element type associated with the apparel, it auto-cures the wearer for +1d8 HP.

Robes require both a free body and legs slot.
These can also be turned into capes or cloaks. Capes require a free back slot and cloaks require a free back and head slot.

Cloaks give an extra +2 to the auto-cure when hit with a particular energy type.

You can also split these into Pants and Shirts, with each offering half the Energy Resistance of the whole robe/cape/cloak as well as the split of the auto cure.

Shirts require a free body slot to use while pants require a free legs slot to use.
', 3740, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2275, N'Lesser Shirt of Alterna Energy Resistance', N'This cheap looking burlap shirt makes the wearer look like some sort of amateur magic caster. It looks like the creator of this split the materials of a robe, cloak or cape to make this item.

It protects against one of  Radiant, Necrotic, Vile or Magic energy, depending on the type of gems used in its creation. The protection it affords the wearer is +3 of one element type.

Shirts require a free body slot to use while pants require a free legs slot to use.

When hit with a certain element type associated with the apparel, it auto-cures the wearer for +1d4 HP.
', 1870, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2276, N'Lesser Pants of Alterna Energy Resistance', N'This cheap looking pair of burlap pants makes the wearer look like some sort of amateur magic caster. It looks like the creator of this split the materials of a robe, cloak or cape to make this item.

It protects against one of  Radiant, Necrotic, Vile or Magic energy, depending on the type of gems used in its creation. The protection it affords the wearer is +3 of one element type.

Shirts require a free body slot to use while pants require a free legs slot to use.

When hit with a certain element type associated with the apparel, it auto-cures the wearer for +1d4 HP.
', 1870, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2277, N'Brass - Light Armor', N'Adds 10lbs and grants resist 5 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 10HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 350, N'Armor - Light - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2278, N'Silver - Light Armor', N'Adds 10lbs and grants resist 10 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 20HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 1950, N'Armor - Light - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2279, N'Gold - Light Armor', N'Adds 10lbs and grants resist 15 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 30HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 3900, N'Armor - Light - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2280, N'Platinum - Light Armor', N'Adds 10lbs and grants resist 20 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 40HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 10800, N'Armor - Light - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2281, N'Moonlight - Light Armor', N'Adds 10lbs and grants resist 25 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 50HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 24100, N'Armor - Light - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2282, N'Common Robe/Cape/Cloak of Energy Resistance', N'This robe made of a cotton/silk blend is soft to the touch, and keeps a caster warm through the cold nights.

It protects against one of Fire, Cold, Sonic, Earth Electric or Acid energy, depending on the type of jewels used in its creation. The protection it affords the wearer is +10 of one element type. You may also add more jewels to this apparel to protect against additional elements. 

When hit with a certain element type associated with the apparel, it auto-cures the wearer for +1d8 HP.

Robes require both a free body and legs slot.
These can also be turned into capes or cloaks. Capes require a free back slot and cloaks require a free back and head slot.

Cloaks give an extra +2 to the auto-cure when hit with a particular energy type.

You can also split these into Pants and Shirts, with each offering half the Energy Resistance of the whole robe/cape/cloak as well as the split of the auto cure.

Shirts require a free body slot to use while pants require a free legs slot to use.', 2870, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2283, N'Greater Robe/Cape/Cloak of Energy Resistance', N'The soft silk of a centipede and the husky weight of Big Sheep Wool make for a fine looking and practical robe.

It protects against one of Fire, Cold, Sonic, Earth Electric or Acid energy, depending on the type of jewels used in its creation. The protection it affords the wearer is +16 of one element type. You may also add more jewels to this apparel to protect against additional elements. 

When hit with a certain element type associated with the apparel, it auto-cures the wearer for +1d8 HP.

Robes require both a free body and legs slot.
These can also be turned into capes or cloaks. Capes require a free back slot and cloaks require a free back and head slot.

Cloaks give an extra +2 to the auto-cure when hit with a particular energy type.

You can also split these into Pants and Shirts, with each offering half the Energy Resistance of the whole robe/cape/cloak as well as the split of the auto cure.

Shirts require a free body slot to use while pants require a free legs slot to use.', 4640, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2284, N'Superior Robe/Cape/Cloak of Energy Resistance', N'This robe is as hardy as it is soft. It looks like it would take a strong man or animal to rip this luxurious robe apart.

It protects against one of Fire, Cold, Sonic, Earth Electric or Acid energy, depending on the type of jewels used in its creation. The protection it affords the wearer is +20 of one element type. You may also add more jewels to this apparel to protect against additional elements. 

When hit with a certain element type associated with the apparel, it auto-cures the wearer for +1d8 HP.

Robes require both a free body and legs slot.
These can also be turned into capes or cloaks. Capes require a free back slot and cloaks require a free back and head slot.

Cloaks give an extra +2 to the auto-cure when hit with a particular energy type.

You can also split these into Pants and Shirts, with each offering half the Energy Resistance of the whole robe/cape/cloak as well as the split of the auto cure.

Shirts require a free body slot to use while pants require a free legs slot to use.', 11600, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2285, N'Outstanding Robe/Cape/Cloak of Energy Resistance', N'This robe is the softest you’ve ever felt. It is cool to the touch and very hardy, and even a bit stretchy.

It protects against one of Fire, Cold, Sonic, Earth Electric or Acid energy, depending on the type of jewels used in its creation. The protection it affords the wearer is +26 of one element type. You may also add more jewels to this apparel to protect against additional elements. 

When hit with a certain element type associated with the apparel, it auto-cures the wearer for +4d8 HP.

Robes require both a free body and legs slot.
These can also be turned into capes or cloaks. Capes require a free back slot and cloaks require a free back and head slot.

Cloaks give an extra +2 to the auto-cure when hit with a particular energy type.

You can also split these into Pants and Shirts, with each offering half the Energy Resistance of the whole robe/cape/cloak as well as the split of the auto cure.

Shirts require a free body slot to use while pants require a free legs slot to use.', 23600, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2286, N'Common Robe/Cape/Cloak of Alterna Energy Resistance', N'This robe made of a cotton/silk blend is soft to the touch, and keeps a caster warm through the cold nights.

It protects against one of Radiant, Necrotic, Vile or Magic energy, depending on the type of jewels used in its creation. The protection it affords the wearer is +10 of one element type. You may also add more jewels to this apparel to protect against additional elements. 

When hit with a certain element type associated with the apparel, it auto-cures the wearer for +1d8 HP.

Robes require both a free body and legs slot.
These can also be turned into capes or cloaks. Capes require a free back slot and cloaks require a free back and head slot.

Cloaks give an extra +2 to the auto-cure when hit with a particular energy type.

You can also split these into Pants and Shirts, with each offering half the Energy Resistance of the whole robe/cape/cloak as well as the split of the auto cure.

Shirts require a free body slot to use while pants require a free legs slot to use.', 6620, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2287, N'Greater Robe/Cape/Cloak of Alterna Energy Resistance', N'The soft silk of a centipede and the husky weight of Big Sheep Wool make for a fine looking and practical robe.

It protects against one of Radiant, Necrotic, Vile or Magic energy, depending on the type of jewels used in its creation. The protection it affords the wearer is +16 of one element type. You may also add more jewels to this apparel to protect against additional elements. 

When hit with a certain element type associated with the apparel, it auto-cures the wearer for +2d8 HP.

Robes require both a free body and legs slot.
These can also be turned into capes or cloaks. Capes require a free back slot and cloaks require a free back and head slot.

Cloaks give an extra +2 to the auto-cure when hit with a particular energy type.

You can also split these into Pants and Shirts, with each offering half the Energy Resistance of the whole robe/cape/cloak as well as the split of the auto cure.

Shirts require a free body slot to use while pants require a free legs slot to use.', 9640, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2288, N'Superior Robe/Cape/Cloak of Alterna Energy Resistance', N'This robe is as hardy as it is soft. It looks like it would take a strong man or animal to rip this luxurious robe apart.

It protects against one of Radiant, Necrotic, Vile or Magic energy, depending on the type of jewels used in its creation. The protection it affords the wearer is +20 of one element type. You may also add more jewels to this apparel to protect against additional elements.

When hit with a certain element type associated with the apparel, it auto-cures the wearer for +2d8 HP.

Robes require both a free body and legs slot.
These can also be turned into capes or cloaks. Capes require a free back slot and cloaks require a free back and head slot.

Cloaks give an extra +2 to the auto-cure when hit with a particular energy type.

You can also split these into Pants and Shirts, with each offering half the Energy Resistance of the whole robe/cape/cloak as well as the split of the auto cure.

Shirts require a free body slot to use while pants require a free legs slot to use.', 17850, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2289, N'Outstanding Robe/Cape/Cloak of Alterna Energy Resistance', N'This robe is the softest you’ve ever felt. It is cool to the touch and very hardy, and even a bit stretchy.

It protects against one of Radiant, Necrotic, Vile or Magic energy, depending on the type of jewels used in its creation. The protection it affords the wearer is +26 of one element type. You may also add more jewels to this apparel to protect against additional elements. 

When hit with a certain element type associated with the apparel, it auto-cures the wearer for +4d8 HP.

Robes require both a free body and legs slot.
These can also be turned into capes or cloaks. Capes require a free back slot and cloaks require a free back and head slot.

Cloaks give an extra +2 to the auto-cure when hit with a particular energy type.

You can also split these into Pants and Shirts, with each offering half the Energy Resistance of the whole robe/cape/cloak as well as the split of the auto cure.

Shirts require a free body slot to use while pants require a free legs slot to use.', 31100, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2290, N'Common Shirt of Energy Resistance', N'This shirt is made of a cotton/silk blend is soft to the touch, and keeps a caster warm through the cold nights. It looks like the creator of this split the materials of a robe, cloak or cape to make this item.

It protects against one of Fire, Cold, Sonic, Earth Electric or Acid energy, depending on the type of gems used in its creation. The protection it affords the wearer is +5 of one element type.

Shirts require a free body slot to use while pants require a free legs slot to use.

When hit with a certain element type associated with the apparel, it auto-cures the wearer for +1d4 HP.', 1435, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2291, N'Common Pants of Energy Resistance', N'This pair of pants is made of a cotton/silk blend is soft to the touch, and keeps a caster warm through the cold nights. It looks like the creator of this split the materials of a robe, cloak or cape to make this item.

It protects against one of Fire, Cold, Sonic, Earth Electric or Acid energy, depending on the type of gems used in its creation. The protection it affords the wearer is +5 of one element type.

Shirts require a free body slot to use while pants require a free legs slot to use.

When hit with a certain element type associated with the apparel, it auto-cures the wearer for +1d4 HP.', 1435, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2292, N'Common Pants of Alterna Energy Resistance', N'This pair of pants is made of a cotton/silk blend is soft to the touch, and keeps a caster warm through the cold nights. It looks like the creator of this split the materials of a robe, cloak or cape to make this item.

It protects against one of Radiant, Necrotic, Vile or Magic energy, depending on the type of gems used in its creation. The protection it affords the wearer is +5 of one element type.

Shirts require a free body slot to use while pants require a free legs slot to use.

When hit with a certain element type associated with the apparel, it auto-cures the wearer for +1d4 HP.', 3310, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2293, N'Common Shirt of Alterna Energy Resistance', N'This shirt is made of a cotton/silk blend is soft to the touch, and keeps a caster warm through the cold nights. It looks like the creator of this split the materials of a robe, cloak or cape to make this item.

It protects against one of Radiant, Necrotic, Vile or Magic energy, depending on the type of gems used in its creation. The protection it affords the wearer is +5 of one element type.

Shirts require a free body slot to use while pants require a free legs slot to use.

When hit with a certain element type associated with the apparel, it auto-cures the wearer for +1d4 HP.', 3310, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2294, N'Greater Pants of Energy Resistance', N'The soft silk of a centipede and the husky weight of Big Sheep Wool make for a fine looking and practical pair of pants.

It protects against one of Fire, Cold, Sonic, Earth Electric or Acid energy, depending on the type of gems used in its creation. The protection it affords the wearer is +8 of one element type.

Shirts require a free body slot to use while pants require a free legs slot to use.

When hit with a certain element type associated with the apparel, it auto-cures the wearer for +1d8 HP.', 2320, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2295, N'Greater Shirt of Energy Resistance', N'The soft silk of a centipede and the husky weight of Big Sheep Wool make for a fine looking and practical shirt.

It protects against one of Fire, Cold, Sonic, Earth Electric or Acid energy, depending on the type of gems used in its creation. The protection it affords the wearer is +8 of one element type.

Shirts require a free body slot to use while pants require a free legs slot to use.

When hit with a certain element type associated with the apparel, it auto-cures the wearer for +1d8 HP.
', 2320, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2296, N'Greater Shirt of Alterna Energy Resistance', N'The soft silk of a centipede and the husky weight of Big Sheep Wool make for a fine looking and practical shirt.

It protects against one of Radiant, Necrotic, Vile or Magic  energy, depending on the type of gems used in its creation. The protection it affords the wearer is +8 of one element type.

Shirts require a free body slot to use while pants require a free legs slot to use.

When hit with a certain element type associated with the apparel, it auto-cures the wearer for +1d8 HP.', 4820, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2297, N'Greater Pants of Alterna Energy Resistance', N'The soft silk of a centipede and the husky weight of Big Sheep Wool make for a fine looking and practical pair of pants.

It protects against one of Radiant, Necrotic, Vile or Magic  energy, depending on the type of gems used in its creation. The protection it affords the wearer is +8 of one element type.

Shirts require a free body slot to use while pants require a free legs slot to use.

When hit with a certain element type associated with the apparel, it auto-cures the wearer for +1d8 HP.
', 4820, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2298, N'Superior Pants of Energy Resistance', N'This pair of pants is as hardy as it is soft. It looks like it would take a strong man or animal to rip this luxurious pair of pants apart. It looks like the creator of this split the materials of a robe, cloak or cape to make this item.

It protects against one of Fire, Cold, Sonic, Earth Electric or Acid energy, depending on the type of jewels used in its creation. The protection it affords the wearer is +10 of one element type.

Shirts require a free body slot to use while pants require a free legs slot to use.

When hit with a certain element type associated with the apparel, it auto-cures the wearer for +1d8 HP.', 5800, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2299, N'Superior Pants of Alterna Energy Resistance', N'This pair of pants is as hardy as it is soft. It looks like it would take a strong man or animal to rip this luxurious pair of pants apart. It looks like the creator of this split the materials of a robe, cloak or cape to make this item.

It protects against one of Radiant, Necrotic, Vile or Magic energy, depending on the type of jewels used in its creation. The protection it affords the wearer is +10 of one element type.

Shirts require a free body slot to use while pants require a free legs slot to use.

When hit with a certain element type associated with the apparel, it auto-cures the wearer for +1d8 HP.', 8925, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2300, N'Superior Shirt of Alterna Energy Resistance', N'This shirt is as hardy as it is soft. It looks like it would take a strong man or animal to rip this luxurious shirt apart. It looks like the creator of this split the materials of a robe, cloak or cape to make this item.

It protects against one of Radiant, Necrotic, Vile or Magic energy, depending on the type of jewels used in its creation. The protection it affords the wearer is +10 of one element type.

Shirts require a free body slot to use while pants require a free legs slot to use.

When hit with a certain element type associated with the apparel, it auto-cures the wearer for +1d8 HP.', 8925, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2301, N'Superior Shirt of Energy Resistance', N'This shirt is as hardy as it is soft. It looks like it would take a strong man or animal to rip this luxurious shirt apart. It looks like the creator of this split the materials of a robe, cloak or cape to make this item.

It protects against one of Fire, Cold, Sonic, Earth Electric or Acid energy, depending on the type of jewels used in its creation. The protection it affords the wearer is +10 of one element type.

Shirts require a free body slot to use while pants require a free legs slot to use.

When hit with a certain element type associated with the apparel, it auto-cures the wearer for +1d8 HP.', 8925, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2302, N'Outstanding Pants of Energy Resistance', N'This pair of pants is the softest you’ve ever felt. It is cool to the touch and very hardy, and even a bit stretchy. It looks like the creator of this split the materials of a robe, cloak or cape to make this item.

It protects against one of Fire, Cold, Sonic, Earth Electric or Acid energy, depending on the type of jewels used in its creation. The protection it affords the wearer is +13 of one element type.

Shirts require a free body slot to use while pants require a free legs slot to use.

When hit with a certain element type associated with the apparel, it auto-cures the wearer for +2d8 HP.', 11800, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2303, N'Outstanding Pants of Alterna Energy Resistance', N'This pair of pants is the softest you’ve ever felt. It is cool to the touch and very hardy, and even a bit stretchy. It looks like the creator of this split the materials of a robe, cloak or cape to make this item.

It protects against one of Radiant, Necrotic, Vile or Magic energy, depending on the type of jewels used in its creation. The protection it affords the wearer is +13 of one element type.

Shirts require a free body slot to use while pants require a free legs slot to use.

When hit with a certain element type associated with the apparel, it auto-cures the wearer for +2d8 HP.', 15550, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2304, N'Outstanding Shirt of Alterna Energy Resistance', N'This shirt is the softest you’ve ever felt. It is cool to the touch and very hardy, and even a bit stretchy. It looks like the creator of this split the materials of a robe, cloak or cape to make this item.

It protects against one of Radiant, Necrotic, Vile or Magic energy, depending on the type of jewels used in its creation. The protection it affords the wearer is +13 of one element type.

Shirts require a free body slot to use while pants require a free legs slot to use.

When hit with a certain element type associated with the apparel, it auto-cures the wearer for +2d8 HP.', 15550, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2305, N'Outstanding Shirt of Energy Resistance', N'This shirt is the softest you’ve ever felt. It is cool to the touch and very hardy, and even a bit stretchy. It looks like the creator of this split the materials of a robe, cloak or cape to make this item.

It protects against one of Fire, Cold, Sonic, Earth Electric or Acid energy, depending on the type of jewels used in its creation. The protection it affords the wearer is +13 of one element type.

Shirts require a free body slot to use while pants require a free legs slot to use.

When hit with a certain element type associated with the apparel, it auto-cures the wearer for +2d8 HP.', 11800, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2306, N'Lesser Robe/Cape of Elemental Suppression', N'This apparel grants temporary elemental suppression.
This particular garment protects against one of Fire, Cold, Sonic, Earth Electric or Acid depending on the jewels which were used in its creation.

It absorbs 10 pts. of one energy type, then dissipates.
If it is damaged but has not yet dissipated, you may use Mending and Make Whole spells to repair the damage.
The seamstress creating this garment has the option of turning these into pants and shirts.

Pants and shirts offer 5 pts. of elemental suppression then dissipate.
Robes occupy a torso and legs slot. Capes occupy a back slot. ', 210, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2307, N'Common Robe/Cape of Elemental Suppression', N'This apparel grants temporary elemental suppression.
This particular garment protects against one of Fire, Cold, Sonic, Earth Electric or Acid depending on the jewels which were used in its creation.

It absorbs 20 pts. of one energy type, then dissipates.
If it is damaged but has not yet dissipated, you may use Mending and Make Whole spells to repair the damage.
The seamstress creating this garment has the option of turning these into pants and shirts.

Pants and shirts offer 10 pts. of elemental suppression then dissipate.
Robes occupy a torso and legs slot. Capes occupy a back slot. ', 450, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2308, N'Greater Robe/Cape of Elemental Suppression', N'This apparel grants temporary elemental suppression.
This particular garment protects against one of Fire, Cold, Sonic, Earth Electric or Acid depending on the jewels which were used in its creation.

It absorbs 30 pts. of one energy type, then dissipates.
If it is damaged but has not yet dissipated, you may use Mending and Make Whole spells to repair the damage.
The seamstress creating this garment has the option of turning these into pants and shirts.

Pants and shirts offer 15 pts. of elemental suppression then dissipate.
Robes occupy a torso and legs slot. Capes occupy a back slot. ', 920, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2309, N'Superior Robe/Cape of Elemental Suppression', N'This apparel grants temporary elemental suppression.
This particular garment protects against one of Fire, Cold, Sonic, Earth Electric or Acid depending on the jewels which were used in its creation.

It absorbs 40 pts. of one energy type, then dissipates.
If it is damaged but has not yet dissipated, you may use Mending and Make Whole spells to repair the damage.
The seamstress creating this garment has the option of turning these into pants and shirts.

Pants and shirts offer 20 pts. of elemental suppression then dissipate.
Robes occupy a torso and legs slot. Capes occupy a back slot. ', 2400, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2310, N'Outstanding Robe/Cape of Elemental Suppression', N'This apparel grants temporary elemental suppression.
This particular garment protects against one of Fire, Cold, Sonic, Earth Electric or Acid depending on the jewels which were used in its creation.

It absorbs 50 pts. of one energy type, then dissipates.
If it is damaged but has not yet dissipated, you may use Mending and Make Whole spells to repair the damage.
The seamstress creating this garment has the option of turning these into pants and shirts.

Pants and shirts offer 25 pts. of elemental suppression then dissipate.
Robes occupy a torso and legs slot. Capes occupy a back slot. ', 5100, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2312, N'Lesser Pants of Elemental Suppression', N'This apparel grants temporary elemental suppression.
This particular garment protects against one of Fire, Cold, Sonic, Earth Electric or Acid depending on the jewels which were used in its creation.

If it is damaged but has not yet dissipated, you may use Mending and Make Whole spells to repair the damage.
The seamstress creating this garment has the option of turning these into pants and shirts.

Pants and shirts offer 5 pts. of elemental suppression then dissipate.
Robes occupy a torso and legs slot. Capes occupy a back slot. ', 105, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2313, N'Lesser Shirt of Elemental Suppression', N'This apparel grants temporary elemental suppression.
This particular garment protects against one of Fire, Cold, Sonic, Earth Electric or Acid depending on the jewels which were used in its creation.

If it is damaged but has not yet dissipated, you may use Mending and Make Whole spells to repair the damage.
The seamstress creating this garment has the option of turning these into pants and shirts.

Pants and shirts offer 5 pts. of elemental suppression then dissipate.
Robes occupy a torso and legs slot. Capes occupy a back slot. ', 105, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2314, N'Common Shirt of Elemental Suppression', N'This apparel grants temporary elemental suppression.
This particular garment protects against one of Fire, Cold, Sonic, Earth Electric or Acid depending on the jewels which were used in its creation.

If it is damaged but has not yet dissipated, you may use Mending and Make Whole spells to repair the damage.
The seamstress creating this garment has the option of turning these into pants and shirts.

Pants and shirts offer 10 pts. of elemental suppression then dissipate.
Robes occupy a torso and legs slot. Capes occupy a back slot. ', 225, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2315, N'Common Pants of Elemental Suppression', N'This apparel grants temporary elemental suppression.
This particular garment protects against one of Fire, Cold, Sonic, Earth Electric or Acid depending on the jewels which were used in its creation.

If it is damaged but has not yet dissipated, you may use Mending and Make Whole spells to repair the damage.
The seamstress creating this garment has the option of turning these into pants and shirts.

Pants and shirts offer 10 pts. of elemental suppression then dissipate.
Robes occupy a torso and legs slot. Capes occupy a back slot. 
', 225, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2316, N'Greater Pants of Elemental Suppression', N'This apparel grants temporary elemental suppression.
This particular garment protects against one of Fire, Cold, Sonic, Earth Electric or Acid depending on the jewels which were used in its creation.

If it is damaged but has not yet dissipated, you may use Mending and Make Whole spells to repair the damage.
The seamstress creating this garment has the option of turning these into pants and shirts.

Pants and shirts offer 15 pts. of elemental suppression then dissipate.
Robes occupy a torso and legs slot. Capes occupy a back slot. 
', 460, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2317, N'Greater Shirt of Elemental Suppression', N'This apparel grants temporary elemental suppression.
This particular garment protects against one of Fire, Cold, Sonic, Earth Electric or Acid depending on the jewels which were used in its creation.

If it is damaged but has not yet dissipated, you may use Mending and Make Whole spells to repair the damage.
The seamstress creating this garment has the option of turning these into pants and shirts.

Pants and shirts offer 15 pts. of elemental suppression then dissipate.
Robes occupy a torso and legs slot. Capes occupy a back slot. 
', 460, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2318, N'Superior Pants of Elemental Suppression', N'This apparel grants temporary elemental suppression.
This particular garment protects against one of Fire, Cold, Sonic, Earth Electric or Acid depending on the jewels which were used in its creation.

If it is damaged but has not yet dissipated, you may use Mending and Make Whole spells to repair the damage.
The seamstress creating this garment has the option of turning these into pants and shirts.

Pants and shirts offer 20 pts. of elemental suppression then dissipate.
Robes occupy a torso and legs slot. Capes occupy a back slot. 
', 1200, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2319, N'Superior Shirt of Elemental Suppression', N'This apparel grants temporary elemental suppression.
This particular garment protects against one of Fire, Cold, Sonic, Earth Electric or Acid depending on the jewels which were used in its creation.

If it is damaged but has not yet dissipated, you may use Mending and Make Whole spells to repair the damage.
The seamstress creating this garment has the option of turning these into pants and shirts.

Pants and shirts offer 20 pts. of elemental suppression then dissipate.
Robes occupy a torso and legs slot. Capes occupy a back slot. ', 1200, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2320, N'Outstanding Pants of Elemental Suppression', N'This apparel grants temporary elemental suppression.
This particular garment protects against one of Fire, Cold, Sonic, Earth Electric or Acid depending on the jewels which were used in its creation.

If it is damaged but has not yet dissipated, you may use Mending and Make Whole spells to repair the damage.
The seamstress creating this garment has the option of turning these into pants and shirts.

Pants and shirts offer 25 pts. of elemental suppression then dissipate.
Robes occupy a torso and legs slot. Capes occupy a back slot. ', 2550, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2321, N'Outstanding Shirt of Elemental Suppression', N'This apparel grants temporary elemental suppression.
This particular garment protects against one of Fire, Cold, Sonic, Earth Electric or Acid depending on the jewels which were used in its creation.

If it is damaged but has not yet dissipated, you may use Mending and Make Whole spells to repair the damage.
The seamstress creating this garment has the option of turning these into pants and shirts.

Pants and shirts offer 25 pts. of elemental suppression then dissipate.
Robes occupy a torso and legs slot. Capes occupy a back slot. ', 2550, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2322, N'Lesser Robe/Cape of Alterna Elemental Suppression', N'This apparel grants temporary elemental suppression.
This particular garment protects against one of Radiant, Necrotic, Vile or Magic depending on the jewels which were used in its creation.

It absorbs 10 pts. of one energy type, then dissipates.
If it is damaged but has not yet dissipated, you may use Mending and Make Whole spells to repair the damage.
The seamstress creating this garment has the option of turning these into pants and shirts.

Pants and shirts offer 5 pts. of elemental suppression then dissipate.
Robes occupy a torso and legs slot. Capes occupy a back slot. ', 460, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2323, N'Common Robe/Cape of Alterna Elemental Suppression', N'This apparel grants temporary elemental suppression.
This particular garment protects against one of Radiant, Necrotic, Vile or Magic depending on the jewels which were used in its creation.

It absorbs 20 pts. of one energy type, then dissipates.
If it is damaged but has not yet dissipated, you may use Mending and Make Whole spells to repair the damage.
The seamstress creating this garment has the option of turning these into pants and shirts.

Pants and shirts offer 10 pts. of elemental suppression then dissipate.

Robes occupy a torso and legs slot. Capes occupy a back slot. ', 950, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2324, N'Greater Robe/Cape of Alterna Elemental Suppression', N'This apparel grants temporary elemental suppression.
This particular garment protects against one of Radiant, Necrotic, Vile or Magic depending on the jewels which were used in its creation.

It absorbs 30 pts. of one energy type, then dissipates.
If it is damaged but has not yet dissipated, you may use Mending and Make Whole spells to repair the damage.
The seamstress creating this garment has the option of turning these into pants and shirts.

Pants and shirts offer 15 pts. of elemental suppression then dissipate.

Robes occupy a torso and legs slot. Capes occupy a back slot. 
', 1670, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2325, N'Superior Robe/Cape of Alterna Elemental Suppression', N'This apparel grants temporary elemental suppression.
This particular garment protects against one of Radiant, Necrotic, Vile or Magic depending on the jewels which were used in its creation.

It absorbs 40 pts. of one energy type, then dissipates.
If it is damaged but has not yet dissipated, you may use Mending and Make Whole spells to repair the damage.
The seamstress creating this garment has the option of turning these into pants and shirts.

Pants and shirts offer 20 pts. of elemental suppression then dissipate.

Robes occupy a torso and legs slot. Capes occupy a back slot. 
', 3400, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2326, N'Outstanding Robe/Cape of Alterna Elemental Suppression', N'This apparel grants temporary elemental suppression.
This particular garment protects against one of Radiant, Necrotic, Vile or Magic depending on the jewels which were used in its creation.

It absorbs 50 pts. of one energy type, then dissipates.
If it is damaged but has not yet dissipated, you may use Mending and Make Whole spells to repair the damage.
The seamstress creating this garment has the option of turning these into pants and shirts.

Pants and shirts offer 25 pts. of elemental suppression then dissipate.

Robes occupy a torso and legs slot. Capes occupy a back slot. 
', 6350, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2327, N'Lesser Pants of Alterna Elemental Suppression', N'This apparel grants temporary elemental suppression.
This particular garment protects against one of Radiant, Necrotic, Vile or Magic depending on the jewels which were used in its creation.

If it is damaged but has not yet dissipated, you may use Mending and Make Whole spells to repair the damage.
The seamstress creating this garment has the option of turning these into pants and shirts.

Pants and shirts offer 5 pts. of elemental suppression then dissipate.

Robes occupy a torso and legs slot. Capes occupy a back slot. 
', 230, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2328, N'Lesser Shirt of Alterna Elemental Suppression', N'This apparel grants temporary elemental suppression.
This particular garment protects against one of Radiant, Necrotic, Vile or Magic depending on the jewels which were used in its creation.

If it is damaged but has not yet dissipated, you may use Mending and Make Whole spells to repair the damage.
The seamstress creating this garment has the option of turning these into pants and shirts.

Pants and shirts offer 5 pts. of elemental suppression then dissipate.

Robes occupy a torso and legs slot. Capes occupy a back slot. 

', 230, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2329, N'Common Pants of Alterna Elemental Suppression', N'This apparel grants temporary elemental suppression.
This particular garment protects against one of Radiant, Necrotic, Vile or Magic depending on the jewels which were used in its creation.

If it is damaged but has not yet dissipated, you may use Mending and Make Whole spells to repair the damage.
The seamstress creating this garment has the option of turning these into pants and shirts.

Pants and shirts offer 10 pts. of elemental suppression then dissipate.

Robes occupy a torso and legs slot. Capes occupy a back slot. 

', 475, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2330, N'Common Shirt of Alterna Elemental Suppression', N'This apparel grants temporary elemental suppression.
This particular garment protects against one of Radiant, Necrotic, Vile or Magic depending on the jewels which were used in its creation.

If it is damaged but has not yet dissipated, you may use Mending and Make Whole spells to repair the damage.
The seamstress creating this garment has the option of turning these into pants and shirts.

Pants and shirts offer 10 pts. of elemental suppression then dissipate.

Robes occupy a torso and legs slot. Capes occupy a back slot. 

', 475, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2331, N'Greater Shirt of Alterna Elemental Suppression', N'This apparel grants temporary elemental suppression.
This particular garment protects against one of Radiant, Necrotic, Vile or Magic depending on the jewels which were used in its creation.

If it is damaged but has not yet dissipated, you may use Mending and Make Whole spells to repair the damage.
The seamstress creating this garment has the option of turning these into pants and shirts.

Pants and shirts offer 15 pts. of elemental suppression then dissipate.

Robes occupy a torso and legs slot. Capes occupy a back slot. 

', 835, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2332, N'Greater Pants of Alterna Elemental Suppression', N'This apparel grants temporary elemental suppression.
This particular garment protects against one of Radiant, Necrotic, Vile or Magic depending on the jewels which were used in its creation.

If it is damaged but has not yet dissipated, you may use Mending and Make Whole spells to repair the damage.
The seamstress creating this garment has the option of turning these into pants and shirts.

Pants and shirts offer 15 pts. of elemental suppression then dissipate.

Robes occupy a torso and legs slot. Capes occupy a back slot. 

', 835, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2333, N'Superior Pants of Alterna Elemental Suppression', N'This apparel grants temporary elemental suppression.
This particular garment protects against one of Radiant, Necrotic, Vile or Magic depending on the jewels which were used in its creation.

If it is damaged but has not yet dissipated, you may use Mending and Make Whole spells to repair the damage.
The seamstress creating this garment has the option of turning these into pants and shirts.

Pants and shirts offer 20 pts. of elemental suppression then dissipate.

Robes occupy a torso and legs slot. Capes occupy a back slot. 

', 1700, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2334, N'Superior Shirt of Alterna Elemental Suppression', N'This apparel grants temporary elemental suppression.
This particular garment protects against one of Radiant, Necrotic, Vile or Magic depending on the jewels which were used in its creation.

If it is damaged but has not yet dissipated, you may use Mending and Make Whole spells to repair the damage.
The seamstress creating this garment has the option of turning these into pants and shirts.

Pants and shirts offer 20 pts. of elemental suppression then dissipate.

Robes occupy a torso and legs slot. Capes occupy a back slot. ', 1700, N'Garments', N'')
GO
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2335, N'Outstanding Shirt of Alterna Elemental Suppression', N'This apparel grants temporary elemental suppression.
This particular garment protects against one of Radiant, Necrotic, Vile or Magic depending on the jewels which were used in its creation.

If it is damaged but has not yet dissipated, you may use Mending and Make Whole spells to repair the damage.
The seamstress creating this garment has the option of turning these into pants and shirts.

Pants and shirts offer 25 pts. of elemental suppression then dissipate.

Robes occupy a torso and legs slot. Capes occupy a back slot. 
', 3175, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2336, N'Outstanding Pants of Alterna Elemental Suppression', N'This apparel grants temporary elemental suppression.
This particular garment protects against one of Radiant, Necrotic, Vile or Magic depending on the jewels which were used in its creation.

If it is damaged but has not yet dissipated, you may use Mending and Make Whole spells to repair the damage.
The seamstress creating this garment has the option of turning these into pants and shirts.

Pants and shirts offer 25 pts. of elemental suppression then dissipate.

Robes occupy a torso and legs slot. Capes occupy a back slot. 
', 3175, N'Garments', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2337, N'Silver - Medium Armor', N'Adds 10lbs and grants resist 20 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 20HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 3700, N'Armor - Medium - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2338, N'Brass - Medium Armor', N'Adds 10lbs and grants resist 10 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 10HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 600, N'Armor - Medium - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2339, N'Gold - Medium Armor', N'Adds 10lbs and grants resist 30 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 30HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 7400, N'Armor - Medium - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2340, N'Platinum - Medium Armor', N'Adds 10lbs and grants resist 40 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 40HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 20800, N'Armor - Medium - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2341, N'Moonlight - Medium Armor', N'Adds 10lbs and grants resist 50 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 50HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 46600, N'Armor - Medium - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2342, N'Brass - Heavy Armor', N'Adds 10lbs and grants resist 15 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 10HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 1800, N'Armor - Heavy - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2343, N'Silver - Heavy Armor', N'Adds 10lbs and grants resist 30 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 20HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 7800, N'Armor - Heavy - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2344, N'Gold - Heavy Armor', N'Adds 10lbs and grants resist 45 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 30HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 14800, N'Armor - Heavy - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2345, N'Platinum - Heavy Armor', N'Adds 10lbs and grants resist 60 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 40HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 40800, N'Armor - Heavy - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2346, N'Moonlight - Heavy Armor', N'Adds 10lbs and grants resist 75 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 50HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 91600, N'Armor - Heavy - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2347, N'Ruby - Medium Armor', N'Set of gems for medium armor. Grants Fire resist. 
Does nothing without the jewelcrafting metal.', 2000, N'Armor - Medium - Mod', N'Jewelcrafting - Medium Armor Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2348, N'Polarcrystal - Medium Armor', N'Set of gems for medium armor. Grants Cold resist. 
Does nothing without the jewelcrafting metal.', 2000, N'Armor - Medium - Mod', N'Jewelcrafting - Medium Armor Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2349, N'Emerald - Medium Armor', N'Set of gems for medium armor. Grants Sonic resist. 
Does nothing without the jewelcrafting metal.', 2000, N'Armor - Medium - Mod', N'Jewelcrafting - Medium Armor Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2350, N'Topaz - Medium Armor', N'Set of gems for medium armor. Grants Earth resist. 
Does nothing without the jewelcrafting metal.', 2000, N'Armor - Medium - Mod', N'Jewelcrafting - Medium Armor Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2351, N'Amethyst - Medium Armor', N'Set of gems for medium armor. Grants Electric resist. 
Does nothing without the jewelcrafting metal.', 2000, N'Armor - Medium - Mod', N'Jewelcrafting - Medium Armor Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2352, N'Sapphire - Medium Armor', N'Set of gems for medium armor. Grants Acid resist. 
Does nothing without the jewelcrafting metal.', 2000, N'Armor - Medium - Mod', N'Jewelcrafting - Medium Armor Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2353, N'Opal - Medium Armor', N'Set of gems for medium armor. Grants Vile resist. 
Does nothing without the jewelcrafting metal.', 7000, N'Armor - Medium - Mod', N'Jewelcrafting - Medium Armor Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2354, N'Kronus - Medium Armor', N'Set of gems for medium armor. Grants Necrotic resist. 
Does nothing without the jewelcrafting metal.', 7000, N'Armor - Medium - Mod', N'Jewelcrafting - Medium Armor Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2355, N'Diamond - Medium Armor', N'Set of gems for medium armor. Grants Radiant resist. 
Does nothing without the jewelcrafting metal.', 7000, N'Armor - Medium - Mod', N'Jewelcrafting - Medium Armor Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2356, N'Garnet - Medium Armor', N'Set of gems for medium armor. Grants Magic resist. 
Does nothing without the jewelcrafting metal.', 7000, N'Armor - Medium - Mod', N'Jewelcrafting - Medium Armor Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2357, N'Soul - Medium Armor', N'Set of gems for medium armor. Grants All Elemental resists (Fire, Cold, Sonic, Earth, Electric, Acid, Vile, Necrotic, Radiant, and Magic damage.) 
Does nothing without the jewelcrafting metal.
', 100000, N'Armor - Medium - Mod', N'Jewelcrafting - Medium Armor Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2358, N'Ruby - Heavy Armor', N'Set of gems for heavy armor. Grants Fire resist. 
Does nothing without the jewelcrafting metal.', 3000, N'Armor - Heavy - Mod', N'Jewelcrafting - Heavy Armor Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2359, N'Polarcrystal - Heavy Armor', N'Set of gems for heavy armor. Grants Cold resist. 
Does nothing without the jewelcrafting metal.', 3000, N'Armor - Heavy - Mod', N'Jewelcrafting - Heavy Armor Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2360, N'Emerald - Heavy Armor', N'Set of gems for heavy armor. Grants Sonic resist. 
Does nothing without the jewelcrafting metal.', 3000, N'Armor - Heavy - Mod', N'Jewelcrafting - Heavy Armor Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2361, N'Topaz - Heavy Armor', N'Set of gems for heavy armor. Grants Earth resist. 
Does nothing without the jewelcrafting metal.', 3000, N'Armor - Heavy - Mod', N'Jewelcrafting - Heavy Armor Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2362, N'Amethyst - Heavy Armor', N'Set of gems for heavy armor. Grants Electric resist. 
Does nothing without the jewelcrafting metal.', 3000, N'Armor - Heavy - Mod', N'Jewelcrafting - Heavy Armor Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2363, N'Sapphire - Heavy Armor', N'Set of gems for heavy armor. Grants Acid resist. 
Does nothing without the jewelcrafting metal.', 3000, N'Armor - Heavy - Mod', N'Jewelcrafting - Heavy Armor Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2364, N'Opal - Heavy Armor', N'Set of gems for heavy armor. Grants Vile resist. 
Does nothing without the jewelcrafting metal.', 10500, N'Armor - Heavy - Mod', N'Jewelcrafting - Heavy Armor Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2365, N'Kronus - Heavy Armor', N'Set of gems for heavy armor. Grants Necrotic resist. 
Does nothing without the jewelcrafting metal.', 10500, N'Armor - Heavy - Mod', N'Jewelcrafting - Heavy Armor Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2366, N'Diamond - Heavy Armor', N'Set of gems for heavy armor. Grants Radiant resist. 
Does nothing without the jewelcrafting metal.', 10500, N'Armor - Heavy - Mod', N'Jewelcrafting - Heavy Armor Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2367, N'Garnet - Heavy Armor', N'Set of gems for heavy armor. Grants Magic resist. 
Does nothing without the jewelcrafting metal.', 10500, N'Armor - Heavy - Mod', N'Jewelcrafting - Heavy Armor Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2368, N'Soul - Heavy Armor', N'Set of gems for heavy armor. Grants All Elemental resists (Fire, Cold, Sonic, Earth, Electric, Acid, Vile, Necrotic, Radiant, and Magic damage.) 
Does nothing without the jewelcrafting metal.
', 150000, N'Armor - Heavy - Mod', N'Jewelcrafting - Heavy Armor Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2369, N'Brass - Buckler Shield', N'Adds 10lbs and grants resist 5 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 10HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 200, N'Shield - Buckler - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2370, N'Silver - Buckler Shield', N'Adds 10lbs and grants resist 10 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 20HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 900, N'Shield - Buckler - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2371, N'Gold - Buckler Shield', N'Adds 10lbs and grants resist 15 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 30HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 1800, N'Shield - Buckler - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2372, N'Platinum - Buckler Shield', N'Adds 10lbs and grants resist 20 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 40HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 4800, N'Shield - Buckler - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2373, N'Moonlight - Buckler Shield', N'Adds 10lbs and grants resist 25 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 50HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 10600, N'Shield - Buckler - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2374, N'Brass - Light Shield', N'Adds 10lbs and grants resist 10 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 10HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 300, N'Shield - Light - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2375, N'Silver - Light Shield', N'Adds 10lbs and grants resist 20 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 20HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 1600, N'Shield - Light - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2376, N'Gold - Light Shield', N'Adds 10lbs and grants resist 30 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 30HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 3200, N'Shield - Light - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2377, N'Platinum - Light Shield', N'Adds 10lbs and grants resist 40 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 40HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 8800, N'Shield - Light - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2378, N'Moonlight - Light Shield', N'Adds 10lbs and grants resist 50 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 50HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 19600, N'Shield - Light - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2379, N'Brass - Heavy Shield', N'Adds 10lbs and grants resist 10 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 10HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 500, N'Shield - Heavy - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2380, N'Silver - Heavy Shield', N'Adds 10lbs and grants resist 20 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 20HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 3000, N'Shield - Heavy - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2381, N'Gold - Heavy Shield', N'Adds 10lbs and grants resist 30 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 30HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 6000, N'Shield - Heavy - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2382, N'Platinum - Heavy Shield', N'Adds 10lbs and grants resist 40 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 40HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 16800, N'Shield - Heavy - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2383, N'Moonlight - Heavy Shield', N'Adds 10lbs and grants resist 50 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 50HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 37600, N'Shield - Heavy - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2384, N'Brass - Tower Shield', N'Adds 10lbs and grants resist 15 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 10HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 600, N'Shield - Tower - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2385, N'Silver - Tower Shield', N'Adds 10lbs and grants resist 30 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 20HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 3700, N'Shield - Tower - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2386, N'Gold - Tower Shield', N'Adds 10lbs and grants resist 45 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 30HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 7400, N'Shield - Tower - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2387, N'Platinum - Tower Shield', N'Adds 10lbs and grants resist 60 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 40HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 20800, N'Shield - Tower - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2388, N'Moonlight - Tower Shield', N'Adds 10lbs and grants resist 75 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 50HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 46600, N'Shield - Tower - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2389, N'Ruby - Tower Shield', N'Set of gems for a tower shield. Grants Fire resist. 
Does nothing without the jewelcrafting metal.', 1000, N'Shield - Tower - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2390, N'Polarcrystal - Tower Shield', N'Set of gems for a tower shield. Grants Cold resist. 
Does nothing without the jewelcrafting metal.', 1000, N'Shield - Tower - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2391, N'Emerald - Tower Shield', N'Set of gems for a tower shield. Grants Sonic resist. 
Does nothing without the jewelcrafting metal.', 1000, N'Shield - Tower - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2392, N'Topaz - Tower Shield', N'Set of gems for a tower shield. Grants Earth resist. 
Does nothing without the jewelcrafting metal.', 1000, N'Shield - Tower - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2393, N'Amethyst - Tower Shield', N'Set of gems for a tower shield. Grants Electric resist. 
Does nothing without the jewelcrafting metal.', 1000, N'Shield - Tower - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2394, N'Sapphire - Tower Shield', N'Set of gems for a tower shield. Grants Acid resist. 
Does nothing without the jewelcrafting metal.', 1000, N'Shield - Tower - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2395, N'Opal - Tower Shield', N'Set of gems for a tower shield. Grants Vile resist. 
Does nothing without the jewelcrafting metal.', 3500, N'Shield - Tower - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2396, N'Kronus - Tower Shield', N'Set of gems for a tower shield. Grants Necrotic resist. 
Does nothing without the jewelcrafting metal.', 3500, N'Shield - Tower - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2397, N'Diamond - Tower Shield', N'Set of gems for a tower shield. Grants Radiant resist. 
Does nothing without the jewelcrafting metal.', 3500, N'Shield - Tower - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2398, N'Garnet - Tower Shield', N'Set of gems for a tower shield. Grants Magic resist. 
Does nothing without the jewelcrafting metal.', 3500, N'Shield - Tower - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2399, N'Soul - Tower Shield', N'Set of gems for a tower shield. Grants All Elemental resists (Fire, Cold, Sonic, Earth, Electric, Acid, Vile, Necrotic, Radiant, and Magic damage.) 
Does nothing without the jewelcrafting metal.
', 50000, N'Shield - Tower - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2400, N'Ruby - Heavy Shield', N'Set of gems for a heavy shield. Grants Fire resist. 
Does nothing without the jewelcrafting metal.', 1000, N'Shield - Heavy - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2401, N'Polarcrystal - Heavy Shield', N'Set of gems for a heavy shield. Grants Cold resist. 
Does nothing without the jewelcrafting metal.', 1000, N'Shield - Heavy - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2402, N'Emerald - Heavy Shield', N'Set of gems for a heavy shield. Grants Sonic resist. 
Does nothing without the jewelcrafting metal.', 1000, N'Shield - Heavy - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2403, N'Topaz - Heavy Shield', N'Set of gems for a heavy shield. Grants Earth resist. 
Does nothing without the jewelcrafting metal.', 1000, N'Shield - Heavy - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2404, N'Amethyst - Heavy Shield', N'Set of gems for a heavy shield. Grants Electric resist. 
Does nothing without the jewelcrafting metal.', 1000, N'Shield - Heavy - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2405, N'Sapphire - Heavy Shield', N'Set of gems for a heavy shield. Grants Acid resist. 
Does nothing without the jewelcrafting metal.', 1000, N'Shield - Heavy - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2406, N'Opal - Heavy Shield', N'Set of gems for a heavy shield. Grants Vile resist. 
Does nothing without the jewelcrafting metal.', 3500, N'Shield - Heavy - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2407, N'Kronus - Heavy Shield', N'Set of gems for a heavy shield. Grants Necrotic resist. 
Does nothing without the jewelcrafting metal.', 3500, N'Shield - Heavy - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2408, N'Diamond - Heavy Shield', N'Set of gems for a heavy shield. Grants Radiant resist. 
Does nothing without the jewelcrafting metal.', 3500, N'Shield - Heavy - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2409, N'Garnet - Heavy Shield', N'Set of gems for a heavy shield. Grants Magic resist. 
Does nothing without the jewelcrafting metal.', 3500, N'Shield - Heavy - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2410, N'Soul - Heavy Shield', N'Set of gems for a heavy shield. Grants All Elemental resists (Fire, Cold, Sonic, Earth, Electric, Acid, Vile, Necrotic, Radiant, and Magic damage.) 
Does nothing without the jewelcrafting metal.
', 50000, N'Shield - Heavy - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2411, N'Ruby - Light Shield', N'Set of gems for a light shield. Grants Fire resist. 
Does nothing without the jewelcrafting metal.', 1000, N'Shield - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2412, N'Polarcrystal - Light Shield', N'Set of gems for a light shield. Grants Cold resist. 
Does nothing without the jewelcrafting metal.', 1000, N'Shield - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2413, N'Emerald - Light Shield', N'Set of gems for a light shield. Grants Sonic resist. 
Does nothing without the jewelcrafting metal.', 1000, N'Shield - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2414, N'Topaz - Light Shield', N'Set of gems for a light shield. Grants Earth resist. 
Does nothing without the jewelcrafting metal.', 1000, N'Shield - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2415, N'Amethyst - Light Shield', N'Set of gems for a light shield. Grants Electric resist. 
Does nothing without the jewelcrafting metal.', 1000, N'Shield - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2416, N'Sapphire - Light Shield', N'Set of gems for a light shield. Grants Acid resist. 
Does nothing without the jewelcrafting metal.', 1000, N'Shield - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2417, N'Opal - Light Shield', N'Set of gems for a light shield. Grants Vile resist. 
Does nothing without the jewelcrafting metal.', 3500, N'Shield - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2418, N'Kronus - Light Shield', N'Set of gems for a light shield. Grants Necrotic resist. 
Does nothing without the jewelcrafting metal.', 3500, N'Shield - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2419, N'Diamond - Light Shield', N'Set of gems for a light shield. Grants Radiant resist. 
Does nothing without the jewelcrafting metal.', 3500, N'Shield - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2420, N'Garnet - Light Shield', N'Set of gems for a light shield. Grants Magic resist. 
Does nothing without the jewelcrafting metal.', 3500, N'Shield - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2421, N'Soul - Light Shield', N'Set of gems for a light shield. Grants All Elemental resists (Fire, Cold, Sonic, Earth, Electric, Acid, Vile, Necrotic, Radiant, and Magic damage.) 
Does nothing without the jewelcrafting metal.
', 50000, N'Shield - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2422, N'Ruby - Buckler Shield', N'Set of gems for a buckler shield. Grants Fire resist. 
Does nothing without the jewelcrafting metal.', 1000, N'Shield - Buckler - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2423, N'Polarcrystal - Buckler Shield', N'Set of gems for a buckler shield. Grants Cold resist. 
Does nothing without the jewelcrafting metal.', 1000, N'Shield - Buckler - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2424, N'Emerald - Buckler Shield', N'Set of gems for a buckler shield. Grants Sonic resist. 
Does nothing without the jewelcrafting metal.', 1000, N'Shield - Buckler - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2425, N'Topaz - Buckler Shield', N'Set of gems for a buckler shield. Grants Earth resist. 
Does nothing without the jewelcrafting metal.', 1000, N'Shield - Buckler - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2426, N'Amethyst - Buckler Shield', N'Set of gems for a buckler shield. Grants Electric resist. 
Does nothing without the jewelcrafting metal.', 1000, N'Shield - Buckler - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2427, N'Sapphire - Buckler Shield', N'Set of gems for a buckler shield. Grants Acid resist. 
Does nothing without the jewelcrafting metal.', 1000, N'Shield - Buckler - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2428, N'Opal - Buckler Shield', N'Set of gems for a buckler shield. Grants Vile resist. 
Does nothing without the jewelcrafting metal.', 3500, N'Shield - Buckler - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2429, N'Kronus - Buckler Shield', N'Set of gems for a buckler shield. Grants Necrotic resist. 
Does nothing without the jewelcrafting metal.', 3500, N'Shield - Buckler - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2430, N'Diamond - Buckler Shield', N'Set of gems for a buckler shield. Grants Radiant resist. 
Does nothing without the jewelcrafting metal.', 3500, N'Shield - Buckler - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2431, N'Garnet - Buckler Shield', N'Set of gems for a buckler shield. Grants Magic resist. 
Does nothing without the jewelcrafting metal.', 3500, N'Shield - Buckler - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2432, N'Soul - Buckler Shield', N'Set of gems for a buckler shield. Grants All Elemental resists (Fire, Cold, Sonic, Earth, Electric, Acid, Vile, Necrotic, Radiant, and Magic damage.) 
Does nothing without the jewelcrafting metal.
', 50000, N'Shield - Buckler - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2433, N'Brass - Light Melee Weapon', N'Adds +1 to hit on attack rolls', 300, N'Weapon - Light - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2434, N'Brass - 1H Melee Weapon', N'Adds +1 to hit on attack rolls', 400, N'Weapon - 1H - Mod', N'Jewelcrafting')
GO
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2435, N'Brass - 2H Melee Weapon', N'Adds +1 to hit on attack rolls', 500, N'Weapon - 2H - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2436, N'Silver - Light Melee Weapon', N'Adds +2 to hit on attack rolls', 1600, N'Weapon - Light - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2437, N'Silver - 1H Melee Weapon', N'Adds +2 to hit on attack rolls', 2300, N'Weapon - 1H - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2438, N'Silver - 2H Melee Weapon', N'Adds +2 to hit on attack rolls', 3000, N'Weapon - 2H - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2439, N'Gold - Light Melee Weapon', N'Adds +3 to hit on attack rolls', 3200, N'Weapon - Light - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2440, N'Gold - 1H Melee Weapon', N'Adds +3 to hit on attack rolls', 4600, N'Weapon - 1H - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2441, N'Gold - 2H Melee Weapon', N'Adds +3 to hit on attack rolls', 6000, N'Weapon - 2H - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2442, N'Platinum - Light Melee Weapon', N'Adds +4 to hit on attack rolls', 8800, N'Weapon - Light - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2443, N'Platinum - 1H Melee Weapon', N'Adds +4 to hit on attack rolls', 12800, N'Weapon - 1H - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2444, N'Platinum - 2H Melee Weapon', N'Adds +4 to hit on attack rolls', 168000, N'Weapon - 2H - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2445, N'Moonlight - Light Melee Weapon', N'Adds +5 to hit on attack rolls', 19600, N'Weapon - Light - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2446, N'Moonlight - 1H Melee Weapon', N'Adds +5 to hit on attack rolls', 28600, N'Weapon - 1H - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2447, N'Moonlight - 2H Melee Weapon', N'Adds +5 to hit on attack rolls', 376000, N'Weapon - 2H - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2448, N'Military Saddle', N'A military saddle braces the rider, providing a +2 circumstance bonus on Ride checks related to staying in the saddle. If you’re knocked unconscious while in a military saddle, you have a 75% chance to stay in the saddle (compared to 50% for a riding saddle).', 20, N'Belt', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2449, N'Snake Shaped Quarterstaff', N'This simple double weapon can be used two handed or each end can act as it''s own melee weapon and does 1d6/1d6 Bludgeoning damage with a ×2 crit. and weighs 4 lb. it is made out of birch.

A snake mage has performed a 1 hour ceremony on it that only matters to snake mages.', 10, N'Weapon - 2H', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2450, N'Ash Granite - Tower Shield', N'Adds 10 lbs and 2 AC', 1800, N'Shield - Tower - Mod', N'Stonemason')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2451, N'War Poncho', N'This Ironweave Cape is intricatly designed with the traditional patterns of the Hilado kinfolk.  It gives the wearer 6 temporary HP.  It is worth more than the regular Ironweave Cape due to the workmanship required to create it.

As with other metalweave apparal the temporary HP can be restored with a mending, (+1 HP) or a make whole (+2d8+<caster level, max 10>)

It can be worn as either a Cape or a Shirt.', 800, N'Shirt', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2452, N'Vicious Cold Touch - 2H Melee Weapon', N'3 times per hour if you miss with this weapon, but your to-hit roll is high enough to hit the opponent''s touch AC then you do 1d8 cold damage to that opponent.', 4100, N'Weapon - 2H - Mod', N'Boneworker')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2453, N'Outerworldly Bone', N'', 1200, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2454, N'Vicious Acid Touch - 2H Melee Weapon', N'3 times per hour if you miss with this weapon, but your to-hit roll is high enough to hit the opponent''s touch AC then you do 1d8 acid damage to that opponent.', 4100, N'Weapon - 2H - Mod', N'Boneworker')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2455, N'Ruby +1 Elemental Energy Light Weapon', N'Adds 1 Fire damage 
', 500, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2456, N'Polarcrystal +1 Elemental Energy Light Weapon', N'Adds 1 Cold damage 
', 500, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2457, N'Emerald +1 Elemental Energy Light Weapon', N'Adds 1 Sonic damage 
', 500, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2458, N'Topaz +1 Elemental Energy Light Weapon', N'Adds 1 Earth damage 
', 500, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2459, N'Amethyst +1 Elemental Energy Light Weapon', N'Adds 1 Electric damage 
', 500, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2460, N'Sapphire +1 Elemental Energy Light Weapon', N'Adds 1 Acid damage 
', 500, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2461, N'Opal +1 Elemental Energy Light Weapon', N'Adds 1 Vile damage 
', 1500, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2462, N'Kronus +1 Elemental Energy Light Weapon', N'Adds 1 Necrotic damage 
', 1500, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2463, N'Diamond +1 Elemental Energy Light Weapon', N'Adds 1 Radiant damage 
', 1500, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2464, N'Ruby +2 Elemental Energy Light Weapon', N'Adds 2 Fire damage 
', 1000, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2465, N'Polarcrystal +2 Elemental Energy Light Weapon', N'Adds 2 Cold damage 
', 1000, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2466, N'Emerald +2 Elemental Energy Light Weapon', N'Adds 2 Sonic damage 
', 1000, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2467, N'Topaz +2 Elemental Energy Light Weapon', N'Adds 2 Earth damage 
', 1000, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2468, N'Amethyst +2 Elemental Energy Light Weapon', N'Adds 2 Electric damage 
', 1000, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2469, N'Sapphire +2 Elemental Energy Light Weapon', N'Adds 2 Acid damage 
', 1000, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2470, N'Opal +2 Elemental Energy Light Weapon', N'Adds 2 Vile damage 
', 3000, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2471, N'Kronus +2 Elemental Energy Light Weapon', N'Adds 2 Necrotic damage 
', 3000, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2472, N'Diamond +2 Elemental Energy Light Weapon', N'Adds 2 Radiant damage 
', 3000, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2473, N'Ruby +3 Elemental Energy Light Weapon', N'Adds 3 Fire damage 
', 1600, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2474, N'Polarcrystal +3 Elemental Energy Light Weapon', N'Adds 3 Cold damage 
', 1600, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2475, N'Emerald +3 Elemental Energy Light Weapon', N'Adds 3 Sonic damage 
', 1600, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2476, N'Topaz +3 Elemental Energy Light Weapon', N'Adds 3 Earth damage 
', 1600, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2477, N'Amethyst +3 Elemental Energy Light Weapon', N'Adds 3 Electric damage 
', 1600, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2478, N'Sapphire +3 Elemental Energy Light Weapon', N'Adds 3 Acid damage 
', 1600, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2479, N'Opal +3 Elemental Energy Light Weapon', N'Adds 3 Vile damage 
', 4600, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2480, N'Kronus +3 Elemental Energy Light Weapon', N'Adds 3 Necrotic damage 
', 4600, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2481, N'Diamond +3 Elemental Energy Light Weapon', N'Adds 3 Radiant damage 
', 4800, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2500, N'Ruby +4 Elemental Energy Light Weapon', N'Adds 4 Fire damage 
', 2400, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2501, N'Polarcrystal +4 Elemental Energy Light Weapon', N'Adds 4 Cold damage 
', 2400, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2502, N'Emerald +4 Elemental Energy Light Weapon', N'Adds 4 Sonic damage 
', 2400, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2503, N'Topaz +4 Elemental Energy Light Weapon', N'Adds 4 Earth damage 
', 2400, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2504, N'Amethyst +4 Elemental Energy Light Weapon', N'Adds 4 Electric damage 
', 2400, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2505, N'Sapphire +4 Elemental Energy Light Weapon', N'Adds 4 Acid damage 
', 2400, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2506, N'Opal +4 Elemental Energy Light Weapon', N'Adds 4 Vile damage 
', 6400, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2507, N'Kronus +4 Elemental Energy Light Weapon', N'Adds 4 Necrotic damage 
', 6400, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2508, N'Diamond +4 Elemental Energy Light Weapon', N'Adds 4 Radiant damage 
', 6400, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2509, N'Ruby +5 Elemental Energy Light Weapon', N'Adds 5 Fire damage 
', 3600, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2510, N'Polarcrystal +5 Elemental Energy Light Weapon', N'Adds 5 Cold damage 
', 3600, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2511, N'Emerald +5 Elemental Energy Light Weapon', N'Adds 5 Sonic damage 
', 3600, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2512, N'Topaz +5 Elemental Energy Light Weapon', N'Adds 5 Earth damage 
', 3600, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2513, N'Amethyst +5 Elemental Energy Light Weapon', N'Adds 5 Electric damage 
', 3600, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2514, N'Sapphire +5 Elemental Energy Light Weapon', N'Adds 5 Acid damage 
', 3600, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2515, N'Opal +5 Elemental Energy Light Weapon', N'Adds 5 Vile damage 
', 8600, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2516, N'Kronus +5 Elemental Energy Light Weapon', N'Adds 5 Necrotic damage 
', 8600, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2517, N'Diamond +5 Elemental Energy Light Weapon', N'Adds 5 Radiant damage 
', 8600, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2518, N'Ruby +5 Elemental Energy 1H Weapon', N'Adds 5 Fire damage 
', 3800, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2519, N'Polarcrystal +5 Elemental Energy 1H Weapon', N'Adds 5 Cold damage 
', 3800, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2520, N'Emerald +5 Elemental Energy 1H Weapon', N'Adds 5 Sonic damage 
', 3800, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2521, N'Topaz +5 Elemental Energy 1H Weapon', N'Adds 5 Earth damage 
', 3800, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2522, N'Amethyst +5 Elemental Energy 1H Weapon', N'Adds 5 Electric damage 
', 3800, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2523, N'Sapphire +5 Elemental Energy 1H Weapon', N'Adds 5 Acid damage 
', 3800, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2524, N'Opal +5 Elemental Energy 1H Weapon', N'Adds 5 Vile damage 
', 9300, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2525, N'Kronus +5 Elemental Energy 1H Weapon', N'Adds 5 Necrotic damage 
', 9300, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2526, N'Diamond +5 Elemental Energy 1H Weapon', N'Adds 5 Radiant damage 
', 9300, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2527, N'Ruby +4 Elemental Energy 1H Weapon', N'Adds 4 Fire damage 
', 2600, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2528, N'Polarcrystal +4 Elemental Energy 1H Weapon', N'Adds 4 Cold damage 
', 2600, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2529, N'Emerald +4 Elemental Energy 1H Weapon', N'Adds 4 Sonic damage 
', 2600, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2530, N'Topaz +4 Elemental Energy 1H Weapon', N'Adds 4 Earth damage 
', 2600, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2531, N'Amethyst +4 Elemental Energy 1H Weapon', N'Adds 4 Electric damage 
', 2600, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2532, N'Sapphire +4 Elemental Energy 1H Weapon', N'Adds 4 Acid damage 
', 2600, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2533, N'Opal +4 Elemental Energy 1H Weapon', N'Adds 4 Vile damage 
', 7100, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2534, N'Kronus +4 Elemental Energy 1H Weapon', N'Adds 4 Necrotic damage 
', 7100, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2535, N'Diamond +4 Elemental Energy 1H Weapon', N'Adds 4 Radiant damage 
', 7100, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2536, N'Ruby +3 Elemental Energy 1H Weapon', N'Adds 3 Fire damage 
', 1800, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2537, N'Polarcrystal +3 Elemental Energy 1H Weapon', N'Adds 3 Cold damage 
', 1800, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2538, N'Emerald +3 Elemental Energy 1H Weapon', N'Adds 3 Sonic damage 
', 1800, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2539, N'Topaz +3 Elemental Energy 1H Weapon', N'Adds 3 Earth damage 
', 1800, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2540, N'Amethyst +3 Elemental Energy 1H Weapon', N'Adds 3 Electric damage 
', 1800, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2541, N'Sapphire +3 Elemental Energy 1H Weapon', N'Adds 3 Acid damage 
', 1800, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2542, N'Opal +3 Elemental Energy 1H Weapon', N'Adds 3 Vile damage 
', 5300, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2543, N'Kronus +3 Elemental Energy 1H Weapon', N'Adds 3 Necrotic damage 
', 5300, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2544, N'Diamond +3 Elemental Energy 1H Weapon', N'Adds 3 Radiant damage 
', 5300, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2545, N'Ruby +2 Elemental Energy 1H Weapon', N'Adds 2 Fire damage 
', 1200, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2546, N'Polarcrystal +2 Elemental Energy 1H Weapon', N'Adds 2 Cold damage 
', 1200, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2547, N'Emerald +2 Elemental Energy 1H Weapon', N'Adds 2 Sonic damage 
', 1200, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2548, N'Topaz +2 Elemental Energy 1H Weapon', N'Adds 2 Earth damage 
', 1200, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2549, N'Amethyst +2 Elemental Energy 1H Weapon', N'Adds 2 Electric damage 
', 1200, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2550, N'Sapphire +2 Elemental Energy 1H Weapon', N'Adds 2 Acid damage 
', 1200, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2551, N'Opal +2 Elemental Energy 1H Weapon', N'Adds 2 Vile damage 
', 3700, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2552, N'Kronus +2 Elemental Energy 1H Weapon', N'Adds 2 Necrotic damage 
', 3700, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
GO
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2553, N'Diamond +2 Elemental Energy 1H Weapon', N'Adds 2 Radiant damage 
', 3700, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2554, N'Ruby +1 Elemental Energy 1H Weapon', N'Adds 1 Fire damage 
', 700, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2555, N'Polarcrystal +1 Elemental Energy 1H Weapon', N'Adds 1 Cold damage 
', 700, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2556, N'Emerald +1 Elemental Energy 1H Weapon', N'Adds 1 Sonic damage 
', 700, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2557, N'Topaz +1 Elemental Energy 1H Weapon', N'Adds 1 Earth damage 
', 700, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2558, N'Amethyst +1 Elemental Energy 1H Weapon', N'Adds 1 Electric damage 
', 700, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2559, N'Sapphire +1 Elemental Energy 1H Weapon', N'Adds 1 Acid damage 
', 700, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2560, N'Opal +1 Elemental Energy 1H Weapon', N'Adds 1 Vile damage 
', 2200, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2561, N'Kronus +1 Elemental Energy 1H Weapon', N'Adds 1 Necrotic damage 
', 2200, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2562, N'Diamond +1 Elemental Energy 1H Weapon', N'Adds 1 Radiant damage 
', 2200, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2563, N'Ruby +1 Elemental Energy 2H Weapon', N'Adds 1 Fire damage 
', 900, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2564, N'Polarcrystal +1 Elemental Energy 2H Weapon', N'Adds 1 Cold damage 
', 900, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2565, N'Emerald +1 Elemental Energy 2H Weapon', N'Adds 1 Sonic damage 
', 900, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2566, N'Topaz +1 Elemental Energy 2H Weapon', N'Adds 1 Earth damage 
', 900, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2567, N'Amethyst +1 Elemental Energy 2H Weapon', N'Adds 1 Electric damage 
', 900, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2568, N'Sapphire +1 Elemental Energy 2H Weapon', N'Adds 1 Acid damage 
', 900, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2569, N'Opal +1 Elemental Energy 2H Weapon', N'Adds 1 Vile damage 
', 2900, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2570, N'Kronus +1 Elemental Energy 2H Weapon', N'Adds 1 Necrotic damage 
', 2900, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2571, N'Diamond +1 Elemental Energy 2H Weapon', N'Adds 1 Radiant damage 
', 2900, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2572, N'Ruby +2 Elemental Energy 2H Weapon', N'Adds 2 Fire damage 
', 1400, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2573, N'Polarcrystal +2 Elemental Energy 2H Weapon', N'Adds 2 Cold damage 
', 1400, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2574, N'Emerald +2 Elemental Energy 2H Weapon', N'Adds 2 Sonic damage 
', 1400, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2575, N'Topaz +2 Elemental Energy 2H Weapon', N'Adds 2 Earth damage 
', 1400, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2576, N'Amethyst +2 Elemental Energy 2H Weapon', N'Adds 2 Electric damage 
', 1400, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2577, N'Sapphire +2 Elemental Energy 2H Weapon', N'Adds 2 Acid damage 
', 1400, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2578, N'Opal +2 Elemental Energy 2H Weapon', N'Adds 2 Vile damage 
', 4400, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2579, N'Kronus +2 Elemental Energy 2H Weapon', N'Adds 2 Necrotic damage 
', 4400, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2580, N'Diamond +2 Elemental Energy 2H Weapon', N'Adds 2 Radiant damage 
', 4400, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2581, N'Ruby +3 Elemental Energy 2H Weapon', N'Adds 3 Fire damage 
', 2000, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2582, N'Polarcrystal +3 Elemental Energy 2H Weapon', N'Adds 3 Cold damage 
', 2000, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2583, N'Emerald +3 Elemental Energy 2H Weapon', N'Adds 3 Sonic damage 
', 2000, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2584, N'Topaz +3 Elemental Energy 2H Weapon', N'Adds 3 Earth damage 
', 2000, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2585, N'Amethyst +3 Elemental Energy 2H Weapon', N'Adds 3 Electric damage 
', 2000, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2586, N'Sapphire +3 Elemental Energy 2H Weapon', N'Adds 3 Acid damage 
', 2000, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2587, N'Opal +3 Elemental Energy 2H Weapon', N'Adds 3 Vile damage 
', 6000, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2588, N'Kronus +3 Elemental Energy 2H Weapon', N'Adds 3 Necrotic damage 
', 6000, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2589, N'Diamond +3 Elemental Energy 2H Weapon', N'Adds 3 Radiant damage 
', 6000, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2590, N'Ruby +4 Elemental Energy 2H Weapon', N'Adds 4 Fire damage 
', 2800, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2591, N'Polarcrystal +4 Elemental Energy 2H Weapon', N'Adds 4 Cold damage 
', 2800, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2592, N'Emerald +4 Elemental Energy 2H Weapon', N'Adds 4 Sonic damage 
', 2800, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2593, N'Topaz +4 Elemental Energy 2H Weapon', N'Adds 4 Earth damage 
', 2800, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2594, N'Amethyst +4 Elemental Energy 2H Weapon', N'Adds 4 Electric damage 
', 2800, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2595, N'Sapphire +4 Elemental Energy 2H Weapon', N'Adds 4 Acid damage 
', 2800, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2596, N'Opal +4 Elemental Energy 2H Weapon', N'Adds 4 Vile damage 
', 7800, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2597, N'Kronus +4 Elemental Energy 2H Weapon', N'Adds 4 Necrotic damage 
', 7800, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2598, N'Diamond +4 Elemental Energy 2H Weapon', N'Adds 4 Radiant damage 
', 7800, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2599, N'Ruby +5 Elemental Energy 2H Weapon', N'Adds 5 Fire damage 
', 4000, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2600, N'Polarcrystal +5 Elemental Energy 2H Weapon', N'Adds 5 Cold damage 
', 4000, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2601, N'Emerald +5 Elemental Energy 2H Weapon', N'Adds 5 Sonic damage 
', 4000, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2602, N'Topaz +5 Elemental Energy 2H Weapon', N'Adds 5 Earth damage 
', 4000, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2603, N'Amethyst +5 Elemental Energy 2H Weapon', N'Adds 5 Electric damage 
', 4000, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2604, N'Sapphire +5 Elemental Energy 2H Weapon', N'Adds 5 Acid damage 
', 4000, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2605, N'Opal +5 Elemental Energy 2H Weapon', N'Adds 5 Vile damage 
', 10000, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2606, N'Kronus +5 Elemental Energy 2H Weapon', N'Adds 5 Necrotic damage 
', 10000, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2607, N'Diamond +5 Elemental Energy 2H Weapon', N'Adds 5 Radiant damage 
', 10000, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2608, N'Ruby Burst Energy 2H Weapon', N'Adds 1d6 Fire damage 
', 2200, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2609, N'Polarcrystal Burst Energy 2H Weapon', N'Adds 1d6 Cold damage 
', 2200, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2610, N'Emerald Burst Energy 2H Weapon', N'Adds 1d6 Sonic damage 
', 2200, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2611, N'Topaz Burst Energy 2H Weapon', N'Adds 1d6 Earth damage 
', 2200, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2612, N'Amethyst Burst Energy 2H Weapon', N'Adds 1d6 Electric damage 
', 2200, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2613, N'Sapphire Burst Energy 2H Weapon', N'Adds 1d6 Acid damage 
', 2200, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2614, N'Opal Burst Energy 2H Weapon', N'Adds 1d6 Vile damage 
', 7000, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2615, N'Kronus Burst Energy 2H Weapon', N'Adds 1d6 Necrotic damage 
', 7000, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2616, N'Diamond Burst Energy 2H Weapon', N'Adds 1d6 Radiant damage 
', 7000, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2617, N'Ruby Burst Energy 1H Weapon', N'Adds 1d6 Fire damage 
', 1700, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2618, N'Polarcrystal Burst Energy 1H Weapon', N'Adds 1d6 Cold damage 
', 1700, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2619, N'Emerald Burst Energy 1H Weapon', N'Adds 1d6 Sonic damage 
', 1700, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2620, N'Topaz Burst Energy 1H Weapon', N'Adds 1d6 Earth damage 
', 1700, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2621, N'Amethyst Burst Energy 1H Weapon', N'Adds 1d6 Electric damage 
', 1700, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2622, N'Sapphire Burst Energy 1H Weapon', N'Adds 1d6 Acid damage 
', 1700, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2623, N'Opal Burst Energy 1H Weapon', N'Adds 1d6 Vile damage 
', 5300, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2624, N'Kronus Burst Energy 1H Weapon', N'Adds 1d6 Necrotic damage 
', 5300, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2625, N'Diamond Burst Energy 1H Weapon', N'Adds 1d6 Radiant damage 
', 5300, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2626, N'Ruby Burst Energy Light Weapon', N'Adds 1d6 Fire damage 
', 1200, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2627, N'Polarcrystal Burst Energy Light Weapon', N'Adds 1d6 Cold damage 
', 1200, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2628, N'Emerald Burst Energy Light Weapon', N'Adds 1d6 Sonic damage 
', 1200, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2629, N'Topaz Burst Energy Light Weapon', N'Adds 1d6 Earth damage 
', 1200, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2630, N'Amethyst Burst Energy Light Weapon', N'Adds 1d6 Electric damage 
', 1200, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2631, N'Sapphire Burst Energy Light Weapon', N'Adds 1d6 Acid damage 
', 1200, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2632, N'Opal Burst Energy Light Weapon', N'Adds 1d6 Vile damage 
', 3600, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2633, N'Kronus Burst Energy Light Weapon', N'Adds 1d6 Necrotic damage 
', 3600, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2634, N'Diamond Burst Energy Light Weapon', N'Adds 1d6 Radiant damage 
', 3600, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2645, N'Garnet Burst Energy 1H Weapon', N'Adds 1d6 Magic damage ', 5300, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2646, N'Garnet Burst Energy 2H Weapon', N'Adds 1d6 Magic damage ', 7000, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2647, N'Garnet Burst Energy Light Weapon', N'Adds 1d6 Magic damage 
', 3600, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2648, N'Ruby Energy Imperilment Light Weapon', N'Applies the Light Energy Imperilment debuff to the target for 3 rounds. Any time the target takes Fire damage they take an additional 1d4 damage. 
', 2400, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2649, N'Polarcrystal Energy Imperilment Light Weapon', N'Applies the Light Energy Imperilment debuff to the target for 3 rounds. Any time the target takes Cold damage they take an additional 1d4 damage. 
', 2400, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2650, N'Emerald Energy Imperilment Light Weapon', N'Applies the Light Energy Imperilment debuff to the target for 3 rounds. Any time the target takes Sonic damage they take an additional 1d4 damage. 
', 2400, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2651, N'Topaz Energy Imperilment Light Weapon', N'Applies the Light Energy Imperilment debuff to the target for 3 rounds. Any time the target takes Earth damage they take an additional 1d4 damage. 
', 2400, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2652, N'Amethyst Energy Imperilment Light Weapon', N'Applies the Light Energy Imperilment debuff to the target for 3 rounds. Any time the target takes Electric damage they take an additional 1d4 damage. 
', 2400, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2653, N'Sapphire Energy Imperilment Light Weapon', N'Applies the Light Energy Imperilment debuff to the target for 3 rounds. Any time the target takes Acid damage they take an additional 1d4 damage. 
', 2400, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2654, N'Opal Energy Imperilment Light Weapon', N'Applies the Light Energy Imperilment debuff to the target for 3 rounds. Any time the target takes Vile damage they take an additional 1d4 damage. 
', 7000, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2655, N'Kronus Energy Imperilment Light Weapon', N'Applies the Light Energy Imperilment debuff to the target for 3 rounds. Any time the target takes Necrotic damage they take an additional 1d4 damage. 
', 7000, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2656, N'Diamond Energy Imperilment Light Weapon', N'Applies the Light Energy Imperilment debuff to the target for 3 rounds. Any time the target takes Radiant damage they take an additional 1d4 damage. 
', 7000, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2657, N'Garnet Energy Imperilment Light Weapon', N'Applies the Light Energy Imperilment debuff to the target for 3 rounds. Any time the target takes Magic damage they take an additional 1d4 damage. 
', 7000, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2658, N'Ruby Energy Imperilment 1H Weapon', N'Applies the 1H Energy Imperilment debuff to the target for 3 rounds. Any time the target takes Fire damage they take an additional 1d8 damage. 
', 3400, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2659, N'Polarcrystal Energy Imperilment 1H Weapon', N'Applies the 1H Energy Imperilment debuff to the target for 3 rounds. Any time the target takes Cold damage they take an additional 1d8 damage. 
', 3400, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2660, N'Emerald Energy Imperilment 1H Weapon', N'Applies the 1H Energy Imperilment debuff to the target for 3 rounds. Any time the target takes Sonic damage they take an additional 1d8 damage. 
', 3400, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2661, N'Topaz Energy Imperilment 1H Weapon', N'Applies the 1H Energy Imperilment debuff to the target for 3 rounds. Any time the target takes Earth damage they take an additional 1d8 damage. 
', 3400, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2662, N'Amethyst Energy Imperilment 1H Weapon', N'Applies the 1H Energy Imperilment debuff to the target for 3 rounds. Any time the target takes Electric damage they take an additional 1d8 damage. 
', 3400, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
GO
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2663, N'Sapphire Energy Imperilment 1H Weapon', N'Applies the 1H Energy Imperilment debuff to the target for 3 rounds. Any time the target takes Acid damage they take an additional 1d8 damage. 
', 3400, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2664, N'Opal Energy Imperilment 1H Weapon', N'Applies the 1H Energy Imperilment debuff to the target for 3 rounds. Any time the target takes Vile damage they take an additional 1d8 damage. 
', 10900, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2665, N'Kronus Energy Imperilment 1H Weapon', N'Applies the 1H Energy Imperilment debuff to the target for 3 rounds. Any time the target takes Necrotic damage they take an additional 1d8 damage. 
', 10900, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2666, N'Diamond Energy Imperilment 1H Weapon', N'Applies the 1H Energy Imperilment debuff to the target for 3 rounds. Any time the target takes Radiant damage they take an additional 1d8 damage. 
', 10900, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2667, N'Garnet Energy Imperilment 1H Weapon', N'Applies the 1H Energy Imperilment debuff to the target for 3 rounds. Any time the target takes Magic damage they take an additional 1d8 damage. 
', 10900, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2668, N'Ruby Energy Imperilment 2H Weapon', N'Applies the 2H Energy Imperilment debuff to the target for 3 rounds. Any time the target takes Fire damage they take an additional 1d12 damage. 
', 4400, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2669, N'Polarcrystal Energy Imperilment 2H Weapon', N'Applies the 2H Energy Imperilment debuff to the target for 3 rounds. Any time the target takes Cold damage they take an additional 1d12 damage. 
', 4400, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2670, N'Emerald Energy Imperilment 2H Weapon', N'Applies the 2H Energy Imperilment debuff to the target for 3 rounds. Any time the target takes Sonic damage they take an additional 1d12 damage. 
', 4400, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2671, N'Topaz Energy Imperilment 2H Weapon', N'Applies the 2H Energy Imperilment debuff to the target for 3 rounds. Any time the target takes Earth damage they take an additional 1d12 damage. 
', 4400, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2672, N'Amethyst Energy Imperilment 2H Weapon', N'Applies the 2H Energy Imperilment debuff to the target for 3 rounds. Any time the target takes Electric damage they take an additional 1d12 damage. 
', 4400, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2673, N'Sapphire Energy Imperilment 2H Weapon', N'Applies the 2H Energy Imperilment debuff to the target for 3 rounds. Any time the target takes Acid damage they take an additional 1d12 damage. 
', 4400, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2674, N'Opal Energy Imperilment 2H Weapon', N'Applies the 2H Energy Imperilment debuff to the target for 3 rounds. Any time the target takes Vile damage they take an additional 1d12 damage. 
', 14400, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2675, N'Kronus Energy Imperilment 2H Weapon', N'Applies the 2H Energy Imperilment debuff to the target for 3 rounds. Any time the target takes Necrotic damage they take an additional 1d12 damage. 
', 14400, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2676, N'Diamond Energy Imperilment 2H Weapon', N'Applies the 2H Energy Imperilment debuff to the target for 3 rounds. Any time the target takes Radiant damage they take an additional 1d12 damage. 
', 14400, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2677, N'Garnet Energy Imperilment 2H Weapon', N'Applies the 2H Energy Imperilment debuff to the target for 3 rounds. Any time the target takes Magic damage they take an additional 1d12 damage. 
', 14400, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2678, N'Garnet +1 Elemental Energy Light Weapon', N'Adds 1 Magic damage 
', 1500, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2679, N'Garnet +2 Elemental Energy Light Weapon', N'Adds 2 Magic damage 
', 3000, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2680, N'Garnet +3 Elemental Energy Light Weapon', N'Adds 3 Magic damage 
', 4600, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2681, N'Garnet +4 Elemental Energy Light Weapon', N'Adds 4 Magic damage 
', 6400, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2682, N'Garnet +5 Elemental Energy Light Weapon', N'Adds 5 Magic damage 
', 8600, N'Weapon - Light - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2683, N'Garnet +5 Elemental Energy 1H Weapon', N'Adds 5 Magic damage 
', 9300, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2684, N'Garnet +4 Elemental Energy 1H Weapon', N'Adds 4 Magic damage 
', 7100, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2685, N'Garnet +3 Elemental Energy 1H Weapon', N'Adds 3 Magic damage 
', 5300, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2686, N'Garnet +2 Elemental Energy 1H Weapon', N'Adds 2 Magic damage 
', 3700, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2687, N'Garnet +1 Elemental Energy 1H Weapon', N'Adds 1 Magic damage 
', 2200, N'Weapon - 1H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2688, N'Garnet +1 Elemental Energy 2H Weapon', N'Adds 1 Magic damage 
', 2900, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2689, N'Garnet +2 Elemental Energy 2H Weapon', N'Adds 2 Magic damage 
', 4400, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2690, N'Garnet +3 Elemental Energy 2H Weapon', N'Adds 3 Magic damage 
', 6000, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2691, N'Garnet +4 Elemental Energy 2H Weapon', N'Adds 4 Magic damage 
', 7800, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2692, N'Garnet +5 Elemental Energy 2H Weapon', N'Adds 5 Magic damage 
', 10000, N'Weapon - 2H - Mod', N'Jewelcrafting - Gems')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2698, N'Brass Ruby Ring', N'Adds +1 to STR.', 1150, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2699, N'Brass Polarcrystal Ring', N'Adds +1 to INT.', 1150, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2700, N'Brass Emerald Ring', N'Adds +1 to WIS.', 1150, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2701, N'Brass Topaz Ring', N'Adds +1 to CON.', 1150, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2702, N'Brass Amethyst Ring', N'Adds +1 to DEX.', 1150, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2703, N'Brass Sapphire Ring', N'Adds +1 to CHA.', 1150, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2704, N'Brass Opal Ring', N'Adds +1 to CON & CHA.', 3650, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2705, N'Brass Kronus Ring', N'Adds +1 to DEX & WIS.', 3650, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2706, N'Brass Diamond Ring', N'Adds +1 to STR & INT.', 3650, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2707, N'Brass Garnet Ring', N'Adds +1 to Caster Level.', 3650, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2708, N'Brass Soul Ring', N'Adds +1 to All Ability Scores.', 50150, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2709, N'Silver Ruby Ring', N'Adds +2 to STR.', 2550, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2710, N'Silver Polarcrystal Ring', N'Adds +2 to INT.', 2550, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2711, N'Silver Emerald Ring', N'Adds +2 to WIS.', 2550, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2712, N'Silver Topaz Ring', N'Adds +2 to CON.', 2550, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2713, N'Silver Amethyst Ring', N'Adds +2 to DEX.', 2550, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2714, N'Silver Sapphire Ring', N'Adds +2 to CHA.', 2550, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2715, N'Silver Opal Ring', N'Adds +2 to CON & CHA.', 7550, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2716, N'Silver Kronus Ring', N'Adds +2 to DEX & WIS.', 7550, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2717, N'Silver Diamond Ring', N'Adds +2 to STR & INT.', 7550, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2718, N'Silver Garnet Ring', N'Adds +2 to Caster Level.', 7550, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2719, N'Silver Soul Ring', N'Adds +2 to All Ability Scores.', 100550, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2720, N'Gold Ruby Ring', N'Adds +3 to STR.', 5100, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2721, N'Gold Polarcrystal Ring', N'Adds +3 to INT.', 5100, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2722, N'Gold Emerald Ring', N'Adds +3 to WIS.', 5100, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2723, N'Gold Topaz Ring', N'Adds +3 to CON.', 5100, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2724, N'Gold Amethyst Ring', N'Adds +3 to DEX.', 5100, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2725, N'Gold Sapphire Ring', N'Adds +3 to CHA.', 5100, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2726, N'Gold Opal Ring', N'Adds +3 to CON & CHA.', 15100, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2727, N'Gold Kronus Ring', N'Adds +3 to DEX & WIS.', 15100, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2728, N'Gold Diamond Ring', N'Adds +3 to STR & INT.', 15100, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2729, N'Gold Garnet Ring', N'Adds +3 to Caster Level.', 15100, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2730, N'Gold Soul Ring', N'Adds +3 to All Ability Scores.', 201100, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2742, N'Platinum Ruby Ring', N'Adds +4 to STR.', 10800, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2743, N'Platinum Polarcrystal Ring', N'Adds +4 to INT.', 10800, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2744, N'Platinum Emerald Ring', N'Adds +4 to WIS.', 10800, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2745, N'Platinum Topaz Ring', N'Adds +4 to CON.', 10800, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2746, N'Platinum Amethyst Ring', N'Adds +4 to DEX.', 10800, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2747, N'Platinum Sapphire Ring', N'Adds +4 to CHA.', 10800, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2748, N'Platinum Opal Ring', N'Adds +4 to CON & CHA.', 30800, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2749, N'Platinum Kronus Ring', N'Adds +4 to DEX & WIS.', 30800, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2750, N'Platinum Diamond Ring', N'Adds +4 to STR & INT.', 30800, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2751, N'Platinum Garnet Ring', N'Adds +4 to Caster Level.', 30800, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2752, N'Platinum Soul Ring', N'Adds +4 to All Ability Scores.', 402800, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2753, N'Moonlight Ruby Ring', N'Adds +5 to STR.', 22100, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2754, N'Moonlight Polarcrystal Ring', N'Adds +5 to INT.', 22100, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2755, N'Moonlight Emerald Ring', N'Adds +5 to WIS.', 22100, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2756, N'Moonlight Topaz Ring', N'Adds +5 to CON.', 22100, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2757, N'Moonlight Amethyst Ring', N'Adds +5 to DEX.', 22100, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2758, N'Moonlight Sapphire Ring', N'Adds +5 to CHA.', 22100, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2759, N'Moonlight Opal Ring', N'Adds +5 to CON & CHA.', 62100, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2760, N'Moonlight Kronus Ring', N'Adds +5 to DEX & WIS.', 62100, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2761, N'Moonlight Diamond Ring', N'Adds +5 to STR & INT.', 62100, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2762, N'Moonlight Garnet Ring', N'Adds +5 to Caster Level.', 62100, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2763, N'Moonlight Soul Ring', N'Adds +5 to All Ability Scores.', 806100, N'Ring', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2764, N'Brass Ruby Amulet', N'Adds +1 to STR.', 1200, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2765, N'Brass Polarcrystal Amulet', N'Adds +1 to INT.', 1200, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2766, N'Brass Emerald Amulet', N'Adds +1 to WIS.', 1200, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2767, N'Brass Topaz Amulet', N'Adds +1 to CON.', 1200, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2768, N'Brass Amethyst Amulet', N'Adds +1 to DEX.', 1200, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2769, N'Brass Sapphire Amulet', N'Adds +1 to CHA.', 1200, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2770, N'Brass Opal Amulet', N'Adds +1 to CON & CHA.', 3700, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2771, N'Brass Kronus Amulet', N'Adds +1 to DEX & WIS.', 3700, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2772, N'Brass Diamond Amulet', N'Adds +1 to STR & INT.', 3700, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2773, N'Brass Garnet Amulet', N'Adds +1 to Caster Level.', 3700, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2774, N'Brass Soul Amulet', N'Adds +1 to All Ability Scores.', 50200, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2775, N'Silver Ruby Amulet', N'Adds +2 to STR.', 2900, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2776, N'Silver Polarcrystal Amulet', N'Adds +2 to INT.', 2900, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2777, N'Silver Emerald Amulet', N'Adds +2 to WIS.', 2900, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2778, N'Silver Topaz Amulet', N'Adds +2 to CON.', 2900, N'Necklace', N'Jewelcrafting')
GO
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2779, N'Silver Amethyst Amulet', N'Adds +2 to DEX.', 2900, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2780, N'Silver Sapphire Amulet', N'Adds +2 to CHA.', 2900, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2781, N'Silver Opal Amulet', N'Adds +2 to CON & CHA.', 7900, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2782, N'Silver Kronus Amulet', N'Adds +2 to DEX & WIS.', 7900, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2783, N'Silver Diamond Amulet', N'Adds +2 to STR & INT.', 7900, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2784, N'Silver Garnet Amulet', N'Adds +2 to Caster Level.', 7900, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2785, N'Silver Soul Amulet', N'Adds +2 to All Ability Scores.', 100900, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2786, N'Gold Ruby Amulet', N'Adds +3 to STR.', 5800, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2787, N'Gold Polarcrystal Amulet', N'Adds +3 to INT.', 5800, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2788, N'Gold Emerald Amulet', N'Adds +3 to WIS.', 5800, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2789, N'Gold Topaz Amulet', N'Adds +3 to CON.', 5800, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2790, N'Gold Amethyst Amulet', N'Adds +3 to DEX.', 5800, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2791, N'Gold Sapphire Amulet', N'Adds +3 to CHA.', 5800, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2792, N'Gold Opal Amulet', N'Adds +3 to CON & CHA.', 15800, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2793, N'Gold Kronus Amulet', N'Adds +3 to DEX & WIS.', 15800, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2794, N'Gold Diamond Amulet', N'Adds +3 to STR & INT.', 15800, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2795, N'Gold Garnet Amulet', N'Adds +3 to Caster Level.', 15800, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2796, N'Gold Soul Amulet', N'Adds +3 to All Ability Scores.', 201800, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2797, N'Platinum Ruby Amulet', N'Adds +4 to STR.', 12800, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2798, N'Platinum Polarcrystal Amulet', N'Adds +4 to INT.', 12800, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2799, N'Platinum Emerald Amulet', N'Adds +4 to WIS.', 12800, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2800, N'Platinum Topaz Amulet', N'Adds +4 to CON.', 12800, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2801, N'Platinum Amethyst Amulet', N'Adds +4 to DEX.', 12800, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2802, N'Platinum Sapphire Amulet', N'Adds +4 to CHA.', 12800, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2803, N'Platinum Opal Amulet', N'Adds +4 to CON & CHA.', 32800, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2804, N'Platinum Kronus Amulet', N'Adds +4 to DEX & WIS.', 32800, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2805, N'Platinum Diamond Amulet', N'Adds +4 to STR & INT.', 32800, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2806, N'Platinum Garnet Amulet', N'Adds +4 to Caster Level.', 32800, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2807, N'Platinum Soul Amulet', N'Adds +4 to All Ability Scores.', 404800, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2808, N'Moonlight Ruby Amulet', N'Adds +5 to STR.', 26600, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2809, N'Moonlight Polarcrystal Amulet', N'Adds +5 to INT.', 26600, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2810, N'Moonlight Emerald Amulet', N'Adds +5 to WIS.', 26600, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2811, N'Moonlight Topaz Amulet', N'Adds +5 to CON.', 26600, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2812, N'Moonlight Amethyst Amulet', N'Adds +5 to DEX.', 26600, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2813, N'Moonlight Sapphire Amulet', N'Adds +5 to CHA.', 26600, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2814, N'Moonlight Opal Amulet', N'Adds +5 to CON & CHA.', 66600, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2815, N'Moonlight Kronus Amulet', N'Adds +5 to DEX & WIS.', 66600, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2816, N'Moonlight Diamond Amulet', N'Adds +5 to STR & INT.', 66600, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2817, N'Moonlight Garnet Amulet', N'Adds +5 to Caster Level.', 66600, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2818, N'Moonlight Soul Amulet', N'Adds +5 to All Ability Scores.', 810600, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2819, N'Brass Ruby Crown/Tiara', N'Adds +1 to STR.', 1250, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2820, N'Brass Polarcrystal Crown/Tiara', N'Adds +1 to INT.', 1250, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2821, N'Brass Emerald Crown/Tiara', N'Adds +1 to WIS.', 1250, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2822, N'Brass Topaz Crown/Tiara', N'Adds +1 to CON.', 1250, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2823, N'Brass Amethyst Crown/Tiara', N'Adds +1 to DEX.', 1250, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2824, N'Brass Sapphire Crown/Tiara', N'Adds +1 to CHA.', 1250, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2825, N'Brass Opal Crown/Tiara', N'Adds +1 to CON & CHA.', 3750, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2826, N'Brass Kronus Crown/Tiara', N'Adds +1 to DEX & WIS.', 3750, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2827, N'Brass Diamond Crown/Tiara', N'Adds +1 to STR & INT.', 3750, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2828, N'Brass Garnet Crown/Tiara', N'Adds +1 to Caster Level.', 3750, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2829, N'Brass Soul Crown/Tiara', N'Adds +1 to All Ability Scores.', 50250, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2830, N'Silver Ruby Crown/Tiara', N'Adds +2 to STR.', 3250, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2831, N'Silver Polarcrystal Crown/Tiara', N'Adds +2 to INT.', 3250, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2832, N'Silver Emerald Crown/Tiara', N'Adds +2 to WIS.', 3250, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2833, N'Silver Topaz Crown/Tiara', N'Adds +2 to CON.', 3250, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2834, N'Silver Amethyst Crown/Tiara', N'Adds +2 to DEX.', 3250, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2835, N'Silver Sapphire Crown/Tiara', N'Adds +2 to CHA.', 3250, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2836, N'Silver Opal Crown/Tiara', N'Adds +2 to CON & CHA.', 8250, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2837, N'Silver Kronus Crown/Tiara', N'Adds +2 to DEX & WIS.', 8250, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2838, N'Silver Diamond Crown/Tiara', N'Adds +2 to STR & INT.', 8250, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2839, N'Silver Garnet Crown/Tiara', N'Adds +2 to Caster Level.', 8250, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2840, N'Silver Soul Crown/Tiara', N'Adds +2 to All Ability Scores.', 101250, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2841, N'Gold Ruby Crown/Tiara', N'Adds +3 to STR.', 6500, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2842, N'Gold Polarcrystal Crown/Tiara', N'Adds +3 to INT.', 6500, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2843, N'Gold Emerald Crown/Tiara', N'Adds +3 to WIS.', 6500, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2844, N'Gold Topaz Crown/Tiara', N'Adds +3 to CON.', 6500, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2845, N'Gold Amethyst Crown/Tiara', N'Adds +3 to DEX.', 6500, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2846, N'Gold Sapphire Crown/Tiara', N'Adds +3 to CHA.', 6500, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2847, N'Gold Opal Crown/Tiara', N'Adds +3 to CON & CHA.', 16500, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2848, N'Gold Kronus Crown/Tiara', N'Adds +3 to DEX & WIS.', 16500, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2849, N'Gold Diamond Crown/Tiara', N'Adds +3 to STR & INT.', 16500, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2850, N'Gold Garnet Crown/Tiara', N'Adds +3 to Caster Level.', 16500, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2851, N'Gold Soul Crown/Tiara', N'Adds +3 to All Ability Scores.', 202500, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2852, N'Platinum Ruby Crown/Tiara', N'Adds +4 to STR.', 14800, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2853, N'Platinum Polarcrystal Crown/Tiara', N'Adds +4 to INT.', 14800, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2854, N'Platinum Emerald Crown/Tiara', N'Adds +4 to WIS.', 14800, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2855, N'Platinum Topaz Crown/Tiara', N'Adds +4 to CON.', 14800, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2856, N'Platinum Amethyst Crown/Tiara', N'Adds +4 to DEX.', 14800, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2857, N'Platinum Sapphire Crown/Tiara', N'Adds +4 to CHA.', 14800, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2858, N'Platinum Opal Crown/Tiara', N'Adds +4 to CON & CHA.', 34800, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2859, N'Platinum Kronus Crown/Tiara', N'Adds +4 to DEX & WIS.', 34800, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2860, N'Platinum Diamond Crown/Tiara', N'Adds +4 to STR & INT.', 34800, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2861, N'Platinum Garnet Crown/Tiara', N'Adds +4 to Caster Level.', 34800, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2862, N'Platinum Soul Crown/Tiara', N'Adds +4 to All Ability Scores.', 406800, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2863, N'Moonlight Ruby Crown/Tiara', N'Adds +5 to STR.', 31100, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2864, N'Moonlight Polarcrystal Crown/Tiara', N'Adds +5 to INT.', 31100, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2865, N'Moonlight Emerald Crown/Tiara', N'Adds +5 to WIS.', 31100, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2866, N'Moonlight Topaz Crown/Tiara', N'Adds +5 to CON.', 31100, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2867, N'Moonlight Amethyst Crown/Tiara', N'Adds +5 to DEX.', 31100, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2868, N'Moonlight Sapphire Crown/Tiara', N'Adds +5 to CHA.', 31100, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2869, N'Moonlight Opal Crown/Tiara', N'Adds +5 to CON & CHA.', 71100, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2870, N'Moonlight Kronus Crown/Tiara', N'Adds +5 to DEX & WIS.', 71100, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2871, N'Moonlight Diamond Crown/Tiara', N'Adds +5 to STR & INT.', 71100, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2872, N'Moonlight Garnet Crown/Tiara', N'Adds +5 to Caster Level.', 71100, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2873, N'Moonlight Soul Crown/Tiara', N'Adds +5 to All Ability Scores.', 815100, N'Headgear', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2874, N'Jynxing Jelly +1', N'Add to item while crafting. Increases the save DC of the item by +1. Can be used 1/day unless similar jelly is added to the item during item creation. More jelly added, more times a day item increase DC may be used.', 151, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2875, N'Jynxing Jelly +2', N'Add to item while crafting. Increases the save DC of the item by +2. Can be used 1/day unless similar jelly is added to the item during item creation. More jelly added, more times a day item increase DC may be used.', 291, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2876, N'Jynxing Jelly +3', N'Add to item while crafting. Increases the save DC of the item by +3. Can be used 1/day unless similar jelly is added to the item during item creation. More jelly added, more times a day item increase DC may be used.', 586, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2877, N'Jynxing Jelly +4', N'Add to item while crafting. Increases the save DC of the item by +4. Can be used 1/day unless similar jelly is added to the item during item creation. More jelly added, more times a day item increase DC may be used.', 1363, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2878, N'Jynxing Jelly +5', N'Add to item while crafting. Increases the save DC of the item by +5. Can be used 1/day unless similar jelly is added to the item during item creation. More jelly added, more times a day item increase DC may be used.', 2116, N'Raw Material', N'')
GO
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2879, N'Jynxing Gelatin +1', N'Add to item while crafting. Increases the save DC of the item by +1. This effect is permenant on the item in which it is created.', 1140, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2880, N'Jynxing Gelatin +2', N'Add to item while crafting. Increases the save DC of the item by +2. This effect is permenant on the item in which it is created.', 2440, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2881, N'Jynxing Gelatin +3', N'Add to item while crafting. Increases the save DC of the item by +3. This effect is permenant on the item in which it is created.', 5190, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2882, N'Jynxing Gelatin +4', N'Add to item while crafting. Increases the save DC of the item by +4. This effect is permenant on the item in which it is created.', 12560, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2883, N'Jynxing Gelatin +5', N'Add to item while crafting. Increases the save DC of the item by +5. This effect is permenant on the item in which it is created.', 19290, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2884, N'Gold Insect Hairpin', N'+3 diplomacy, +3 gather information', 555, N'Headgear', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2885, N'Platinum Insect Hairpin', N'+4 diplomacy, +4 gather information', 1205, N'Headgear', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2886, N'Brass T''shnamakan Hairpin', N'+5 diplomacy resistance', 840, N'Headgear', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2887, N'Spirit Orb (1st Circle) [T''shnamakan]', N'', 690, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2888, N'Silver T''shnmakan Hairpin', N' +10 diplomacy resistance', 1240, N'Headgear', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2889, N'Gold T''shnmakan Hairpin', N' +15 diplomacy resistance', 1790, N'Headgear', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2890, N'Platinum T''shnmakan Hairpin', N' +20 diplomacy resistance', 3490, N'Headgear', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2891, N'Moonlight T''shnmakan Hairpin', N' +25 diplomacy resistance', 6790, N'Headgear', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2892, N'Lesser Necklace of Fire Protection', N'Grants 2 Fire resist 
', 400, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2893, N'Lesser Necklace of Cold Protection', N'Grants 2 Cold resist 
', 400, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2894, N'Lesser Necklace of Sonic Protection', N'Grants 2 Sonic resist 
', 400, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2895, N'Lesser Necklace of Earth Protection', N'Grants 2 Earth resist 
', 400, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2896, N'Lesser Necklace of Electric Protection', N'Grants 2 Electric resist 
', 400, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2897, N'Lesser Necklace of Acid Protection', N'Grants 2 Acid resist 
', 400, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2898, N'Lesser Necklace of Vile Protection', N'Grants 2 Vile resist 
', 900, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2899, N'Lesser Necklace of Necrotic Protection', N'Grants 2 Necrotic resist 
', 900, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2900, N'Lesser Necklace of Radiant Protection', N'Grants 2 Radiant resist 
', 900, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2901, N'Lesser Necklace of Magic Protection', N'Grants 2 Magic resist 
', 900, N'Necklace', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2902, N'Necklace of St. Michael''s Claymore', N'Grants proficiency for Longsword', 600, N'Necklace', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2903, N'Hairpin of Subjugation', N' +1 to spell save DCs that target Will Saves', 820, N'Headgear', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2904, N'Symbol of Metatron', N'This silver wand has a statue of the archangel Metatron holding a sword.

When the spell Magic Weapon is cast, weapon becomes +2 instead of +1.

It also counts as a holy symbol.', 630, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2905, N'Symbol of Corellon', N'This silver wand has a statue of the archangel Corellon with a bow in one hand and a sword in the other.

Lesser Restoration becomes 1d6 instead of 1d4.

It also counts as a holy symbol.', 630, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2906, N'Symbol of Fharlanghn', N'This silver wand is carved into a symbol of a rising sun.

When you cast Freedom of Movement, as an additional swift action you can have it affect one additional creature within 30 ft.

It also counts as a holy symbol.', 630, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2907, N'Symbol of Moradin - Blacksmithing', N'This silver wand has a symbol of a hammer carved into it.
+3 to item creation rolls for blacksmithing.

It also counts as a holy symbol.', 630, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2908, N'Symbol of Moradin - Jewelcrafting', N'This silver wand has a symbol of a hammer carved into it.
+3 to item creation rolls for jewelcrafting.

It also counts as a holy symbol.', 630, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2909, N'Symbol of Moradin - Cooking', N'This silver wand has a symbol of a hammer carved into it.
+3 to item creation rolls for cooking.

It also counts as a holy symbol.', 630, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2910, N'Symbol of Moradin - Gardening', N'This silver wand has a symbol of a hammer carved into it.
+3 to item creation rolls for gardening.

It also counts as a holy symbol.', 630, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2911, N'Symbol of Moradin - Tanning', N'This silver wand has a symbol of a hammer carved into it.
+3 to item creation rolls for tanning.

It also counts as a holy symbol.', 630, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2912, N'Symbol of Moradin - Alchemy', N'This silver wand has a symbol of a hammer carved into it.
+3 to item creation rolls for alchemy.

It also counts as a holy symbol.', 630, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2913, N'Symbol of Moradin - Seamstress', N'This silver wand has a symbol of a hammer carved into it.
+3 to item creation rolls for seamstress.

It also counts as a holy symbol.', 630, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2914, N'Symbol of Moradin - Carpentry', N'This silver wand has a symbol of a hammer carved into it.
+3 to item creation rolls for carpentry.

It also counts as a holy symbol.', 630, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2915, N'Symbol of Moradin - Boneworker', N'This silver wand has a symbol of a hammer carved into it.
+3 to item creation rolls for boneworker.

It also counts as a holy symbol.', 630, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2916, N'Symbol of Moradin - Stonemason', N'This silver wand has a symbol of a hammer carved into it.
+3 to item creation rolls for stonemason.

It also counts as a holy symbol.', 630, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2917, N'Symbol of Pelor', N'This silver wand has a symbol of a large sun carved into it .

+3 to damage from Searing Light spell.

It also counts as a holy symbol.', 630, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2918, N'Symbol of Obad-Hai', N'This silver wand has a symbol of an old tree carved into it .

+20 ft. movement to Longstrider spell.

It also counts as a holy symbol.', 630, N'Weapon - Light', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2919, N'Necklace of Abundance', N'This brass necklace has been carved into the shape of an overflowing cornicopia.
Doubles amount when spell Create Food & Water is cast.', 300, N'Necklace', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2920, N'Ring of Enhanced Fortitude', N'The dull and uninspired designs on this cheap copper ring indicates the creator uses valuable items to produce mostly garbage jewelry no one would wear to impress anyone, but it does give the wearer a +1 bonus to Fortitude saves.', 895, N'Ring', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2921, N'Spirit Orb (1st Circle) [Pakalele]', N'', 690, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2922, N'Earing of Enhanced Fortitude', N'The dull and uninspired designs on this cheap copper ring indicates the creator uses valuable items to produce mostly garbage jewelry no one would wear to impress anyone, but it does give the wearer a +1 bonus to Fortitude saves.', 895, N'Earring', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2923, N'Earring of Enhanced Reflexes', N'The dull and uninspired designs on this cheap copper ring indicates the creator uses valuable items to produce mostly garbage jewelry no one would wear to impress anyone, but it does give the wearer a +1 bonus to to Reflex saves.', 895, N'Earring', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2924, N'Spirit Orb (1st Circle) [Scourge Serpent]', N'', 690, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2925, N'Ring of Enhanced Reflexes', N'The dull and uninspired designs on this cheap copper ring indicates the creator uses valuable items to produce mostly garbage jewelry no one would wear to impress anyone, but it does give the wearer a +1 bonus to to Reflex saves.', 895, N'Ring', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2926, N'Spirit Orb (1st Circle) [Merkot]', N'', 690, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2927, N'Earring of Enhanced Willpower', N'The dull and uninspired designs on this cheap copper ring indicates the creator uses valuable items to produce mostly garbage jewelry no one would
wear to impress anyone, but it does give the wearer a +1 bonus to Will saves.', 895, N'Earring', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2928, N'Ring of Enhanced Willpower', N'The dull and uninspired designs on this cheap copper ring indicates the creator uses valuable items to produce mostly garbage jewelry no one would
wear to impress anyone, but it does give the wearer a +1 bonus to Will saves.', 895, N'Ring', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2929, N'Earring of Great Fortitude', N'This less than shiny ring made of silver looks nice unless you closely inspect it. The workmanship can only be described as semi-professional at best.
However, it makes up for this by giving the wearer a +2 bonus to Fortitude saves', 1790, N'Earring', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2930, N'Ring of Great Fortitude', N'This less than shiny ring made of silver looks nice unless you closely inspect it. The workmanship can only be described as semi-professional at best.
However, it makes up for this by giving the wearer a +2 bonus to Fortitude saves', 1790, N'Ring', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2931, N'Spirit Orb (2nd Circle) [Thistlesnake]', N'', 1290, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2932, N'Earring of Lightning Reflexes', N'This less than shiny ring made of silver looks nice unless you closely inspect it. The workmanship can only be described as semi-professional at best.
However, it makes up for this by giving the wearer a +2 bonus to Reflex saves.', 1790, N'Earring', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2933, N'Ring of Lightning Reflexes', N'This less than shiny ring made of silver looks nice unless you closely inspect it. The workmanship can only be described as semi-professional at best.
However, it makes up for this by giving the wearer a +2 bonus to Reflex saves.', 1790, N'Ring', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2934, N'Earring of Iron Will', N'This less than shiny ring made of silver looks nice unless you closely inspect it. The workmanship can only be described as semi-professional at best.
However, it makes up for this by giving the wearer a +2 bonus to Will saves.', 1790, N'Earring', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2935, N'Ring of Iron Will', N'This less than shiny ring made of silver looks nice unless you closely inspect it. The workmanship can only be described as semi-professional at best.
However, it makes up for this by giving the wearer a +2 bonus to Will saves.', 1790, N'Ring', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2936, N'Ruby Moon Charm Earring', N'Reduces amount of time you need to sleep by 2 hours. (1 for Elf), +2 to saves vs. Sleep effects.', 1190, N'Earring', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2937, N'Aspect Mirror', N'Aspect mirrors allow you to converse with others, face to face, at nearly any distance

A typical aspect mirror looks like a plain, circular, silvered mirror, usually 1-1/2 feet in diameter 

As a standard action, you touch an aspect mirror and concentrate to activate it touching the mirror a second time and willing away the images it displays deactivates the item. An aspect mirror can function for as long as a user wishes and regardless of the wishes of other bearers of mirrors attuned to it.

Aspect mirrors are magical communication tools created in groups An aspect mirror allows you to see, hear, and speak as if you were in the same place as an attuned aspect mirror (one created as part of the same set as the one you hold) While you use a mirror, you and your location are visible in turn to those near the distant aspect mirror you’re communicating with Thus, two distant users can see, hear, and speak as if knowingly scrying on one another at the same time To use an aspect mirror, you activate both your own and another mirror of your choice (specified when you activate your mirror) The possessor of the other mirror does not need to be present at the mirror’s location, and you can scry on its location even without the knowledge of the other mirror’s owner Of course, other users of aspect mirrors attuned to your mirror can activate your mirror in the same manner Thus, owners of aspect mirrors often keep them covered or in extradimensional containers when they are not in use You cannot cast spells through an aspect mirror, although you can use a distant mirror to direct the subjects of enchantment spells you have already cast.', 1815, N'', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2938, N'Bracer of the Mystery Shocker', N'1/hour as a free action, you can add 2d6 Electric damage to an attack you make with your fist or melee weapon. 

Alternatively you can add 2d6 Electric damage to a Ranged touch attack. This attack gets +3 to hit if the enemy is wearing a lot of metal.', 2940, N'Bracers', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2939, N'Spirit Orb (2nd Circle) [Chain Snake]', N'', 1290, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2940, N'Pendant of Ancillary Gambit', N'As swift action, press shards to gain additional gambit use. 1/day', 2370, N'Necklace', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2941, N'Goggles of Spotrification', N'Pressing one of the jewel pebbles on the side of these goggles will shatter it. The magical energy released will make the goggles glow a bright green around the rims. For 3 rounds, the wearer gets a +15 to Spot and See Invisibility. (starts with 10 charges)', 750, N'Mask', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2942, N'Moonlight Insect Hairpin', N'+5 diplomacy, +5 gather information', 2805, N'Headgear', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2943, N'Ruby Moon Charm Bracers', N'Reduces amount of time you need to sleep by 2 hours. (1 for Elf), +2 to saves vs. Sleep effects.', 1190, N'Bracers', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2944, N'Wineskin Flowerpot', N'This flowerpot is made from the skins of a Firolena mixed with the pelt of a wolf. It looks like it was once a wineskin (or several) and converted into a flowerpot once it got too old.', 850, N'Raw Material', N'')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2945, N'Luminous Brass - Light Armor', N'Adds 10lbs and grants resist 15 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 15HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.
Also grants advantage to anyone attempting to use the heal skill on the wearer, can cast light 1/day, and conviction 1/day as a 5th level caster.', 3850, N'Armor - Light - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2946, N'Luminous Silver - Light Armor', N'Adds 10lbs and grants resist 30 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 30HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.
Also grants advantage to anyone attempting to use the heal skill on the wearer, can cast light 1/day, conviction 1/day, divine insight 1/day as a 5th level caster.', 6200, N'Armor - Light - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2947, N'Luminous Gold - Light Armor', N'Adds 10lbs and grants resist 45 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 45HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.
Also grants advantage to anyone attempting to use the heal skill on the wearer, can cast light 1/day, conviction 1/day, divine insight 1/day, Prayer 1/day as a 5th level caster.', 8900, N'Armor - Light - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2948, N'Luminous Platinum - Light Armor', N'Adds 10lbs and grants resist 60 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 60HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.
Also grants advantage to anyone attempting to use the heal skill on the wearer, can cast light 1/day, conviction 1/day, divine insight 1/day, Prayer 1/day, Restoration 1/day as a 5th level caster.', 29300, N'Armor - Light - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2949, N'Luminous Moonlight - Light Armor', N'Adds 10lbs and grants resist 75 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 75HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.
Also grants advantage to anyone attempting to use the heal skill on the wearer, can cast light 1/day, conviction 1/day, divine insight 1/day, Prayer 1/day, Restoration 1/day, True Seeing 1/day as a 5th level caster.
', 47600, N'Armor - Light - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2950, N'Luminous Silver - Medium Armor', N'Adds 10lbs and grants resist 20 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 20HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 4400, N'Armor - Medium - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2951, N'Luminous Brass - Medium Armor', N'Adds 10lbs and grants resist 10 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 10HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 700, N'Armor - Medium - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2952, N'Luminous Gold - Medium Armor', N'Adds 10lbs and grants resist 30 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 30HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 8800, N'Armor - Medium - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2953, N'Luminous Platinum - Medium Armor', N'Adds 10lbs and grants resist 40 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 40HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 24800, N'Armor - Medium - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2954, N'Luminous Moonlight - Medium Armor', N'Adds 10lbs and grants resist 50 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 50HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 55600, N'Armor - Medium - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2955, N'Luminous Brass - Heavy Armor', N'Adds 10lbs and grants resist 15 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 10HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 1900, N'Armor - Heavy - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2956, N'Luminous Silver - Heavy Armor', N'Adds 10lbs and grants resist 30 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 20HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 8500, N'Armor - Heavy - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2957, N'Luminous Gold - Heavy Armor', N'Adds 10lbs and grants resist 45 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 30HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 16200, N'Armor - Heavy - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2958, N'Luminous Platinum - Heavy Armor', N'Adds 10lbs and grants resist 60 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 40HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 44800, N'Armor - Heavy - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2959, N'Luminous Moonlight - Heavy Armor', N'Adds 10lbs and grants resist 75 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 50HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 100600, N'Armor - Heavy - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2960, N'Luminous Brass - Buckler Shield', N'Adds 10lbs and grants resist 5 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 10HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 300, N'Shield - Buckler - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2961, N'Luminous Silver - Buckler Shield', N'Adds 10lbs and grants resist 10 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 20HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 1600, N'Shield - Buckler - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2962, N'Luminous Gold - Buckler Shield', N'Adds 10lbs and grants resist 15 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 30HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 3200, N'Shield - Buckler - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2963, N'Luminous Platinum - Buckler Shield', N'Adds 10lbs and grants resist 20 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 40HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 8800, N'Shield - Buckler - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2964, N'Luminous Moonlight - Buckler Shield', N'Adds 10lbs and grants resist 25 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 50HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 19600, N'Shield - Buckler - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2965, N'Luminous Brass - Light Shield', N'Adds 10lbs and grants resist 10 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 10HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 400, N'Shield - Light - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2966, N'Luminous Silver - Light Shield', N'Adds 10lbs and grants resist 20 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 20HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 2300, N'Shield - Light - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2967, N'Luminous Gold - Light Shield', N'Adds 10lbs and grants resist 30 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 30HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 4600, N'Shield - Light - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2968, N'Luminous Platinum - Light Shield', N'Adds 10lbs and grants resist 40 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 40HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 12800, N'Shield - Light - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2969, N'Luminous Moonlight - Light Shield', N'Adds 10lbs and grants resist 50 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 50HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 28600, N'Shield - Light - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2970, N'Luminous Brass - Heavy Shield', N'Adds 10lbs and grants resist 10 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 10HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 600, N'Shield - Heavy - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2971, N'Luminous Silver - Heavy Shield', N'Adds 10lbs and grants resist 20 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 20HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 3700, N'Shield - Heavy - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2972, N'Luminous Gold - Heavy Shield', N'Adds 10lbs and grants resist 30 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 30HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 7400, N'Shield - Heavy - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2973, N'Luminous Platinum - Heavy Shield', N'Adds 10lbs and grants resist 40 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 40HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 20800, N'Shield - Heavy - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2974, N'Luminous Moonlight - Heavy Shield', N'Adds 10lbs and grants resist 50 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 50HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 46600, N'Shield - Heavy - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2975, N'Luminous Brass - Tower Shield', N'Adds 10lbs and grants resist 15 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 10HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 700, N'Shield - Tower - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2976, N'Luminous Silver - Tower Shield', N'Adds 10lbs and grants resist 30 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 20HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 4400, N'Shield - Tower - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2977, N'Luminous Gold - Tower Shield', N'Adds 10lbs and grants resist 45 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 30HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 8800, N'Shield - Tower - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2978, N'Luminous Platinum - Tower Shield', N'Adds 10lbs and grants resist 60 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 40HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 24800, N'Shield - Tower - Mod', N'Jewelcrafting')
GO
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2979, N'Luminous Moonlight - Tower Shield', N'Adds 10lbs and grants resist 75 to the element matching the gems inlayed in it.  When hit with that element, you can be healed up to 50HP per day as the paladin''s lay on hands (a swift action.)  This requires gems to be inset to have any effect.', 55600, N'Shield - Tower - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2980, N'Luminous Brass - Light Melee Weapon', N'Adds +1 to hit on attack rolls', 400, N'Weapon - Light - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2981, N'Luminous Brass - 1H Melee Weapon', N'Adds +1 to hit on attack rolls', 500, N'Weapon - 1H - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2982, N'Luminous Brass - 2H Melee Weapon', N'Adds +1 to hit on attack rolls', 600, N'Weapon - 2H - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2983, N'Luminous Silver - Light Melee Weapon', N'Adds +2 to hit on attack rolls', 2300, N'Weapon - Light - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2984, N'Luminous Silver - 1H Melee Weapon', N'Adds +2 to hit on attack rolls', 3000, N'Weapon - 1H - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2985, N'Luminous Silver - 2H Melee Weapon', N'Adds +2 to hit on attack rolls', 3700, N'Weapon - 2H - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2986, N'Luminous Gold - Light Melee Weapon', N'Adds +3 to hit on attack rolls', 4600, N'Weapon - Light - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2987, N'Luminous Gold - 1H Melee Weapon', N'Adds +3 to hit on attack rolls', 6000, N'Weapon - 1H - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2988, N'Luminous Gold - 2H Melee Weapon', N'Adds +3 to hit on attack rolls', 7400, N'Weapon - 2H - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2989, N'Luminous Platinum - Light Melee Weapon', N'Adds +4 to hit on attack rolls', 12800, N'Weapon - Light - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2990, N'Luminous Platinum - 1H Melee Weapon', N'Adds +4 to hit on attack rolls', 16800, N'Weapon - 1H - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2991, N'Luminous Platinum - 2H Melee Weapon', N'Adds +4 to hit on attack rolls', 172000, N'Weapon - 2H - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2992, N'Luminous Moonlight - Light Melee Weapon', N'Adds +5 to hit on attack rolls', 28600, N'Weapon - Light - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2993, N'Luminous Moonlight - 1H Melee Weapon', N'Adds +5 to hit on attack rolls', 37600, N'Weapon - 1H - Mod', N'Jewelcrafting')
INSERT [dbo].[items] ([id], [name], [description], [cost], [type], [subtype]) VALUES (2994, N'Luminous Moonlight - 2H Melee Weapon', N'Adds +5 to hit on attack rolls', 385000, N'Weapon - 2H - Mod', N'Jewelcrafting')
SET IDENTITY_INSERT [dbo].[items] OFF
ALTER TABLE [dbo].[items] ADD  CONSTRAINT [DF_loot_description]  DEFAULT ('') FOR [description]
GO
ALTER TABLE [dbo].[items] ADD  CONSTRAINT [DF_loot_qty]  DEFAULT ((0)) FOR [cost]
GO
ALTER TABLE [dbo].[items] ADD  CONSTRAINT [DF_items_type]  DEFAULT ('') FOR [subtype]
GO
