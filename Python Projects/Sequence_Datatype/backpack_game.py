#0 start backpack game
print('-'*50)
pack = []
print('0. Staring journey with empty backpack')

print('🎒', pack)
print('-'*50)

#1️⃣ Pickup StarterKit Item
#------------------------------
print('1. 📦 Picking Up Starterkit (Armor, Shield, Sword, Potion)')
pack.append('Armor')
pack.append('Shield')
pack.append('Sword')
pack.append('Potion')
print('🎒', pack)
print('-'*50)


#2️⃣ Loot a Treasure Chest
#------------------------------
chest = ['Map', 'Potion', 'Compass', 'Potion']
pack+=chest
#backpack.extend(chest)

print('2. 🪙 Loot a Treasure Chest!!')
print(f'Chest : {chest}')

print('🎒', pack)
print('-'*50)


#3️⃣ Visit Merchant
#------------------------------
print('3. 👨‍🌾 Visiting Merchant')
print('-- Selling the Shield')
print('-- Upgrading Sword --> Legendary Sword')
pack.remove('Shield')
idx = pack.index('Sword')
pack[idx] = 'Legendary Sword'

print('🎒', pack)
print('-'*50)


#4️⃣ Check Inventory
#------------------------------
print('4. 🔍 Checking Backpack')
print('🎒', pack)

total_count = len(pack)
unique_items = set(pack)
unique_count = len(unique_items)
potion_count = pack.count('Potion')

print(f'There are {total_count} Items in total.')
print(f'There are {unique_count} Unique Items')
print(f'There are {potion_count} Potions')
print('-'*50)

#5️⃣ Dropped The Backpack
#------------------------------
print('5. 😓 Dropped the backup upside down....')
pack.reverse()

print('🎒', pack)
print('-'*50)


#6️⃣ Sorting Items
#------------------------------
print('6. ➡️ Sorting Item : ')
pack.sort()

print('🎒', pack)
print('-'*50)


#7️⃣ 3 Items stolen while taking nap...
#---------------------------------------
print('7. 😴 Item stolen while taking Nap')
a = pack.pop()
b = pack.pop(2)
c = pack.pop()
stolen = [a,b,c]

print(f'Stolen Items: {stolen}')
print('🎒', pack)
print('-'*50)


#8️⃣ Found Magic Ring
#---------------------------------------
print('8. 💍 Found Magic Ring and Coin Pouch')
ring = 'Magic Ring'
coin_pouch = ['Gold Coin', 'Silver Coin']
pack.insert(0, ring)
pack.append(coin_pouch)

print('🎒', pack)
print('-'*50)


#9️⃣ Half items have Teleported
#---------------------------------------
print('9. 😤 Half items disappeared....Damn You Mystical Ring...!')
count = len(pack)
half = count // 2
#half = int(count // 2)
pack = pack[half:]

print('🎒', pack)
print('-'*50)


#🔟 Bandit emptied backpack
#---------------------------------------
print('10. 🥷 Bandit stole my Backpack....')
pack = None

print('🎒', pack)
print('-'*50)