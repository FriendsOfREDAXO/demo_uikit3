# UIKit3 Demo für REDAXO 5

![Screenshot](https://github.com/FriendsOfREDAXO/demo_uikit3/blob/assets/screen.jpg?raw=true)

Diese Demo demonstriert den Aufbau einer REDAXO Website mit UIKit3. 

Diese Demo benötigt eine utf8m4 kompatible Datenbank. 

## Was es ist

Es ist eine Demo. Sie verdeutlicht eine mögliche Umsetzung einer Webpräsenz zu Lernzwecken. Sie kann als Startpunkt für eigene Projekte vewendet werden. 

## Was es nicht ist

Es ist keine fertige Webpräsenz für den Live-Betrieb. Hierzu sind weitere Schritte erforderlich. 

## Was ist drin? 

- 4 Module (Cards, Content-Block / Slider, Iconliste, Überschrift) 
- Haupttemplate mit Nebentemplates zum einfachen Umbau / Austausch
- Navigation auf Basis des Navigation_Array-AddOns
- Die Module sind mit MForm aufgebaut
- MP4-Videoausgabe wird unterstützt

## Hinweis

Die Demo installiert das AddOn **theme_lock** um das "Light Theme" im Backend zu erzwingen. UIKit3 wird auch im Backend zur Anzeige verwendet, der Darkmode sorgt leider hierbei für Probleme.  

## Weitere Entwicklung

Die Demo wird von Zeit zu Zeit erweitert und Fehler werden korrigiert. Wir sind also über Hinweise dankbar.

## Eigenes Theme

Es wird ein Hauptordner uikit angelegt. Dort befindet sich das theme für das Frontend. 
Den darin enthaltenen Dist-Ordner kann man einfach durch einen eigenen ersetzen. 
Ggf. die Sourcen im Template anpassen. 
Für die Erstellung wird der Yarn-Workflow von UIKit empfohlen. 

## Installation

1. Das AddOn-Verzeichnis muss den Namen `demo_uikit3` haben; nach dem Auspacken in das AddOn-Verzeichnis kopieren: `redaxo/src/addons`.
2. Das AddOn installieren.
3. Auf der Seite "UIKit-Demo" auf "Demo installieren" klicken.

Die Demo setzt folgende externe AddOns voraus (diese können alle innerhalb von REDAXO über den Installer installiert werden):

* CKEDITOR 5
* theme_lock
* mform
* mblock



