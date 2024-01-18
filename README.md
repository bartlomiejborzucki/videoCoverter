# Video Converter Script

## Description
This bash script searches a specified directory and its subdirectories for video files encoded with the VP9 codec and converts them to the H264 codec format, preserving the original audio track. The converted files are saved with an "_h264" suffix in their names.

## Requirements
- `ffmpeg` must be installed on your system to run this script.

## Usage
1. Modify the `SEARCH_DIR` variable in the script to point to the directory you want to search.
2. Optionally, modify the `LOG_FILE` path to specify where the log file should be saved.
3. Run the script in a bash shell.

The script will log its actions, indicating which files have been processed and any errors encountered.

---

# Skrypt Konwersji Wideo

## Opis
Ten skrypt bash wyszukuje pliki wideo zakodowane kodekiem VP9 w określonym katalogu i jego podkatalogach, a następnie konwertuje je do formatu kodeka H264, zachowując oryginalną ścieżkę audio. Skonwertowane pliki są zapisywane z sufiksem "_h264" w ich nazwach.

## Wymagania
- Aby uruchomić ten skrypt, w systemie musi być zainstalowany `ffmpeg`.

## Użycie
1. Zmodyfikuj zmienną `SEARCH_DIR` w skrypcie, aby wskazywała na katalog, który chcesz przeszukać.
2. Opcjonalnie zmodyfikuj ścieżkę `LOG_FILE`, aby określić, gdzie ma być zapisany plik logów.
3. Uruchom skrypt w powłoce bash.

Skrypt będzie rejestrować swoje działania, wskazując, które pliki zostały przetworzone i jakie napotkano błędy.
