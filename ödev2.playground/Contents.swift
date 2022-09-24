import UIKit
//MERT YUŞA ATAĞ.
class Fonksiyonlar {
    func soru1 (sayi1:Double) -> Double
    {
        return (sayi1*1.8)+32
    };
    
    func soru2 (kenar1:Int,kenar2:Int){
        print("Dikdörtgenin çevresi: \(2*(kenar1+kenar2)) ")
    }
    func soru3 (sayi:Int)
    {
        var sonuc = 1;
        for i in stride(from: 1, through:sayi, by: 1){
            sonuc*=i;
        }
        print("\(sayi)'nın faktoriyeli: \(sonuc)");
    }
    func soru4(kelime:String,harf:Character)->Int{
        var sayac = 0;
        for i in kelime
        {
            if(i == harf)
            {
                sayac = sayac+1;
            }
        }
        return sayac;
    }
    func soru5(kenarSayısı:Int) -> String
    {
        if(kenarSayısı <= 2)
        {
            var error = "Kenar sayısını lütfen 3 ten büyük bir sayi giriniz."
            return error;
        }
            var sonuc:String?;
            sonuc = "\(((kenarSayısı-2)*180))";
            return sonuc!;
        }
    func soru6(günSayısı:Int) -> Int
    {
        var saat = günSayısı*8;
        var mesai = 0;
        var toplamMaas = 0;
        if(saat>160){
            mesai = saat-160;
            saat = saat-mesai;
            toplamMaas = ((saat*10)+(mesai*20))
            return toplamMaas;
        }
        return saat*10;
    }
    func soru7(kullanımMiktari:Int)-> Int{
        var fiyat = 0;
        var kotaAsımı = 0;
        if(kullanımMiktari>50){
            kotaAsımı = kullanımMiktari-50;
            fiyat = ((kotaAsımı*4)+100);
            return fiyat;
        }
        return 100;
    }
}

var a = Fonksiyonlar();

print("Sonuç : \(a.soru1(sayi1: 32.6))")
a.soru2(kenar1: 5, kenar2: 4)
a.soru3(sayi: 6);
print("Tekrar etme sayısı:  = \(a.soru4(kelime:"D-E-N-E-M-E-K İÇİN 5 TAN-E -E KOYDUM",harf: "E"))")
print("İç açıları toplamı: = \(a.soru5(kenarSayısı: 4))")
print("Alacağınız maaş = \(a.soru6(günSayısı:30))")
print("Ödemeniz gereken fiyat = \(a.soru7(kullanımMiktari: 150))")

