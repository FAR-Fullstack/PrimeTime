require "open-uri"

puts "Destroying the db"
Picture.destroy_all
PastEvent.destroy_all
FutureEvent.destroy_all
User.destroy_all

puts "Creating user"
User.create({email: "jaeyo.lee@primetimefr.com", password: "adminpassword"}) 

puts "Creating past events"
# file1 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589793297/K-STREET%20FOOD%20FESTIVAL/ks10_ptaur6.jpg")
# file2 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589793324/K-STREET%20FOOD%20FESTIVAL/ks11_e4csal.jpg")
# file3 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589793319/K-STREET%20FOOD%20FESTIVAL/ks13_fxwvgw.jpg")
# file4 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589793305/K-STREET%20FOOD%20FESTIVAL/ks14_d4oust.jpg")
# file5 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589793367/K-STREET%20FOOD%20FESTIVAL/ks15_rsxenu.jpg")
# file6 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589793336/K-STREET%20FOOD%20FESTIVAL/ks16_jbp3dj.jpg")
# file7 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589793383/K-STREET%20FOOD%20FESTIVAL/ks19_txkyxs.jpg")
# file8 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589793267/K-STREET%20FOOD%20FESTIVAL/ks1_bokvtu.jpg")
# file9 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589793350/K-STREET%20FOOD%20FESTIVAL/ks20_ctkefp.jpg")
# file10 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589793327/K-STREET%20FOOD%20FESTIVAL/ks25_vvqsh6.jpg")
# file11 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589793357/K-STREET%20FOOD%20FESTIVAL/ks26_icw2ea.jpg")
# file12 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589793378/K-STREET%20FOOD%20FESTIVAL/ks27_srm8eb.jpg")
# file13 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589793391/K-STREET%20FOOD%20FESTIVAL/ks29_kvj72z.jpg")
# file14 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589793285/K-STREET%20FOOD%20FESTIVAL/ks2_uzvo0w.jpg")
# file15 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589793477/K-STREET%20FOOD%20FESTIVAL/ks31_ctkpwj.jpg")
# file16 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589793484/K-STREET%20FOOD%20FESTIVAL/ks32_xzvkgd.jpg")
# file17 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589793490/K-STREET%20FOOD%20FESTIVAL/ks34_wlfuys.jpg")
# file18 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589793499/K-STREET%20FOOD%20FESTIVAL/ks35_ukbbvj.jpg")
# file19 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589793504/K-STREET%20FOOD%20FESTIVAL/ks37_vt5gcu.jpg")
# file20 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589793519/K-STREET%20FOOD%20FESTIVAL/ks38_ozh13w.jpg")
# file22 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589793547/K-STREET%20FOOD%20FESTIVAL/ks39_fazvk1.jpg")
# file23 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589793235/K-STREET%20FOOD%20FESTIVAL/ks3_nhlwtl.jpg")
# file24 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589793514/K-STREET%20FOOD%20FESTIVAL/ks41_gzpgw0.jpg")
# file25 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589793550/K-STREET%20FOOD%20FESTIVAL/ks42_x6p6te.jpg")
# file26 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589793546/K-STREET%20FOOD%20FESTIVAL/ks43_vca77b.jpg")
# file27 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589793556/K-STREET%20FOOD%20FESTIVAL/ks44_dlqohw.jpg")
# file28 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589793545/K-STREET%20FOOD%20FESTIVAL/ks45_fuv6uw.jpg")
# file29 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589793541/K-STREET%20FOOD%20FESTIVAL/ks46_bcwyjr.jpg")
# file31 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589793558/K-STREET%20FOOD%20FESTIVAL/ks47_mabz0f.jpg")
# file32 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589793221/K-STREET%20FOOD%20FESTIVAL/ks5_hupxyo.jpg")
# file33 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589793267/K-STREET%20FOOD%20FESTIVAL/ks7_jf5wrb.jpg")
# file34 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589793296/K-STREET%20FOOD%20FESTIVAL/ks8_kbylu9.jpg")
# file35 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589793289/K-STREET%20FOOD%20FESTIVAL/ks9_ub0pae.jpg")

