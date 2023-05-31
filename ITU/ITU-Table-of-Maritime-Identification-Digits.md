---
layout: post
title: "ITU Table of Maritime Identification Digits (MID)"
topic: uscg-nais
---

[ITU GLobal Administration Data System (GLAD)](https://www.itu.int/en/ITU-R/terrestrial/fmd/Pages/glad.aspx)

[Table of Maritime Identification Digits \| ITU](https://www.itu.int/en/ITU-R/terrestrial/fmd/Pages/mid.aspx)

`MaritimeIdentificationDigits-010734db-920d-4123-9280-a96784e0a892.xlsx`

We convert to `MaritimeIdentificationDigits.csv`

`head MaritimeIdentificationDigits.csv`

```csv
Digit,Allocated to
201,Albania (Republic of)
202,Andorra (Principality of)
203,Austria
204,Portugal - Azores
205,Belgium
206,Belarus (Republic of)
207,Bulgaria (Republic of)
208,Vatican City State
209,Cyprus (Republic of)
```

<div style="overflow-x:auto;">
  <table>
      {% for row in site.data.MaritimeIdentificationDigits %}
          {% if forloop.first %}
              <tr>
                  {% for pair in row %}
                      <th>
                          {{ pair[0] }}
                      </th>
                  {% endfor %}
              </tr>
          {% endif %}

          {% tablerow pair in row %}
              {{ pair[1] }}
          {% endtablerow %}
      {% endfor %}
  </table>
</div>