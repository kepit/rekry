# Tarvittavat tiedot

 * MPEG-TS spesifikaatio: [https://en.wikipedia.org/wiki/MPEG_transport_stream](https://en.wikipedia.org/w/index.php?title=MPEG_transport_stream&oldid=1307033632)
 * Elixirin asennusohjeet ja dokumentaatio: https://elixir-lang.org
 * Toteutuksesi toimivuuden voit testata ajamalla "mix test"

# Tehtävä

 * Toteuta Elixirillä ohjelma joka lukee MPEG-TS tiedoston ja parsii sen sisältämistä MPEG-TS paketeista niiden PID numerot ja palauttaa ne listana. Käytössä on 188-tavun paketit.
 * lib/rekry.ex tiedostosta löytyy parse_file funktio johon tulee parametrinä tiedoston nimi. Tämän funktion tulee palauttaa listana tulos: [17, 0, 4096, 256, 256, 256, 256, 256, 256, 256]