# params1 = {title: "K-STREET FOOD FESTIVAL", description: "The Korean gastronomy (hansik) has grown in popularity throughout the years, shown by the increasing enthusiasm for its rich and balanced dishes which advantage is to be able to alternate tastes in a free and often creative way. Fostering the spirit of sharing and discovery, the event explores this world of unique flavors, colors and textures and presents the Korean gastronomy in a warm and friendly atmosphere while proposing cultural and attractive activities which can bring a real dynamic.",date_end: Date.today, date_start: Date.today, location: "Paris", category: "Public Event"}
# p1 = PastEvent.new(params1)
# p1.photos.attach(io: file1, filename: 'image.png', content_type: 'image/jpg')
# p1.photos.attach(io: file2, filename: 'image.png', content_type: 'image/jpg')
# p1.photos.attach(io: file3, filename: 'image.png', content_type: 'image/jpg')
# p1.photos.attach(io: file4, filename: 'image.png', content_type: 'image/jpg')
# p1.photos.attach(io: file5, filename: 'image.png', content_type: 'image/jpg')
# p1.photos.attach(io: file6, filename: 'image.png', content_type: 'image/jpg')
# p1.photos.attach(io: file7, filename: 'image.png', content_type: 'image/jpg')
# p1.photos.attach(io: file8, filename: 'image.png', content_type: 'image/jpg')
# p1.photos.attach(io: file9, filename: 'image.png', content_type: 'image/jpg')
# p1.photos.attach(io: file10, filename: 'image.png', content_type: 'image/jpg')
# p1.photos.attach(io: file11, filename: 'image.png', content_type: 'image/jpg')
# p1.photos.attach(io: file12, filename: 'image.png', content_type: 'image/jpg')
# p1.photos.attach(io: file13, filename: 'image.png', content_type: 'image/jpg')
# p1.photos.attach(io: file14, filename: 'image.png', content_type: 'image/jpg')
# p1.photos.attach(io: file15, filename: 'image.png', content_type: 'image/jpg')
# p1.photos.attach(io: file16, filename: 'image.png', content_type: 'image/jpg')
# p1.photos.attach(io: file17, filename: 'image.png', content_type: 'image/jpg')
# p1.photos.attach(io: file18, filename: 'image.png', content_type: 'image/jpg')
# p1.photos.attach(io: file19, filename: 'image.png', content_type: 'image/jpg')
# p1.photos.attach(io: file20, filename: 'image.png', content_type: 'image/jpg')
# p1.photos.attach(io: file22, filename: 'image.png', content_type: 'image/jpg')
# p1.photos.attach(io: file23, filename: 'image.png', content_type: 'image/jpg')
# p1.photos.attach(io: file24, filename: 'image.png', content_type: 'image/jpg')
# p1.photos.attach(io: file25, filename: 'image.png', content_type: 'image/jpg')
# p1.photos.attach(io: file26, filename: 'image.png', content_type: 'image/jpg')
# p1.photos.attach(io: file27, filename: 'image.png', content_type: 'image/jpg')
# p1.photos.attach(io: file28, filename: 'image.png', content_type: 'image/jpg')
# p1.photos.attach(io: file29, filename: 'image.png', content_type: 'image/jpg')
# p1.photos.attach(io: file31, filename: 'image.png', content_type: 'image/jpg')
# p1.photos.attach(io: file32, filename: 'image.png', content_type: 'image/jpg')
# p1.photos.attach(io: file33, filename: 'image.png', content_type: 'image/jpg')
# p1.photos.attach(io: file34, filename: 'image.png', content_type: 'image/jpg')
# p1.photos.attach(io: file35, filename: 'image.png', content_type: 'image/jpg')
# p1.save



