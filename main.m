
//w Objective-C w odroznieniu od C uzywamy dyrektywy #import zaimast #include
#import <Foundation/Foundation.h>
#import "Klasa.h"
#import "Date.h"
#import "Person.h"

//z funkcja main jestesmy od dawna juz zaprzyjaznieni
int main (int argc, const char * argv[])
{
    NSLog (@"hello world");
    
    //wywolujemy metody alloc i init (odziedziczone po klasie NSObject)
    Klasa * obiekt= [[Klasa alloc] init];
    //metody alloc i init zwracaja obiekt klasy dla ktorej byly uruchomione
    //umozliwia to budowanie wiekszych wyrazen skladajacych sie z wiecej wywolan
    //czego raczej sie unika ze wzgledu na utrate przejrzystosci kodu

    //ustawianie wartosci pola liczba w obiekcie za pomoca wywolania nawiasami kwadratowymi
    [obiekt setLiczba:5];
    NSLog (@"Liczba w naszym obiekcie to %i", [obiekt liczba]);

    //w tym konkretnym przypadku, gdy utworzylismy domyslne funkcje dostepu do pol prywatnych klasy (settery i gettery)
    //mozna do tych pol odwolywac sie przez operator kropki
    obiekt.liczba=2;
    NSLog (@"Zmienilismy liczbe na %i", [obiekt liczba]);
	
    NSLog (@"wartoszzwrocona przez metode %i", [[Klasa class] metodaJakbyStatycznaZwracajacaLiczbeCalkowita]);
    
    [obiekt metodaZJednymParametrem:@"parametr"];
    
    // Nowe mozliwosci
    Date * date1 = [[Date alloc] init];
    Date * date2 = [[Date alloc] initWithDay:10 andMonth:@"November"];
    Date * date3 = [[Date alloc] initWithDay:20 andMonth:@"January" andYear:2020];
    
    [date1 showDate];
    [date2 showDate];
    [date3 showDate];
    
    Person *p1 = [[Person alloc] init];
    Person *p2 = [[Person alloc] initWithName:@"Mark" andSurname:@"Kowalski" andBirthDate:@"219291"];
    Person *p3 = [[Person alloc] initWithName:@"Jarek" andSurname:@"Komarek" andAddress:@"Wiejska 45" andVoivodeship:PODLASKIE andBirthDate:@"12-21-2121"];
    
    [p1 showPerson];
    [p2 showPerson];
    [p3 showPerson];
    
    return 0;
}

//Opracowal Marcin Kozniewski na potrzeby zajec na Wydziale Informatyki Politechniki Bialostockiej
