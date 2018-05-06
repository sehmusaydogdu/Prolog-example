
yasidogrula(Yas):-Yas>17,write("\nKredi icin yasiniz tutuyor. Devam edebiliriz ...\n").
yasidogrula(Yas):-Yas<18,write("\nUzgunum. Kredi icin yasiniz uygun degildir.\n"),fail.

/*result(Adi,Yas):-write(Adi),write("Yasiniz :  "),write(Yas).*/

ev_adeti(Ev_sayisi) :-write(Ev_sayisi),write("\t evin toplam degerini giriniz : \t"),read(Tutar).
konutKontrol(Menkul):-Menkul==1,write("\nUzerinizde kayitli bulunan ev sayisi giriniz : \t"),read(Ev_sayisi),ev_adeti(Ev_sayisi).
konutKontrol(Menkul):-Menkul==2,write("\nKira tutarini giriniz : \t"),read(Tutar),menkulDeger(Tutar).
konutKontrol(Menkul):-not(Menkul=1),not(Menkul=2),write("\nHatali giris yaptiniz ..."),fail.
menkulDeger(Tutar):-write("\nGayrimenkul Deger : "),write(Tutar).

arac_adeti(Arac_sayisi):-write(Arac_sayisi),
                         write("\taracin toplam degerini giriniz : \t"),read(AracTutar),
                         write("Toplam aracin degeri : \t"),write(AracTutar).

aracKontrol(Arac):-Arac==1,write("\nUzerinizde kayitli bulunan arac sayisi giriniz : \t"),read(Arac_sayisi),arac_adeti(Arac_sayisi).
aracKontrol(Arac):-Arac==2,write("").

kefilKontrol(Kefil):-Kefil == 1, write("\nKefil olacak kisinin maasini giriniz : \t"),read(kefilMaas).
kefilKontrol(Kefil):-Kefil == 2, write("").

krediKontrolEt(IstenenKredi):-write("\nKullanicinin istemis oldugu kredi miktari : \t"),write(IstenenKredi).

main:-
write("\nAdinizi giriniz : \t"),read(Adi),write(Adi),write("\t Merhabalar \n"),
write("\nYasinizi giriniz  : \t"),read(Yas),yasidogrula(Yas),
write("\nMesleginizi giriniz  : \t"),read(Meslek),
write("\nMaasinizi giriniz : \t"),read(Maas),
write("\nBulundugunuz konut (Ev => 1 , Kira => 2) : \t"),read(Menkul),konutKontrol(Menkul),
write("\nUzerinizde kayitli bulunan arac var mi? (Evet => 1 , Hayir => 2) : \t"),read(Arac),aracKontrol(Arac),
write("\nKefil olacak kisi var mi? (Evet => 1 , Hayir => 2) : \t"),read(Kefil),kefilKontrol(Kefil),
write("\nIstediginiz kredi tutarini giriniz : \t"),read(IstenenKredi),krediKontrolEt(IstenenKredi).