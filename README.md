# Metodo di Halley

Implementazione del metodo di Halley per il calcolo degli zeri di una funzione $(f(\alpha) = 0)$ nel caso di funzioni di variabile reale e derivata seconda continua.

Il metodi di Halley prende il nome dal suo inventore [Edmond Halley](https://en.wikipedia.org/wiki/Edmond_Halley), 

## Iterata generale

$$ x^{(k+1)} = x^{(k)} - \frac{2f(x^{(k)})f'(x^{(k)})}{2[f'(x^{(k)})]^2 - f(x^{(k)})f''(x^{(k)})}$$

----

## Esempio 

Sia $f: \mathbb{R} \longrightarrow [-1, 1]$ t.c. $f(x) = cos(x)$,
siano, inoltre 
* $x_0 = 1$ 
* $tolleranza = 10^{-10}$
* $f'(x)= -\sin(x)$
* $f''(x) = -\cos(x)$

### Prima iterazione

$$ x^{(1)} = 1 - \frac{2\cos(1)(-\sin(1))}{2[-\sin(1)]^2-\cos(1)(-\cos(1))} \approx 1.463...$$



Oss. L'algoritmo si ferma quando trova un'approssimazione della radice al disotto di una tolleranza (input) oppure quando raggionge il massimo numero di passi stabilito (input).

### Di seguito riportata la tabella delle varie iterate generate con Matlab:

| Passo |    Valore x  | Stima errore  |
|:----: |      :----:  |    :----:     |
| 1     | 1.4647692634 | 3.17e-01      |
| 2     | 1.5657894763 | 6.45e-02      |
| 3     | 1.5707838653 | 3.18e-03      |
| 4     | 1.5707838653 | 7.93e-06      |