# file36 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589796544/CAROLE%20FRANCK%20-%20ROLLING%20COVER%20CUSHION%20LAUNCHING/CaroleFranckParis_Julie_0012_fhsyvh.jpg")
# file37 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589796546/CAROLE%20FRANCK%20-%20ROLLING%20COVER%20CUSHION%20LAUNCHING/CaroleFranckParis_Julie_0002_zzxwki.jpg")
# file38 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589796546/CAROLE%20FRANCK%20-%20ROLLING%20COVER%20CUSHION%20LAUNCHING/CaroleFranck_Julie_1041_hradvc.jpg")
# file39 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589796545/CAROLE%20FRANCK%20-%20ROLLING%20COVER%20CUSHION%20LAUNCHING/CaroleFranckParis_Julie_0006_k8ho9a.jpg")
# file40 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589796549/CAROLE%20FRANCK%20-%20ROLLING%20COVER%20CUSHION%20LAUNCHING/CaroleFranck_Julie_841_1_nnshaw.jpg")
# file41 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589796533/CAROLE%20FRANCK%20-%20ROLLING%20COVER%20CUSHION%20LAUNCHING/CaroleFranckParis_Julie_0010_ymuaip.jpg")
# file42 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589796541/CAROLE%20FRANCK%20-%20ROLLING%20COVER%20CUSHION%20LAUNCHING/CaroleFranckParis_Julie_0014_afr6rm.jpg")
# file43 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589796533/CAROLE%20FRANCK%20-%20ROLLING%20COVER%20CUSHION%20LAUNCHING/CaroleFranck_Julie_521_xduyey.jpg")
# file44 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589796549/CAROLE%20FRANCK%20-%20ROLLING%20COVER%20CUSHION%20LAUNCHING/CaroleFranckParis_Julie_0028_pk9n1l.jpg")
# file45 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589796553/CAROLE%20FRANCK%20-%20ROLLING%20COVER%20CUSHION%20LAUNCHING/CaroleFranckParis_Oceane_0003_wpyjqb.jpg")
# file46 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589796555/CAROLE%20FRANCK%20-%20ROLLING%20COVER%20CUSHION%20LAUNCHING/CaroleFranckParis_Oceane_0005_bxr8an.jpg")
# file47 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589796555/CAROLE%20FRANCK%20-%20ROLLING%20COVER%20CUSHION%20LAUNCHING/CaroleFranckParis_Oceane_0008_mnlhmx.jpg")
# file48 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589796564/CAROLE%20FRANCK%20-%20ROLLING%20COVER%20CUSHION%20LAUNCHING/CaroleFranckParis_Oceane_0014_jxyo88.jpg")
# file49 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589796573/CAROLE%20FRANCK%20-%20ROLLING%20COVER%20CUSHION%20LAUNCHING/CaroleFranckParis_Marc_0024_mkw6s2.jpg")
# file50 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589796577/CAROLE%20FRANCK%20-%20ROLLING%20COVER%20CUSHION%20LAUNCHING/CaroleFranckParis_Marc_0007_r3o0ez.jpg")
# file51 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589796585/CAROLE%20FRANCK%20-%20ROLLING%20COVER%20CUSHION%20LAUNCHING/CaroleFranckParis_Oceane_0017_1_d837uj.jpg")
# file52 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589796594/CAROLE%20FRANCK%20-%20ROLLING%20COVER%20CUSHION%20LAUNCHING/CaroleFranckParis_Oceane_0057_1_cbqsfj.jpg")
# file53 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589796595/CAROLE%20FRANCK%20-%20ROLLING%20COVER%20CUSHION%20LAUNCHING/CaroleFranckParis_Oceane_0020_ktwotl.jpg")
# file54 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589796598/CAROLE%20FRANCK%20-%20ROLLING%20COVER%20CUSHION%20LAUNCHING/CaroleFranckParis_Marc_0011_nnahbg.jpg")
# file55 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589796600/CAROLE%20FRANCK%20-%20ROLLING%20COVER%20CUSHION%20LAUNCHING/CaroleFranckParis_Oceane_0060_xnep3m.jpg")
# file56 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589796603/CAROLE%20FRANCK%20-%20ROLLING%20COVER%20CUSHION%20LAUNCHING/CaroleFranckParis_Oceane_0037_ceaodw.jpg")
# file57 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589796604/CAROLE%20FRANCK%20-%20ROLLING%20COVER%20CUSHION%20LAUNCHING/CaroleFranckParis_Oceane_0038_ktb5b5.jpg")
# file58 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589796605/CAROLE%20FRANCK%20-%20ROLLING%20COVER%20CUSHION%20LAUNCHING/CaroleFranckParis_Oceane_0028_b87jc3.jpg")
# params2 = {title: "CAROLE FRANCK - ROLLING COVER CUSHION LAUNCHING", description: "During the private launching of the new product, the Rolling Cover Cushion high durability, from the prestigious French cosmetic brand Carole Franck, numerous South Korean media as well as representatives of CJ O shopping (the leader of the Asian home shopping) and the Korean star Son Tae-Young, muse of this new product, made the trip to Paris.",date_end: Date.today, date_start: Date.today, location: "Paris", category: "Private Event"}
# p2 = PastEvent.new(params2)
# p2.photos.attach(io: file36, filename: 'image.png', content_type: 'image/jpg')
# p2.photos.attach(io: file37, filename: 'image.png', content_type: 'image/jpg')
# p2.photos.attach(io: file38, filename: 'image.png', content_type: 'image/jpg')
# p2.photos.attach(io: file39, filename: 'image.png', content_type: 'image/jpg')
# p2.photos.attach(io: file40, filename: 'image.png', content_type: 'image/jpg')
# p2.photos.attach(io: file41, filename: 'image.png', content_type: 'image/jpg')
# p2.photos.attach(io: file42, filename: 'image.png', content_type: 'image/jpg')
# p2.photos.attach(io: file43, filename: 'image.png', content_type: 'image/jpg')
# p2.photos.attach(io: file44, filename: 'image.png', content_type: 'image/jpg')
# p2.photos.attach(io: file45, filename: 'image.png', content_type: 'image/jpg')
# p2.photos.attach(io: file46, filename: 'image.png', content_type: 'image/jpg')
# p2.photos.attach(io: file47, filename: 'image.png', content_type: 'image/jpg')
# p2.photos.attach(io: file48, filename: 'image.png', content_type: 'image/jpg')
# p2.photos.attach(io: file49, filename: 'image.png', content_type: 'image/jpg')
# p2.photos.attach(io: file50, filename: 'image.png', content_type: 'image/jpg')
# p2.photos.attach(io: file51, filename: 'image.png', content_type: 'image/jpg')
# p2.photos.attach(io: file52, filename: 'image.png', content_type: 'image/jpg')
# p2.photos.attach(io: file53, filename: 'image.png', content_type: 'image/jpg')
# p2.photos.attach(io: file54, filename: 'image.png', content_type: 'image/jpg')
# p2.photos.attach(io: file55, filename: 'image.png', content_type: 'image/jpg')
# p2.photos.attach(io: file56, filename: 'image.png', content_type: 'image/jpg')
# p2.photos.attach(io: file57, filename: 'image.png', content_type: 'image/jpg')
# p2.photos.attach(io: file58, filename: 'image.png', content_type: 'image/jpg')
# p2.save


