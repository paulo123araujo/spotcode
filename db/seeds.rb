#========================
# SONGS
#========================

tmp_dir = Rails.root.join("tmp")


rock = Category.create!(name: "Rock")
rock.image.attach(io: File.open("#{tmp_dir}/seed_files/rock.png"), filename: "rock.png", content_type: 'image/png')
rock.save

blues = Category.create!(name: "Blues")
blues.image.attach(io: File.open("#{tmp_dir}/seed_files/blues.png"), filename: "blues.png", content_type: 'image/png')
blues.save

country = Category.create!(name: "Country")
country.image.attach(io: File.open("#{tmp_dir}/seed_files/country.png"), filename: "country.png", content_type: 'image/png')
country.save

jazz = Category.create!(name: "Jazz")
jazz.image.attach(io: File.open("#{tmp_dir}/seed_files/jazz.png"), filename: "jazz.png", content_type: 'image/png')
jazz.save

# ANDREW HOWS

andrew_howes = Artist.create!(name: "Andrew Howes")
andrew_howes.photo.attach(io: File.open("#{tmp_dir}/seed_files/andrew_howes.jpg"), filename: "andrew_howes.jpg", content_type: 'image/jpeg')
andrew_howes.save

gubernator = andrew_howes.albums.create!(title: "Gubernator", date: Time.strptime("18/05/2015", "%d/%m/%Y"), category_id: rock.id)
gubernator.cover.attach(io: File.open("#{tmp_dir}/seed_files/gubernator.jpg"), filename: "gubernator.jpg", content_type: 'image/jpeg')
gubernator.save

dumb_luck = gubernator.songs.create!(title: "Dumb Luck", played_count: Random.rand(1000))
dumb_luck.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/dumb_luck.mp3"), filename: "dumb_luck.mp3")
dumb_luck.save
helmsman = gubernator.songs.create!(title: "Helmsman", played_count: Random.rand(1000))
helmsman.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/helmsman.mp3"), filename: "helmsman.mp3")
helmsman.save
crimea = gubernator.songs.create!(title: "Crimea", played_count: Random.rand(1000))
crimea.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/crimea.mp3"), filename: "crimea.mp3")
crimea.save
traitors_gate = gubernator.songs.create!(title: "Traitors Gate", played_count: Random.rand(1000))
traitors_gate.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/traitors_gate.mp3"), filename: "traitors_gate.mp3")
traitors_gate.save

the_great_bear = andrew_howes.albums.create!(title: "The Great Bear", date: Time.strptime("19/05/2015", "%d/%m/%Y"), category_id: rock.id)
the_great_bear.cover.attach(io: File.open("#{tmp_dir}/seed_files/the_great_bear.jpg"), filename: "the_great_bear.jpg", content_type: 'image/jpeg')
the_great_bear.save

big_drop = the_great_bear.songs.create!(title: "Big Drop", played_count: Random.rand(1000))
big_drop.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/big_drop.mp3"), filename: "big_drop.mp3")
big_drop.save
four_am = the_great_bear.songs.create!(title: "4am", played_count: Random.rand(1000))
four_am.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/4_am.mp3"), filename: "4_am.mp3")
four_am.save
waiting = the_great_bear.songs.create!(title: "Waiting", played_count: Random.rand(1000))
waiting.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/waiting.mp3"), filename: "waiting.mp3")
waiting.save


# YELLOW CHAIR

yellow_chair = Artist.create!(name: "Yellow Chair")
yellow_chair.photo.attach(io: File.open("#{tmp_dir}/seed_files/yellow_chair.jpg"), filename: "yellow_chair.jpg", content_type: 'image/jpeg')
yellow_chair.save

barcelona = yellow_chair.albums.create!(title: "Barcelona", date: Time.strptime("07/01/2008", "%d/%m/%Y"), category_id: rock.id)
barcelona.cover.attach(io: File.open("#{tmp_dir}/seed_files/barcelona.jpg"), filename: "barcelona.jpg", content_type: 'image/jpeg')
barcelona.save

via_laietana = barcelona.songs.create!(title: "Via Laietana", played_count: Random.rand(1000))
via_laietana.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/via_laietana.mp3"), filename: "via_laietana.mp3")
via_laietana.save
passeig_de_gracia = barcelona.songs.create!(title: "Passeig de Gràcia", played_count: Random.rand(1000))
passeig_de_gracia.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/passeig_de_gracia.mp3"), filename: "passeig_de_gracia.mp3")
passeig_de_gracia.save
itaca = barcelona.songs.create!(title: "Itaca", played_count: Random.rand(1000))
itaca.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/itaca.mp3"), filename: "itaca.mp3")
itaca.save

