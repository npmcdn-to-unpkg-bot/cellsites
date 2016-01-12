# Style guide for jamespole/cellsitesnz

## English grammar for any output

1. When referring to **operators** use their current brand name, with the correct spelling.
  * **2degrees** not Two Degrees.
  * **Spark** not Telecom.
  * **Vodafone** not Vodaphone or any other variation.
2. When referring to **radio frequencies** use the format `950.5 MHz`. The decimal point and any further digits must be omitted if the value after the decimal point equals zero (e.g. use `950 MHz` rather than `950.0 MHz`). There must be a space between the number (e.g. `950.5`) and the string `MHz`. The unit string must be excatly `MHz`. Do not use other units (e.g. `kHz`, `GHz`, etc).

## HTML code

### Tables

1. Any column containing **numbers** (and its associated heading) should be right-aligned. Apply the `numeric` class to `<td>` and `<th>` tags do this.