# file59 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589801630/La%20Nuit%20des%20Cor%C3%A9ateurs%202019/_MG_4380-2_bdmket.jpg")
# file60 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589801629/La%20Nuit%20des%20Cor%C3%A9ateurs%202019/_MG_4381-2_vighyk.jpg")
# file61 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589801629/La%20Nuit%20des%20Cor%C3%A9ateurs%202019/_MG_4234-2_bpu38g.jpg")
# file62 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589801628/La%20Nuit%20des%20Cor%C3%A9ateurs%202019/IMG_5076_c0amjd.jpg")
# file63 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589801628/La%20Nuit%20des%20Cor%C3%A9ateurs%202019/IMG_9051_jgc5ae.jpg")
# file64 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589801625/La%20Nuit%20des%20Cor%C3%A9ateurs%202019/LaNuitDesCoreateurs_Nabil_0007_oohycm.jpg")
# file65 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589801623/La%20Nuit%20des%20Cor%C3%A9ateurs%202019/_MG_4511_tdzjht.jpg")
# file66 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589801623/La%20Nuit%20des%20Cor%C3%A9ateurs%202019/_MG_4276-2_kmsq4p.jpg")
# file67 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589801623/La%20Nuit%20des%20Cor%C3%A9ateurs%202019/_MG_4408-2_se9hov.jpg")
# file68 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589801619/La%20Nuit%20des%20Cor%C3%A9ateurs%202019/_MG_4264-2_igzuyf.jpg")
# file69 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589801616/La%20Nuit%20des%20Cor%C3%A9ateurs%202019/_MG_3499-2_jv1if6.jpg")
# file70 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589801616/La%20Nuit%20des%20Cor%C3%A9ateurs%202019/LaNuitDesCoreateurs_Marc_0012_asfjhl.jpg")
# file71 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589801615/La%20Nuit%20des%20Cor%C3%A9ateurs%202019/LaNuitDesCoreateurs_Marc_0026_empkgw.jpg")
# file72 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589801609/La%20Nuit%20des%20Cor%C3%A9ateurs%202019/LaNuitDesCoreateurs_Marc_0013_ddqsup.jpg")
# file73 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589801608/La%20Nuit%20des%20Cor%C3%A9ateurs%202019/LaNuitDesCoreateurs_Marc_0011_wq99en.jpg")
# file74 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589801603/La%20Nuit%20des%20Cor%C3%A9ateurs%202019/LaNuitDesCoreateurs_Marc_0030_caw8qr.jpg")
# file75 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589801601/La%20Nuit%20des%20Cor%C3%A9ateurs%202019/LaNuitDesCoreateurs_Nabil_0002_gpwtxx.jpg")
# params3 = {title: "La Nuit des Coréateurs 2019", description: "The Embassy of Korea in France inaugurates the launch of their YouTube channel through a new event entitled 'The night of the Coréateurs'. The event is a gathering and networking place for several Franco-Korean YouTubers based in France, having as their main theme the Korean culture (cosmetics, music, food, culture in general, series / films, etc.) and having a common interest of expanding Korea throughout the world.