everything_zen = yellow_chair.albums.create!(title: "Everything Zen", date: Time.strptime("01/07/2013", "%d/%m/%Y"), category_id: rock.id)
everything_zen.cover.attach(io: File.open("#{tmp_dir}/seed_files/everything_zen.jpg"), filename: "everything_zen.jpg", content_type: 'image/jpeg')
everything_zen.save

everything_zen_music = everything_zen.songs.create!(title: "Everything Zen", played_count: Random.rand(1000))
everything_zen_music.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/everything_zen.mp3"), filename: "everything_zen.mp3")
everything_zen_music.save


meng_jia = yellow_chair.albums.create!(title: "Meng Jia", date: Time.strptime("07/03/2014", "%d/%m/%Y"), category_id: rock.id)
meng_jia.cover.attach(io: File.open("#{tmp_dir}/seed_files/meng_jia.jpg"), filename: "meng_jia.jpg", content_type: 'image/jpeg')
meng_jia.save

malvinas_go_go = meng_jia.songs.create!(title: "Malvinas Go-Go", played_count: Random.rand(1000))
malvinas_go_go.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/malvinas_go_go.mp3"), filename: "malvinas_go_go.mp3")
malvinas_go_go.save
coronation_pope_francis = meng_jia.songs.create!(title: "Coronation of Pope Francis", played_count: Random.rand(1000))
coronation_pope_francis.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/coronation_pope_francis.mp3"), filename: "coronation_pope_francis.mp3")
coronation_pope_francis.save


# WAYLON THORNTON

waylon_thornton = Artist.create!(name: "Waylon Thornton")
waylon_thornton.photo.attach(io: File.open("#{tmp_dir}/seed_files/waylon_thornton.jpg"), filename: "waylon_thornton.jpg", content_type: 'image/jpeg')
waylon_thornton.save

mystery_club = waylon_thornton.albums.create!(title: "Mystery Club", date: Time.strptime("29/06/2011", "%d/%m/%Y"), category_id: rock.id)
mystery_club.cover.attach(io: File.open("#{tmp_dir}/seed_files/mystery_club.jpg"), filename: "mystery_club.jpg", content_type: 'image/jpeg')
mystery_club.save

wobbly_way = mystery_club.songs.create!(title: "Wobbly Way", played_count: Random.rand(1000))
wobbly_way.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/wobbly_way.mp3"), filename: "wobbly_way.mp3")
wobbly_way.save
very_hazel = mystery_club.songs.create!(title: "Very Hazel", played_count: Random.rand(1000))
very_hazel.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/very_hazel.mp3"), filename: "very_hazel.mp3")
very_hazel.save
favorite_secrets = mystery_club.songs.create!(title: "Favorite Secrets", played_count: Random.rand(1000))
favorite_secrets.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/favorite_secrets.mp3"), filename: "favorite_secrets.mp3")
favorite_secrets.save




# BREAK THE BANS

break_the_bans = Artist.create!(name: "Break the Bans")
break_the_bans.photo.attach(io: File.open("#{tmp_dir}/seed_files/break_the_bans.jpg"), filename: "break_the_bans.jpg", content_type: 'image/jpeg')
break_the_bans.save

covers_besides = break_the_bans.albums.create!(title: "Covers & B-sides", date: Time.strptime("29/07/2013", "%d/%m/%Y"), category_id: blues.id)
covers_besides.cover.attach(io: File.open("#{tmp_dir}/seed_files/covers_besides.jpg"), filename: "covers_besides.jpg", content_type: 'image/jpeg')
covers_besides.save

how_can_i_love_her = covers_besides.songs.create!(title: "How can I love her", played_count: Random.rand(1000))
how_can_i_love_her.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/how_can_i_love_her.mp3"), filename: "how_can_i_love_her.mp3")
how_can_i_love_her.save

# CULLAH

cullah = Artist.create!(name: "Cullah")
cullah.photo.attach(io: File.open("#{tmp_dir}/seed_files/cullah.jpg"), filename: "cullah.jpg", content_type: 'image/jpeg')
cullah.save

be_love_not_fear = cullah.albums.create!(title: "Be Love Not Fear", date: Time.strptime("29/07/2013", "%d/%m/%Y"), category_id: blues.id)
be_love_not_fear.cover.attach(io: File.open("#{tmp_dir}/seed_files/be_love_not_fear.jpg"), filename: "be_love_not_fear.jpg", content_type: 'image/jpeg')
be_love_not_fear.save

