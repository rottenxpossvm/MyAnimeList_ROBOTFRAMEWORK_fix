Instalacja Pythona 3.9.13
Instalacja requirements.txt
Testy zostaną przeprowadzone na przeglądarce Firefox 101.0

Run Browser - Ustawienie testu weryfikującego właściwą instalację requirements.txt, polegający na pojedynczym włączeniu i wyłączeniu przeglądarki


Add To Library As An Unregistered User - badanie, czy strona myanimelist.com przekierowuje niezalogowanego użytkownika (próbującego dodać wybraną serię do listy ulubionych) do strony logowania z odpowiednim komunikatem 
    Projekt testu Add to library as an unregistered user 
      Otwarcie przeglądarki na stronie URL 
      Oczekiwanie na pojawienie się popupu informującego o przetwarzanie danych przez witrynę
      Wyłączenie zgody na przetwarzanie danych przez witrynę 
      Oczekiwanie na pojawienie się przycisku Quick Add Anime To My List będącego częścią zakładki anime Kaguya-Sama:Love Is War
      Kliknięcie przycisku Quick Add Anime To My List
      Oczekiwanie na pojawienie się komunikatu o konieczności zalogowania się by kontynuować
      Strona powinna zawierać komunikat o konieczności zalogowania się by kontynuować
      Zamknięcie przeglądarki.

MAL To Crunchyroll Link Test - badanie, czy odnośnik i strona Crunchyroll przypisana elementowi działa prawidłowo.
      Projekt testu MAL To Crunchyroll Link Test 
        Otwarcie przeglądarki na stronie URL 
        Oczekiwanie na załadowanie strony 
        Wyłączenie zgody na przetwarzanie danych przez witrynę
        Oczekiwanie na pojawienie się na bocznym pasku odnośnika do podstrony anime Kaguya-sama: Love Is War 
        Kliknięcie w odnośnik podstrony anime Kaguya-sama: Love Is War 
        Oczekiwanie na pojawienie się logo strony
        Przewinięcie strony o 1000 pikseli w dół i wycentrowanie widoku na przycisku odnośnika do strony Crunchyroll 
        Kliknięcie w odnośnik Crunchyroll 
        Sprawdzenie, czy strona zawiera nagłówek wyszczególnionego wcześniej anime
        
Testy kończą się sukcesem po przejściu wszystkich wyszczególnionych kroków