# The invited YouTubers have the exclusive chance of being selected to collaborate throughout the year with the Korean Embassy in Paris to create cultural and instructive content and videos around numerous subjects and themes related to Korea and so increase their notoriety and visibility.",date_end: Date.today, date_start: Date.today, location: "Korean Embassy in Paris", category: "Private Event"}
# p3 = PastEvent.new(params3)
# p3.photos.attach(io: file59, filename: 'image.png', content_type: 'image/jpg')
# p3.photos.attach(io: file60, filename: 'image.png', content_type: 'image/jpg')
# p3.photos.attach(io: file61, filename: 'image.png', content_type: 'image/jpg')
# p3.photos.attach(io: file62, filename: 'image.png', content_type: 'image/jpg')
# p3.photos.attach(io: file63, filename: 'image.png', content_type: 'image/jpg')
# p3.photos.attach(io: file64, filename: 'image.png', content_type: 'image/jpg')
# p3.photos.attach(io: file65, filename: 'image.png', content_type: 'image/jpg')
# p3.photos.attach(io: file66, filename: 'image.png', content_type: 'image/jpg')
# p3.photos.attach(io: file67, filename: 'image.png', content_type: 'image/jpg')
# p3.photos.attach(io: file68, filename: 'image.png', content_type: 'image/jpg')
# p3.photos.attach(io: file69, filename: 'image.png', content_type: 'image/jpg')
# p3.photos.attach(io: file70, filename: 'image.png', content_type: 'image/jpg')
# p3.photos.attach(io: file71, filename: 'image.png', content_type: 'image/jpg')
# p3.photos.attach(io: file72, filename: 'image.png', content_type: 'image/jpg')
# p3.photos.attach(io: file73, filename: 'image.png', content_type: 'image/jpg')
# p3.photos.attach(io: file74, filename: 'image.png', content_type: 'image/jpg')
# p3.photos.attach(io: file75, filename: 'image.png', content_type: 'image/jpg')
# p3.save



