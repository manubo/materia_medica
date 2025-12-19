# Datenmigration

## Auf dem Server

- `pg_dump -h localhost -U materia_medica -d materia_medica -f materia_medica.dump.sql`

## Lokal

- `docker compose exec db dropdb -U materia_medica materia_medica`
- `docker compose exec db createdb -U materia_medica materia_medica`
- `docker compose exec -T db psql -U materia_medica -h localhost materia_medica < data/materia_medica.dump.sql`
- `bin/rails db:drop db:setup`
- `bin/rails runner script/migrate_data.rb`

# Einrichtung (im Terminal)

## homebrew und mise installieren

- `homebrew` installieren: [https://brew.sh](https://brew.sh)
- `brew install mise`

## Materia-Medica installieren

- `cd ~`
- `git clone https://github.com/materia-medica/materia-medica.git`
- `cd materia-medica`
- `mise install`
- `bundle config set --local without 'development test'`
- `bundle install`
- `npm install`
- `npm run build`
- Erstelle die Datei `~/materia-medica/config/master.key` und füge den Key aus 1Password ein.

## Datenbank kopieren

- Datenbankdatei `materia_medica.sqlite3` in das Verzeichnis `~/materia-medica/data/` kopieren

# Materia-Medica starten (im Terminal)

- `cd materia-medica`
- `bin/start`
- Öffne Link: [http://localhost:3000](http://localhost:3000)

# Materia-Medica beenden (im Terminal)

Im Terminal, in dem Materia-Medica gestartet wurde, die Tastenkombination ctrl + c drücken.

# Materia-Medica updates (im Terminal)

Materia-Medical beenden wie oben beschrieben, falls es läuft.

- `git pull`

Danach, Materia-Medica starten, wie oben beschrieben.
