# Uitbreiding onderwijsstructuur

Deze directory bevat volgende subdirectories:

| directory | bevat                                        |
|-----------|----------------------------------------------|
| input     | input gebruikt om tot het resultaat te komen |
| tools     | tools gebruikt om het resultaat te maken     |
| schemes   | het resultaat                                |

Het resultaat is [dit Turtle bestand](schemes/onderwijsstructuur.ttl).

## Lijst van aanpassingen

De aanpassingen zijn ten opzichte van https://github.com/i-Learn-SKOS/common-conceptschemes/blob/v0.1.0/common/schemes/onderwijsstructuur-final.skos.ttl.

### Aanpassing 1

Toevoeging van graad "secundair-3e-graad-3e-leerjaar" en verschuiving van "secundair-7e-leerjaar" naar deze graad.

### Aanpassing 2

Toevoeging van stromen, finaliteiten en onderwijsvormen.

### Aanpassing 3

Toevoeging van opleidingsvormen en buitengewoon onderwijs.

### Aanpassing 4

Toevoeging van de skos:Collection ocol:structuur, waartoe alle concepten uit de onderwijsstructuur behoren.

## Hoe na te bouwen

Om het resultaat zelf na te bouwen op basis van de input, volg de [instructies in de tools directory](tools/README.md).