# file76 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589802556/SEOUL-FASHION%202019/LepeytreAntonin__147_yefa4g.jpg")
# file77 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589802566/SEOUL-FASHION%202019/IMG_8585_vtck3z.jpg")
# file78 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589802566/SEOUL-FASHION%202019/LepeytreAntonin__112_p6rotv.jpg")
# file79 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589802565/SEOUL-FASHION%202019/LepeytreAntonin__43_xe30ec.jpg")
# file80 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589802564/SEOUL-FASHION%202019/IMG_8577_jd1s1x.jpg")
# file81 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589802561/SEOUL-FASHION%202019/LepeytreAntonin__135_zyixsv.jpg")
# file82 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589802561/SEOUL-FASHION%202019/LepeytreAntonin__133_dkdric.jpg")
# file83 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589802561/SEOUL-FASHION%202019/IMG_8867_ze0tdy.jpg")
# file84 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589802559/SEOUL-FASHION%202019/IMG_8858_tqcncx.jpg")
# file85 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589802559/SEOUL-FASHION%202019/IMG_7540_mzfveu.jpg")
# file86 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589802554/SEOUL-FASHION%202019/IMG_8027_nxib8d.jpg")
# file87 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589802552/SEOUL-FASHION%202019/LepeytreAntonin__137_irimd5.jpg")
# file88 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589802552/SEOUL-FASHION%202019/IMG_8251_mtcmxi.jpg")
# file89 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589802546/SEOUL-FASHION%202019/IMG_8868_ligrox.jpg")
# file90 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589802546/SEOUL-FASHION%202019/IMG_8609_hazee0.jpg")
# file91 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589802545/SEOUL-FASHION%202019/IMG_8007_x4iyib.jpg")
# file92 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589802542/SEOUL-FASHION%202019/IMG_7054_auxt3y.jpg")
# file93 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589802542/SEOUL-FASHION%202019/LepeytreAntonin__149_xrf9qa.jpg")
# file94 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589802540/SEOUL-FASHION%202019/IMG_8041_avahxc.jpg")
# file95 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589802539/SEOUL-FASHION%202019/IMG_8084_qbf4zk.jpg")
# file96 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589802537/SEOUL-FASHION%202019/LepeytreAntonin__152_kwtwev.jpg")
# file97 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589802534/SEOUL-FASHION%202019/IMG_7695_kft3lg.jpg")
# file98 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589802529/SEOUL-FASHION%202019/IMG_8738_ujlsq1.jpg")
# file99 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589802525/SEOUL-FASHION%202019/LepeytreAntonin__129_nvcf9t.jpg")
# file100 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589802524/SEOUL-FASHION%202019/LepeytreAntonin__130_ltvjom.jpg")
# file101 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589802524/SEOUL-FASHION%202019/LepeytreAntonin__117_sch9xn.jpg")
# file102 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589802518/SEOUL-FASHION%202019/IMG_7883_y6esfs.jpg")
# file103 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589802510/SEOUL-FASHION%202019/IMG_6779_racfeh.jpg")
# file104 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589802507/SEOUL-FASHION%202019/IMG_7116_hkkswn.jpg")
# file105 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589802505/SEOUL-FASHION%202019/IMG_7328_ltamay.jpg")
# file106 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589802505/SEOUL-FASHION%202019/IMG_7404_y9titr.jpg")
# file107 = URI.open("https://res.cloudinary.com/primetime/image/upload/v1589802502/SEOUL-FASHION%202019/IMG_8785_dguvc6.jpg")
# params4 = {title: "SEOUL&FASHION 2019", description: "In the heart of Paris, this first edition of SEOUL & FASHION takes part in the cultural exchange between France and Korea. As Korea is today exported internationally through the success of 'Hallyu', the event invites you to discover a new generation of designers, full of creative talents.

