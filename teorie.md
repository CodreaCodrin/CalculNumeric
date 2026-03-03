# Teorie Calcul Numeric

## Basic Taylor

$$T_n f(x) = f(a) + \frac{f'(a)}{1!}(x-a) + \frac{f''(a)}{2!}(x-a)^2 + \dots + \frac{f^{(n)}(a)}{n!}(x-a)^n$$
$$T_n f(x) = \sum_{k=0}^{n} \frac{f^{(k)}(a)}{k!}(x-a)^k$$
$$R_n f(x) = \frac{f^{(n+1)}(a+\theta(x-a))}{(n+1)!} (x - a)^{n+1}$$

### Binomiala

Pentru $|x| < 1$, funcția $(1 + x)^\alpha$ poate fi scrisă ca o serie de puteri:

$$(1 + x)^\alpha = 1 + \alpha x + \frac{\alpha(\alpha-1)}{2!}x^2 + \frac{\alpha(\alpha-1)(\alpha-2)}{3!}x^3 + \dots$$

Prin utilizarea coeficienților binomiali generalizați $\displaystyle\binom{\alpha}{n} = \frac{\alpha(\alpha-1)\cdots(\alpha-n+1)}{n!}$, seria se scrie compact:

$$(1 + x)^\alpha = \sum_{n=0}^{\infty} \binom{\alpha}{n} x^n$$

### McLaurin

Dacă în formula lui Taylor se ia $a = 0$, se obține formula lui Maclaurin:

$$f(x) = f(0) + xf'(0) + \frac{x^2}{2!}f''(0) + \cdots + \frac{x^n}{n!}f^{(n)}(0) + (R_n f)(x)$$

unde restul Lagrange este:

$$(R_n f)(x) = \frac{x^{n+1}}{(n+1)!} f^{(n+1)}(\theta x), \qquad \theta \in (0, 1)$$

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

**Reguli de derivare:**

$$1.\quad (f + g)' = f' + g' \qquad\qquad 2.\quad (nr \cdot f)' = nr \cdot f'$$

$$3.\quad (f \cdot g)' = f' \cdot g + f \cdot g' \qquad\qquad 4.\quad \left(\frac{f}{g}\right)' = \frac{f' \cdot g - f \cdot g'}{g^2}$$

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

**Reguli de integrare:**

**Formula Leibniz-Newton:** $\displaystyle\int_a^b f(x)\,dx = F(x)\Big|_a^b = F(b) - F(a)$, unde $F$ este o primitivă a lui $f$

**Integrarea prin părți:** $\displaystyle\int_a^b f(x)g'(x)\,dx = f(x)g(x)\Big|_a^b - \int_a^b f'(x)g(x)\,dx$

**Prima schimbare de variabilă:** $\displaystyle\int_a^b f(\varphi(x))\cdot\varphi'(x)\,dx = \int_{\varphi(a)}^{\varphi(b)} f(t)\,dt$

---

## Formule Trigonometrice

| Nr. | Formula                                                                                                                          |
| :-: | :------------------------------------------------------------------------------------------------------------------------------- |
|  1  | $\sin^2 x + \cos^2 x = 1$                                                                                                        |
|  2  | $\sin 2x = 2\sin x \cdot \cos x$                                                                                                 |
|  3  | $\cos 2x = \cos^2 x - \sin^2 x = 2\cos^2 x - 1 = 1 - 2\sin^2 x$                                                                  |
|  4  | $\sin(-x) = -\sin x$                                                                                                             |
|  5  | $\cos(-x) = \cos x$                                                                                                              |
|  6  | $\text{tg}(-x) = -\text{tg}\, x$                                                                                                 |
|  7  | $\text{ctg}(-x) = -\text{ctg}\, x$                                                                                               |
|  8  | $\sin(x + 2k\pi) = \sin x, \quad k \in \mathbb{Z}$                                                                               |
|  9  | $\cos(x + 2k\pi) = \cos x$                                                                                                       |
| 10  | $\text{tg}(x + k\pi) = \text{tg}\, x, \quad x \in \mathbb{R} \setminus \left\{\frac{(2k+1)\pi}{2} \mid k \in \mathbb{Z}\right\}$ |
| 11  | $\text{ctg}(x + k\pi) = \text{ctg}\, x, \quad x \in \mathbb{R} \setminus \{k\pi \mid k \in \mathbb{Z}\}$                         |
| 12  | $\sin(a + b) = \sin a \cdot \cos b + \sin b \cdot \cos a, \quad a, b \in \mathbb{R}$                                             |
| 13  | $\sin(a - b) = \sin a \cdot \cos b - \sin b \cdot \cos a$                                                                        |
| 14  | $\cos(a + b) = \cos a \cdot \cos b - \sin a \cdot \sin b$                                                                        |
| 15  | $\cos(a - b) = \cos a \cdot \cos b + \sin a \cdot \sin b$                                                                        |
| 16  | $\sin a + \sin b = 2\sin\dfrac{a+b}{2}\cos\dfrac{a-b}{2}$                                                                        |
| 17  | $\sin a - \sin b = 2\cos\dfrac{a+b}{2}\sin\dfrac{a-b}{2}$                                                                        |
| 18  | $\cos a + \cos b = 2\cos\dfrac{a+b}{2}\cos\dfrac{a-b}{2}$                                                                        |
| 19  | $\cos a - \cos b = -2\sin\dfrac{a+b}{2}\sin\dfrac{a-b}{2}$                                                                       |
| 20  | $\sin a \cdot \sin b = \dfrac{\cos(a-b) - \cos(a+b)}{2}$                                                                         |
| 21  | $\cos a \cdot \cos b = \dfrac{\cos(a+b) + \cos(a-b)}{2}$                                                                         |
| 22  | $\sin a \cdot \cos b = \dfrac{\sin(a+b) + \sin(a-b)}{2}$                                                                         |

### Formule de reducere

|        Cadran         |  $\sin$   |  $\cos$   |   $\text{tg}$    |   $\text{ctg}$   |
| :-------------------: | :-------: | :-------: | :--------------: | :--------------: |
| $x + \dfrac{\pi}{2}$  | $\cos x$  | $-\sin x$ | $-\text{ctg}\,x$ | $-\text{tg}\,x$  |
| $\dfrac{\pi}{2} - x$  | $\cos x$  | $\sin x$  | $\text{ctg}\,x$  |  $\text{tg}\,x$  |
|       $x + \pi$       | $-\sin x$ | $-\cos x$ |  $\text{tg}\,x$  | $\text{ctg}\,x$  |
|       $\pi - x$       | $\sin x$  | $-\cos x$ | $-\text{tg}\,x$  | $-\text{ctg}\,x$ |
| $x + \dfrac{3\pi}{2}$ | $-\cos x$ | $\sin x$  | $-\text{ctg}\,x$ | $-\text{tg}\,x$  |
| $\dfrac{3\pi}{2} - x$ | $-\cos x$ | $-\sin x$ | $\text{ctg}\,x$  |  $\text{tg}\,x$  |
|      $x + 2\pi$       | $\sin x$  | $\cos x$  |  $\text{tg}\,x$  | $\text{ctg}\,x$  |
|      $2\pi - x$       | $-\sin x$ | $\cos x$  | $-\text{tg}\,x$  | $-\text{ctg}\,x$ |