save_my_soul = be_love_not_fear.songs.create!(title: "Save my Soul", played_count: Random.rand(1000))
save_my_soul.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/save_my_soul.mp3"), filename: "save_my_soul.mp3")
save_my_soul.save
who_am_i = be_love_not_fear.songs.create!(title: "Who am I?", played_count: Random.rand(1000))
who_am_i.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/who_am_i.mp3"), filename: "who_am_i.mp3")
who_am_i.save
jane_the_ripper = be_love_not_fear.songs.create!(title: "Jane the Ripper", played_count: Random.rand(1000))
jane_the_ripper.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/jane_the_ripper.mp3"), filename: "jane_the_ripper.mp3")
jane_the_ripper.save

trinity = cullah.albums.create!(title: "Trinity", date: Time.strptime("27/04/2016", "%d/%m/%Y"), category_id: blues.id)
trinity.cover.attach(io: File.open("#{tmp_dir}/seed_files/trinity.jpg"), filename: "trinity.jpg", content_type: 'image/jpeg')
trinity.save

freed_from_greed = trinity.songs.create!(title: "Freed from Greed", played_count: Random.rand(1000))
freed_from_greed.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/freed_from_greed.mp3"), filename: "freed_from_greed.mp3")
freed_from_greed.save
aisling = trinity.songs.create!(title: "Aisling", played_count: Random.rand(1000))
aisling.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/aisling.mp3"), filename: "aisling.mp3")
aisling.save




# HANDMADE MOMENTS

handmade_moments = Artist.create!(name: "Handmade Moments")
handmade_moments.photo.attach(io: File.open("#{tmp_dir}/seed_files/handmade_moments.jpg"), filename: "handmade_moments.jpg")
handmade_moments.save

paw_paw_tree = handmade_moments.albums.create!(title: "Paw Paw Tree", date: Time.strptime("29/07/2013", "%d/%m/%Y"), category_id: country.id)
paw_paw_tree.cover.attach(io: File.open("#{tmp_dir}/seed_files/paw_paw_tree.jpg"), filename: "paw_paw_tree.jpg", content_type: 'image/jpeg')
paw_paw_tree.save

junkie = paw_paw_tree.songs.create!(title: "Junkie", played_count: Random.rand(1000))
junkie.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/junkie.mp3"), filename: "junkie.mp3")
junkie.save
fighting_a_mountain = paw_paw_tree.songs.create!(title: "Fighting a Mountain", played_count: Random.rand(1000))
fighting_a_mountain.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/fighting_a_mountain.mp3"), filename: "fighting_a_mountain.mp3")
fighting_a_mountain.save
wanderin_eyes = paw_paw_tree.songs.create!(title: "Wanderin' Eyes", played_count: Random.rand(1000))
wanderin_eyes.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/wanderin_eyes.mp3"), filename: "wanderin_eyes.mp3")
wanderin_eyes.save
human_hands = paw_paw_tree.songs.create!(title: "Human Hands", played_count: Random.rand(1000))
human_hands.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/human_hands.mp3"), filename: "human_hands.mp3")
human_hands.save
coffee_chocolate_earth = paw_paw_tree.songs.create!(title: "Coffee, Chocolate, Earth", played_count: Random.rand(1000))
coffee_chocolate_earth.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/coffee_chocolate_earth.mp3"), filename: "coffee_chocolate_earth.mp3")
coffee_chocolate_earth.save



# DEE YAN-KEY

dee_yan_key = Artist.create!(name: "Dee Yan-Key")
dee_yan_key.photo.attach(io: File.open("#{tmp_dir}/seed_files/dee_yan_key.jpg"), filename: "dee_yan_key.jpg", content_type: 'image/jpeg')
dee_yan_key.save

years_and_years_ago = dee_yan_key.albums.create!(title: "Years and Years Ago",  date: Time.strptime("17/05/2011", "%d/%m/%Y"), category_id: jazz.id)
years_and_years_ago.cover.attach(io: File.open("#{tmp_dir}/seed_files/years_and_years_ago.jpg"), filename: "years_and_years_ago.jpg", content_type: 'image/jpeg')
years_and_years_ago.save