# Between futuristic style and revisited simplicity, their inventiveness revolves around a mastered singularity that characterizes the audacity of Korean youth. This event aims above all to highlight new artistic talents from Korea in an environment of exchange, while celebrating the diversity offered by cultural exchanges.",date_end: Date.today, date_start: Date.today, location: "Paris", category: "Private Event"}
# p4 = PastEvent.new(params4)
# p4.photos.attach(io: file76, filename: 'image.png', content_type: 'image/jpg')
# p4.photos.attach(io: file77, filename: 'image.png', content_type: 'image/jpg')
# p4.photos.attach(io: file78, filename: 'image.png', content_type: 'image/jpg')
# p4.photos.attach(io: file79, filename: 'image.png', content_type: 'image/jpg')
# p4.photos.attach(io: file80, filename: 'image.png', content_type: 'image/jpg')
# p4.photos.attach(io: file81, filename: 'image.png', content_type: 'image/jpg')
# p4.photos.attach(io: file82, filename: 'image.png', content_type: 'image/jpg')
# p4.photos.attach(io: file83, filename: 'image.png', content_type: 'image/jpg')
# p4.photos.attach(io: file84, filename: 'image.png', content_type: 'image/jpg')
# p4.photos.attach(io: file85, filename: 'image.png', content_type: 'image/jpg')
# p4.photos.attach(io: file86, filename: 'image.png', content_type: 'image/jpg')
# p4.photos.attach(io: file87, filename: 'image.png', content_type: 'image/jpg')
# p4.photos.attach(io: file88, filename: 'image.png', content_type: 'image/jpg')
# p4.photos.attach(io: file89, filename: 'image.png', content_type: 'image/jpg')
# p4.photos.attach(io: file90, filename: 'image.png', content_type: 'image/jpg')
# p4.photos.attach(io: file91, filename: 'image.png', content_type: 'image/jpg')
# p4.photos.attach(io: file92, filename: 'image.png', content_type: 'image/jpg')
# p4.photos.attach(io: file93, filename: 'image.png', content_type: 'image/jpg')
# p4.photos.attach(io: file94, filename: 'image.png', content_type: 'image/jpg')
# p4.photos.attach(io: file95, filename: 'image.png', content_type: 'image/jpg')
# p4.photos.attach(io: file96, filename: 'image.png', content_type: 'image/jpg')
# p4.photos.attach(io: file97, filename: 'image.png', content_type: 'image/jpg')
# p4.photos.attach(io: file98, filename: 'image.png', content_type: 'image/jpg')
# p4.photos.attach(io: file99, filename: 'image.png', content_type: 'image/jpg')
# p4.photos.attach(io: file100, filename: 'image.png', content_type: 'image/jpg')
# p4.photos.attach(io: file101, filename: 'image.png', content_type: 'image/jpg')
# p4.photos.attach(io: file102, filename: 'image.png', content_type: 'image/jpg')
# p4.photos.attach(io: file103, filename: 'image.png', content_type: 'image/jpg')
# p4.photos.attach(io: file104, filename: 'image.png', content_type: 'image/jpg')
# p4.photos.attach(io: file105, filename: 'image.png', content_type: 'image/jpg')
# p4.photos.attach(io: file106, filename: 'image.png', content_type: 'image/jpg')
# p4.photos.attach(io: file107, filename: 'image.png', content_type: 'image/jpg')
# p4.save
# puts "Creating future events"
# FutureEvent.create(params3)
# FutureEvent.create(params2)
# FutureEvent.create(params1)





puts "Seeding..."
sleep(1)
puts ">"
puts ">"
puts ">"
puts ">"
puts "Wait for it..."
sleep(1)
puts ">"
puts ">"
puts ">"
puts ">"
puts ">"
sleep(1)
puts "...done"


