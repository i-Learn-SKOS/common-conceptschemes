# Tools

Vooraf: de tools hieronder runnen in een Linux omgeving met bash shell en zijn getest op een Ubuntu 20.04 LTS distributie.

## 1 - Installatie

### 1.1 - Afhankelijkheden
* python3 (3.6 ... 3.8)
* Java (OpenJDK version 14 volstaat)

### 1.2 - Python virtuele omgeving
Installeer een virtuele omgeving (met naam `virtualenv`) onder deze directory en installeer de nodige Python modules erin:
```shell
python3 -m venv virtualenv
source virtualenv/bin/activate
python -V
python -m pip install -r requirements.txt 
deactivate
```

### 1.3 - YARRRML
Download de juiste versie van de YARRRML parser (https://github.com/RMLio/yarrrml-parser.git) in deze directory.
Dit script doet het voor ons:
```shell
./download-yarrrml.sh
```

### 1.4 - RML mapper
Download de juiste versie van de RML mapper (https://github.com/RMLio/rmlmapper-java) in deze directory.

We gebruiken v4.15.0, dus download https://github.com/RMLio/rmlmapper-java/releases/download/v4.15.0/rmlmapper-4.15.0-r361-all.jar.

## 2 - Activatie
Voer dit uit alvorens een verder script te runnen. Hiermee wordt de Python virtuale omgeving geactiveerd:
```shell
source virtualenv/bin/activate
```

## 3 - Maak de output
Maak dat de input bestanden opgeslagen zijn en dat .xlsx geëxporteerd is naar .csv en voer uit:
```shell
./make.sh
```
