
yasidogrula(Yas):-Yas>17,write("\nKredi icin yasiniz tutuyor. Devam edebiliriz ...\n").
yasidogrula(Yas):-Yas<18,write("\nUzgunum. Kredi icin yasiniz uygun degildir.\n"),fail.
yasidogrula(Yas):-Yas>60,write("\nUzgunum. Kredi icin yasiniz uygun degildir.(50 yaş ve üzeri)\n"),fail.


eksikBilgileriDoldur(Menkul,Arac,Kefil):-Menkul==1,Arac==1,Kefil==1,ev_arac_kefil_Doldur(Menkul,Arac,Kefil).
eksikBilgileriDoldur(Menkul,Arac,Kefil):-Menkul==2,Arac==1,Kefil==1,kira_arac_kefil_Doldur(Menkul,Arac,Kefil).
eksikBilgileriDoldur(Menkul,Arac,Kefil):-Menkul==1,Arac==2,Kefil==1,ev_kefil_Doldur(Menkul,Arac,Kefil).
eksikBilgileriDoldur(Menkul,Arac,Kefil):-Menkul==2,Arac==2,Kefil==1,kira_kefil_Doldur(Menkul,Arac,Kefil).
eksikBilgileriDoldur(Menkul,Arac,Kefil):-Menkul==1,Arac==1,Kefil==2,ev_arac_Doldur(Menkul,Arac,Kefil).
eksikBilgileriDoldur(Menkul,Arac,Kefil):-Menkul==2,Arac==1,Kefil==2,kira_arac_Doldur(Menkul,Arac,Kefil).
eksikBilgileriDoldur(Menkul,Arac,Kefil):-Menkul==1,Arac==2,Kefil==2,ev_Doldur(Menkul,Arac,Kefil).
eksikBilgileriDoldur(Menkul,Arac,Kefil):-Menkul==2,Arac==2,Kefil==2,Kira_Doldur(Menkul,Arac,Kefil).

ev_arac_kefil_Doldur(Menkul,Arac,Kefil):- write("\nOturdugunuz evin degerini giriniz : \t"),read(Ev_degeri),
                                          write("\nUzerinize kayitli bulunan aracin degerini giriniz : \t"),read(Arac_degeri),
                                          write("\nKefil olacak kisinin maasini giriniz : \t"),read(Kefil_maas).

kira_arac_kefil_Doldur(Menkul,Arac,Kefil):- write("\nOturdugunuz evin kira degerini giriniz : \t"),read(Kira_degeri),
                                            write("\nUzerinize kayıtlı bulunan aracin degerini giriniz : \t"),read(Arac_degeri),
                                            write("\nKefil olacak kisinin maasini giriniz : \t"),read(Kefil_maas).   

ev_kefil_Doldur(Menkul,Arac,Kefil):-write("\nOturdugunuz evin degerini giriniz : \t"),read(Ev_degeri),
                                    write("\nKefil olacak kisinin maasini giriniz : \t"),read(Kefil_maas).

kira_kefil_Doldur(Menkul,Arac,Kefil):-write("\nOturdugunuz evin kira degerini giriniz : \t"),read(Kira_degeri),
                                      write("\nKefil olacak kisinin maasini giriniz : \t"),read(Kefil_maas).

ev_arac_Doldur(Menkul,Arac,Kefil):-write("\nOturdugunuz evin degerini giriniz : \t"),read(Ev_degeri),
                                   write("\nUzerinize kayitli bulunan aracin degerini giriniz : \t"),read(Arac_degeri).

kira_arac_Doldur(Menkul,Arac,Kefil):-write("\nOturdugunuz evin kira degerini giriniz : \t"),read(Kira_degeri),
                                     write("\nUzerinize kayitli bulunan aracin degerini giriniz : \t"),read(Arac_degeri).

ev_Doldur(Menkul,Arac,Kefil):-write("\nOturdugunuz evin degerini giriniz : \t"),read(Ev_degeri).

kira_Doldur(Menkul,Arac,Kefil):-write("\nOturdugunuz evin kira degerini giriniz : \t"),read(Kira_degeri).

main:-
write("\nAdinizi giriniz : \t"),read(Adi),write(Adi),write("\t Merhabalar \n"),
write("\nYasinizi giriniz  : \t"),read(Yas),yasidogrula(Yas),
write("\nMesleginizi giriniz  (Ogrenci => 1 , Calisan => 2 , Issiz => 3): \t"),read(Meslek),
write("\nMaasinizi giriniz : \t"),read(Maas),
write("\nOturdugunuz konut turu (Ev => 1 , Kira => 2) : \t"),read(Menkul),
write("\nUzerinizde kayitli bulunan arac var mi? (Evet => 1 , Hayir => 2) : \t"),read(Arac),
write("\nKefil olacak kisi var mi? (Evet => 1 , Hayir => 2) : \t"),read(Kefil),
write("\nIstediginiz kredi tutarini giriniz : \t"),read(IstenenKredi),
write("\n\nBilgiler hesaplanıyor\n"),
eksikBilgileriDoldur(Menkul,Arac,Kefil).