lazy = years_and_years_ago.songs.create!(title: "Lazy", played_count: Random.rand(1000))
lazy.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/lazy.mp3"), filename: "lazy.mp3")
lazy.save
snow = years_and_years_ago.songs.create!(title: "Snow", played_count: Random.rand(1000))
snow.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/snow.mp3"), filename: "snow.mp3")
snow.save
grief = years_and_years_ago.songs.create!(title: "Grief", played_count: Random.rand(1000))
grief.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/grief.mp3"), filename: "grief.mp3")
grief.save
clowns = years_and_years_ago.songs.create!(title: "Clowns", played_count: Random.rand(1000))
clowns.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/clowns.mp3"), filename: "clowns.mp3")
clowns.save


mans_life = dee_yan_key.albums.create!(title: "A Man's Life",  date: Time.strptime("17/09/2012", "%d/%m/%Y"), category_id: jazz.id)
mans_life.cover.attach(io: File.open("#{tmp_dir}/seed_files/mans_life.jpg"), filename: "mans_life.jpg", content_type: 'image/jpeg')
mans_life.save

life = mans_life.songs.create!(title: "Life", played_count: Random.rand(1000))
life.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/life.mp3"), filename: "life.mp3")
life.save
death_redemption = mans_life.songs.create!(title: "Death & Redemption", played_count: Random.rand(1000))
death_redemption.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/death_redemption.mp3"), filename: "death_redemption.mp3")
death_redemption.save


aldebaran = dee_yan_key.albums.create!(title: "Aldebaran",  date: Time.strptime("30/01/2012", "%d/%m/%Y"), category_id: jazz.id)
aldebaran.cover.attach(io: File.open("#{tmp_dir}/seed_files/aldebaran.jpg"), filename: "aldebaran.jpg", content_type: 'image/jpeg')
aldebaran.save

antares, = aldebaran.songs.create!(title: "Antares", played_count: Random.rand(1000))
antares.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/antares.mp3"), filename: "antares.mp3")
antares.save


# KING IMAGINE

king_imagine = Artist.create!(name: "King Imagine")
king_imagine.photo.attach(io: File.open("#{tmp_dir}/seed_files/king_imagine.jpg"), filename: "king_imagine.jpg", content_type: 'image/jpeg')
king_imagine.save

inside = king_imagine.albums.create!(title: "Inside",  date: Time.strptime("30/09/2012", "%d/%m/%Y"), category_id: jazz.id)
inside.cover.attach(io: File.open("#{tmp_dir}/seed_files/inside.jpg"), filename: "inside.jpg", content_type: 'image/jpeg')
inside.save

ivy = inside.songs.create!(title: "Ivy", played_count: Random.rand(1000))
ivy.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/ivy.mp3"), filename: "ivy.mp3")
ivy.save
escape = inside.songs.create!(title: "Escape", played_count: Random.rand(1000))
escape.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/escape.mp3"), filename: "escape.mp3")
escape.save



#========================
# USERS
#========================

freddie_mercury = User.create!(name: "Freddie Mercury", email: "freddie@mercury.com", password: "123456", password_confirmation: "123456")
freddie_mercury.favorites.create!(favoritable: trinity)
freddie_mercury.favorites.create!(favoritable: paw_paw_tree)
freddie_mercury.favorites.create!(favoritable: everything_zen)
freddie_mercury.favorites.create!(favoritable: gubernator)
freddie_mercury.recently_heards.create!(album: inside)
freddie_mercury.recently_heards.create!(album: trinity)
freddie_mercury.recently_heards.create!(album: gubernator)
freddie_mercury.recently_heards.create!(album: the_great_bear)
freddie_mercury.save

diana_ross = User.create!(name: "Diana Ross", email: "diana@ross.com", password: "123456", password_confirmation: "123456")
diana_ross.favorites.create!(favoritable: trinity)
diana_ross.recently_heards.create!(album: the_great_bear)
diana_ross.recently_heards.create!(album: paw_paw_tree)
diana_ross.recently_heards.create!(album: aldebaran)
diana_ross.save

michael_jackson = User.create!(name: "Michael Jackson", email: "michael@jackson.com", password: "123456", password_confirmation: "123456")
michael_jackson.favorites.create!(favoritable: trinity)
michael_jackson.favorites.create!(favoritable: paw_paw_tree)
michael_jackson.save

celine_dion = User.create!(name: "Celine Dion", email: "celine@dion.com", password: "123456", password_confirmation: "123456")
celine_dion.favorites.create!(favoritable: trinity)
celine_dion.favorites.create!(favoritable: everything_zen)
celine_dion.save
