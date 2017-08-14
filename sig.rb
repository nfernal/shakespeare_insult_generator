#!/usr/bin/ruby

require 'pp'

column1 = %w(
artless
bawdy
beslubbering
bootless
churlish
cockered
clouted
craven
currish
dankish
dissembling
droning
errant
fawning
fobbing
froward
frothy
gleeking
goatish
gorbellied
impertinent
infectious
jarring
loggerheaded
lumpish
mammering
mangled
mewling
paunchy
pribbling
puking
puny
qualling
rank
reeky
roguish
ruttish
saucy
spleeny
spongy
surly
tottering
unmuzzled
vain
venomed
villainous
warped
wayward
weedy
yeasty
cullionly
fusty
caluminous
wimpled
burly-boned
misbegotten
odiferous
poisonous
fishified
Wart-necked
)

column2 = %w(
base-court
bat-fowling
beef-witted
beetle-headed
boil-brained
clapper-clawed
clay-brained
common-kissing
crook-pated
dismal-dreaming
dizzy-eyed
doghearted
dread-bolted
earth-vexing
elf-skinned
fat-kidneyed
fen-sucked
flap-mouthed
fly-bitten
folly-fallen
fool-born
full-gorged
guts-griping
half-faced
hasty-witted
hedge-born
hell-hated
idle-headed
ill-breeding
ill-nurtured
knotty-pated
milk-livered
motley-minded
onion-eyed
plume-plucked
pottle-deep
pox-marked
reeling-ripe
rough-hewn
rude-growing
rump-fed
shard-borne
sheep-biting
spur-galled
swag-bellied
tardy-gaited
tickle-brained
toad-spotted
unchin-snouted
weather-bitten
whoreson
malmsey-nosed
rampallian
lily-livered
scurvy-valiant
brazen-faced
unwash'd
bunch-back'd
leaden-footed
muddy-mettled
pigeon-liver'd
scale-sided
)

column3 = %w(
apple-john
baggage
barnacle
bladder
boar-pig
bugbear
bum-bailey
canker-blossom
clack-dish
clotpole
coxcomb
codpiece
death-token
dewberry
flap-dragon
flax-wench
flirt-gill
foot-licker
fustilarian
giglet
gudgeon
haggard
harpy
hedge-pig
horn-beast
hugger-mugger
joithead
lewdster
lout
maggot-pie
malt-worm
mammet
measle
minnow
miscreant
moldwarp
mumble-news
nut-hook
pigeon-egg
pignut
puttock
pumpion
ratsbane
scut
skainsmate
strumpet
varlot
vassal
whey-face
wagtail
knave
blind-worm
popinjay
scullian
jolt-head
malcontent
devil-monk
toad
rascal
Basket-Cockle
)

system "clear"

puts "**************************************************************"
File.open("ascii_art/title.txt").each do |line|
  puts line
end
puts "**************************************************************"

puts ""

def insulter(c1, c2, c3)
  "#{c1.sample} #{c2.sample} #{c3.sample}"
end

input_array = ARGV
counter = 0

if input_array.empty?
  puts "\"#{insulter(column1, column2, column3)}\""
elsif input_array.each do |arg|
  if  input_array.count > 0 && input_array[0].match(/^[0-9]+$/)
    arg.to_i.times {
      puts "\"#{insulter(column1, column2, column3)}\""
    }
  elsif input_array.count == 1 && input_array[0].match(/^[a-zA-Z]+$/)
    puts "#{arg.capitalize} is a #{insulter(column1, column2, column3)}"
  elsif input_array.count >= 2 && input_array[0].match(/^[a-zA-Z]+$/)
    if counter == 0
      print "#{arg.capitalize} is a \"#{insulter(column1, column2, column3)}\""
      counter += 1
    else
     print " and #{arg.capitalize} is a \"#{insulter(column1, column2, column3)}\""
    end

  else
    statement = input_array.count > 1 ? 'are not valid arguments.' : 'is not a valid argument'
    puts "#{arg} #{statement}"
  end
end
end

puts ""
