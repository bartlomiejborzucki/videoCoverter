#!/bin/bash

# Sprawdzenie, czy ffmpeg jest zainstalowany
if ! command -v ffmpeg &> /dev/null
then
    echo "ffmpeg nie jest zainstalowany. Zainstaluj ffmpeg, aby kontynuować."
    exit 1
fi

# Ścieżka do katalogu, który ma być przeszukany
SEARCH_DIR="/mnt/d/testkonwersja"

# Ścieżka do pliku logów
LOG_FILE="/mnt/d/testkonwersja/log.txt"

# Czyszczenie pliku logów
echo "" > "$LOG_FILE"
# Wyszukiwanie i konwersja plików
find "$SEARCH_DIR" -type f -exec bash -c 'file="$1"; codec_info=$(ffmpeg -i "$file" 2>&1 | grep "Stream.*Video"); if echo "$codec_info" | grep -q "vp9"; then echo "Znaleziono plik VP9: $file" >> '"$LOG_FILE"' && echo "Znaleziono plik VP9: $file"; ffmpeg -i "$file" -c:v libx264 -crf 23 -c:a aac -b:a 192k "${file%.*}_h264.mp4" &>> '"$LOG_FILE"' && echo "Konwersja zakończona dla: $file" >> '"$LOG_FILE"' || echo "Błąd konwersji dla: $file" >> '"$LOG_FILE"'; fi' bash {} \;

echo "Konwersja zakończona. Szczegóły w pliku logów: $LOG_FILE"