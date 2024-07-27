# Description

I have heard that the admin has used a weak password policy, can you find the enable password ?

note: wrap it up in microCTF{}

Author: Suncatcher
Points: 275

# Solution
we can see that the file `Showrun.txt` contain a configuration a cisco router and we need to find the enable password.
first thing we notice is the file contain two password from the type 7 that can be decrypted
one for the console and another for vty i used this [website](https://packetlife.net/toolbox/type7/)
`080C454D1B163718071F091615282B26203A2E16 = MicroRouter_console`
`080C454D1B163718071F0916153D3031 = MicroRouter_vty`
 we can see that the admin use always MicroRouter_'tool' so that what he means in the description by weak policies so maybe the flag is `MicroRouter_enable`
 and yes its true

Flag: `microCTF{MicroRouter_enable}`

