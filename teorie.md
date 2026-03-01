# Teorie Calcul Numeric

## Teorema bucilor de cal

$$T_n f(x) = f(a) + \frac{f'(a)}{1!}(x-a) + \frac{f''(a)}{2!}(x-a)^2 + \dots + \frac{f^{(n)}(a)}{n!}(x-a)^n$$
$$T_n f(x) = \sum_{k=0}^{n} \frac{f^{(k)}(a)}{k!}(x-a)^k$$
$$R_n f(x) = \frac{f^{(n+1)}(a+\theta(x-a))}{(n+1)!} (x - a)^{n+1}$$

| Nr. |    Funcția $f(x)$    |             Derivata $f'(x)$             |
| :-: | :------------------: | :--------------------------------------: |
|  1  |         $c$          |                   $0$                    |
|  2  |         $x$          |                   $1$                    |
|  3  |        $x^n$         |                $nx^{n-1}$                |
|  4  |      $\sqrt{x}$      |          $\frac{1}{2\sqrt{x}}$           |
|  5  |    $\frac{1}{x}$     |             $-\frac{1}{x^2}$             |
|  6  |       $\ln x$        |              $\frac{1}{x}$               |
|  7  |        $e^x$         |                  $e^x$                   |
|  8  |        $a^x$         |               $a^x \ln a$                |
|  9  |       $\sin x$       |                 $\cos x$                 |
| 10  |       $\cos x$       |                $-\sin x$                 |
| 11  |    $\text{tg } x$    | $\frac{1}{\cos^2 x} = 1 + \text{tg}^2 x$ |
| 12  |   $\text{ctg } x$    |          $-\frac{1}{\sin^2 x}$           |
| 13  |  $\text{arctg } x$   |           $\frac{1}{x^2 + 1}$            |
| 14  |  $\text{arcsin } x$  |         $\frac{1}{\sqrt{1-x^2}}$         |
| 15  | $\sqrt{x^2 \pm a^2}$ |      $\frac{x}{\sqrt{x^2 \pm a^2}}$      |
| 16  |  $\sqrt{a^2 - x^2}$  |      $-\frac{x}{\sqrt{a^2 - x^2}}$       |
| 17  |  $\text{arcctg } x$  |           $-\frac{1}{x^2 + 1}$           |
| 18  |  $\text{arccos } x$  |        $-\frac{1}{\sqrt{1-x^2}}$         |
| 19  |    $\sqrt[n]{x}$     |      $\frac{1}{n\sqrt[n]{x^{n-1}}}$      |
| 20  |      $\log_a x$      |           $\frac{1}{x \ln a}$            |

| Nr. | Integrala                              | Rezultat                                                |
| :-: | :------------------------------------- | :------------------------------------------------------ |
|  1  | $\int dx$                              | $x + C$                                                 |
|  2  | $\int x^n dx$                          | $\frac{x^{n+1}}{n+1} + C$                               |
|  5  | $\int \frac{1}{x} dx$                  | $\ln\|x\| + C$                                          |
|  6  | $\int e^x dx$                          | $e^x + C$                                               |
|  8  | $\int \cos x \, dx$                    | $\sin x + C$                                            |
|  9  | $\int \sin x \, dx$                    | $-\cos x + C$                                           |
| 12  | $\int \frac{1}{x^2 + a^2} dx$          | $\frac{1}{a} \text{arctg } \frac{x}{a} + C$             |
| 13  | $\int \frac{1}{\sqrt{a^2 - x^2}} dx$   | $\text{arcsin } \frac{x}{a} + C$                        |
| 15  | $\int \frac{1}{\sqrt{x^2 \pm a^2}} dx$ | $\ln\|x + \sqrt{x^2 \pm a^2}\| + C$                     |
| 16  | $\int \frac{1}{x^2 - a^2} dx$          | $\frac{1}{2a} \ln \left\| \frac{x-a}{x+a} \right\| + C$ |
| 19  | $\int \text{tg } x \, dx$              | $-\ln\|\cos x\| + C$                                    |
| 21  | $\int \frac{1}{ax + b} dx$             | $\frac{1}{a} \ln\|ax + b\| + C$                         |
