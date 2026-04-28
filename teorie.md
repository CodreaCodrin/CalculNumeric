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

### Aproximarea Padé

Aproximarea Padé reprezintă o funcție sub formă de **fracție între două polinoame**:

$$R(x) = \frac{P_m(x)}{Q_n(x)} = \frac{a_0 + a_1 x + a_2 x^2 + \cdots + a_m x^m}{1 + b_1 x + b_2 x^2 + \cdots + b_n x^n}$$

Ideea de bază la Padé este că $f(x) \cdot Q(x) - P(x)$ trebuie să aibă cât mai mulți termeni nuli la început.

$$f(x) \cdot Q_n(x) - P_m(x) = O(x^{m+n+1})$$

### Seria Geometrică

$$S = a + aq + aq^2 + aq^3 + \cdots = \sum_{n=0}^{\infty} aq^n$$

Matematicienii au demonstrat că, dacă valoarea rației este mică ($|q| < 1$), această sumă infinită nu se duce la infinit, ci se "oprește" (converge) la o valoare fixă:

$$S = \frac{a}{1 - q}$$

Suma parțială a primilor $n$ termeni:

$$S_n = \frac{1 - q^n}{1 - q}$$

## Formule pentru calculul limitelor

### Regula lui l'Hôpital

Se aplică doar pentru cazurile de nedeterminare de tipul $\frac{0}{0}$ sau $\frac{\infty}{\infty}$:
$$ \lim_{x \to x_0} \frac{f(x)}{g(x)} = \lim_{x \to x_0} \frac{f'(x)}{g'(x)} $$

### Limite fundamental remarcabile

| Nr. | Limita | Valoarea |
| :-: | :--- | :-: |
| 1 | $\lim_{x \to 0} \frac{\sin x}{x}$ | $1$ |
| 2 | $\lim_{x \to 0} \frac{\text{tg } x}{x}$ | $1$ |
| 3 | $\lim_{x \to 0} \frac{\arcsin x}{x}$ | $1$ |
| 4 | $\lim_{x \to 0} \frac{\text{arctg } x}{x}$ | $1$ |
| 5 | $\lim_{x \to \pm\infty} \left(1 + \frac{1}{x}\right)^x$ | $e$ |
| 6 | $\lim_{x \to 0} (1 + x)^{\frac{1}{x}}$ | $e$ |
| 7 | $\lim_{x \to 0} \frac{\ln(1+x)}{x}$ | $1$ |
| 8 | $\lim_{x \to 0} \frac{a^x - 1}{x}$, cu $a > 0$ | $\ln a$ |
| 9 | $\lim_{x \to 0} \frac{e^x - 1}{x}$ | $1$ |
| 10 | $\lim_{x \to 0} \frac{(1+x)^r - 1}{x}$ | $r$ |

### Limite la infinit pentru funcții raționale

Dacă avem $\lim_{x \to \infty} \frac{P(x)}{Q(x)}$ (unde funcțiile din fracție sunt polinoame strict de grad $n$, respectiv $m$):

- **Dacă $n > m$**: limita este $\pm \infty$ (se decide în funcție de semnul diviziunii coeficienților dominanți).

- **Dacă $n = m$**: limita este egală cu raportul coeficienților dominanți (ex: $\frac{a_n}{b_m}$).

- **Dacă $n < m$**: limita este $0$.

## Derivate și Integrale

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

$$5.\quad [f(g(x))]' = f'(g(x)) \cdot g'(x)$$

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

| Nr. | Formula                                                                                                                         |
| :-: | :------------------------------------------------------------------------------------------------------------------------------ |
|  1  | $\sin^2 x + \cos^2 x = 1$                                                                                                       |
|  2  | $\sin 2x = 2\sin x \cdot \cos x$                                                                                                |
|  3  | $\cos 2x = \cos^2 x - \sin^2 x = 2\cos^2 x - 1 = 1 - 2\sin^2 x$                                                                 |
|  4  | $\sin(-x) = -\sin x$                                                                                                            |
|  5  | $\cos(-x) = \cos x$                                                                                                             |
|  6  | $\text{tg}(-x) = -\text{tg}\, x$                                                                                                |
|  7  | $\text{ctg}(-x) = -\text{ctg}\, x$                                                                                              |
|  8  | $\sin(x + 2k\pi) = \sin x, \quad k \in \mathbb{Z}$                                                                              |
|  9  | $\cos(x + 2k\pi) = \cos x$                                                                                                      |
| 10  | $\text{tg}(x + k\pi) = \text{tg}\, x, \quad x \in \mathbb{R} \setminus \lbrace\frac{(2k+1)\pi}{2} \mid k \in \mathbb{Z}\rbrace$ |
| 11  | $\text{ctg}(x + k\pi) = \text{ctg}\, x, \quad x \in \mathbb{R} \setminus \{k\pi \mid k \in \mathbb{Z}\}$                        |
| 12  | $\sin(a + b) = \sin a \cdot \cos b + \sin b \cdot \cos a, \quad a, b \in \mathbb{R}$                                            |
| 13  | $\sin(a - b) = \sin a \cdot \cos b - \sin b \cdot \cos a$                                                                       |
| 14  | $\cos(a + b) = \cos a \cdot \cos b - \sin a \cdot \sin b$                                                                       |
| 15  | $\cos(a - b) = \cos a \cdot \cos b + \sin a \cdot \sin b$                                                                       |
| 16  | $\sin a + \sin b = 2\sin\dfrac{a+b}{2}\cos\dfrac{a-b}{2}$                                                                       |
| 17  | $\sin a - \sin b = 2\cos\dfrac{a+b}{2}\sin\dfrac{a-b}{2}$                                                                       |
| 18  | $\cos a + \cos b = 2\cos\dfrac{a+b}{2}\cos\dfrac{a-b}{2}$                                                                       |
| 19  | $\cos a - \cos b = -2\sin\dfrac{a+b}{2}\sin\dfrac{a-b}{2}$                                                                      |
| 20  | $\sin a \cdot \sin b = \dfrac{\cos(a-b) - \cos(a+b)}{2}$                                                                        |
| 21  | $\cos a \cdot \cos b = \dfrac{\cos(a+b) + \cos(a-b)}{2}$                                                                        |
| 22  | $\sin a \cdot \cos b = \dfrac{\sin(a+b) + \sin(a-b)}{2}$                                                                        |

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

### Valorile funcțiilor trigonometrice

|                 | $0°$ |         $30°$         |         $45°$         |         $60°$         |      $90°$       |         $120°$         |         $135°$         |         $150°$         | $180°$ |         $210°$         |         $225°$         |         $240°$         |      $270°$       |         $300°$         |         $315°$         |         $330°$         | $360°$ |
| :-------------: | :--: | :-------------------: | :-------------------: | :-------------------: | :--------------: | :--------------------: | :--------------------: | :--------------------: | :----: | :--------------------: | :--------------------: | :--------------------: | :---------------: | :--------------------: | :--------------------: | :--------------------: | :----: |
|    $x$ (rad)    | $0$  |   $\dfrac{\pi}{6}$    |   $\dfrac{\pi}{4}$    |   $\dfrac{\pi}{3}$    | $\dfrac{\pi}{2}$ |   $\dfrac{2\pi}{3}$    |   $\dfrac{3\pi}{4}$    |   $\dfrac{5\pi}{6}$    | $\pi$  |   $\dfrac{7\pi}{6}$    |   $\dfrac{5\pi}{4}$    |   $\dfrac{4\pi}{3}$    | $\dfrac{3\pi}{2}$ |   $\dfrac{5\pi}{3}$    |   $\dfrac{7\pi}{4}$    |   $\dfrac{11\pi}{6}$   | $2\pi$ |
|    $\sin x$     | $0$  |    $\dfrac{1}{2}$     | $\dfrac{\sqrt{2}}{2}$ | $\dfrac{\sqrt{3}}{2}$ |       $1$        | $\dfrac{\sqrt{3}}{2}$  | $\dfrac{\sqrt{2}}{2}$  |     $\dfrac{1}{2}$     |  $0$   |    $-\dfrac{1}{2}$     | $-\dfrac{\sqrt{2}}{2}$ | $-\dfrac{\sqrt{3}}{2}$ |       $-1$        | $-\dfrac{\sqrt{3}}{2}$ | $-\dfrac{\sqrt{2}}{2}$ |    $-\dfrac{1}{2}$     |  $0$   |
|    $\cos x$     | $1$  | $\dfrac{\sqrt{3}}{2}$ | $\dfrac{\sqrt{2}}{2}$ |    $\dfrac{1}{2}$     |       $0$        |    $-\dfrac{1}{2}$     | $-\dfrac{\sqrt{2}}{2}$ | $-\dfrac{\sqrt{3}}{2}$ |  $-1$  | $-\dfrac{\sqrt{3}}{2}$ | $-\dfrac{\sqrt{2}}{2}$ |    $-\dfrac{1}{2}$     |        $0$        |     $\dfrac{1}{2}$     | $\dfrac{\sqrt{2}}{2}$  | $\dfrac{\sqrt{3}}{2}$  |  $1$   |
| $\text{tg}\,x$  | $0$  | $\dfrac{\sqrt{3}}{3}$ |          $1$          |      $\sqrt{3}$       |       $-$        |      $-\sqrt{3}$       |          $-1$          | $-\dfrac{\sqrt{3}}{3}$ |  $0$   | $\dfrac{\sqrt{3}}{3}$  |          $1$           |       $\sqrt{3}$       |        $-$        |      $-\sqrt{3}$       |          $-1$          | $-\dfrac{\sqrt{3}}{3}$ |  $0$   |
| $\text{ctg}\,x$ | $-$  |      $\sqrt{3}$       |          $1$          | $\dfrac{\sqrt{3}}{3}$ |       $0$        | $-\dfrac{\sqrt{3}}{3}$ |          $-1$          |      $-\sqrt{3}$       |  $-$   |       $\sqrt{3}$       |          $1$           | $\dfrac{\sqrt{3}}{3}$  |        $0$        | $-\dfrac{\sqrt{3}}{3}$ |          $-1$          |      $-\sqrt{3}$       |  $-$   |

## Logaritmi și Proprietăți

**Definiție:** $\log_a x = y \iff a^y = x$ (cu condițiile $a > 0$, $a \neq 1$, $x > 0$)

**Logaritmi particulari:**

- Logaritm natural (baza $e$): $\ln x = \log_e x$

- Logaritm zecimal (baza $10$): $\lg x = \log_{10} x$

**Proprietăți fundamentale:**
$$1.\quad \log_a 1 = 0 \qquad\qquad 2.\quad \log_a a = 1$$

$$3.\quad \log_a(x \cdot y) = \log_a x + \log_a y \qquad\qquad 4.\quad \log_a\left(\frac{x}{y}\right) = \log_a x - \log_a y$$

$$5.\quad \log_a(x^p) = p \cdot \log_a x \qquad\qquad 6.\quad \log_{a^q} x = \frac{1}{q} \cdot \log_a x$$

$$7.\quad \log_{a^q}(x^p) = \frac{p}{q} \cdot \log_a x \qquad\qquad 8.\quad a^{\log_a x} = x$$

**Schimbarea bazei și alte identități:**
$$9.\quad \log_a x = \frac{\log_b x}{\log_b a} \qquad\qquad 10.\quad \log_a b = \frac{1}{\log_b a}$$

$$11.\quad \log_a b \cdot \log_b c = \log_a c \qquad\qquad 12.\quad x^{\log_a y} = y^{\log_a x}$$

### La conversii

- bitii puterii sunt reprezentarea in baza 2 a 127 + puterea
- trebuie mutata virgula astfel incat primul 1 sa fie in dreapta ei
- ce e la dreapta de virgula e mantisa
- primul bit e semnul, apoi este puterea, apoi este mantisa

### Erori

- **Eroarea absolută:**
  $$|\Delta x| = |x - x^*|$$
- **Eroarea relativă** (cea pe care o folosim în formulele de condiționare):
  $$|\delta x| = \frac{|\Delta x|}{|x|}$$

### Elemente de bază pentru matrici

- **Matricea identitate ($I$ sau $I_n$):** Este matricea pătratică cu $1$ pe diagonala principală și $0$ în rest. Este elementul neutru la înmulțirea matricilor ($A \cdot I = I \cdot A = A$).
  $$ I_n = \begin{pmatrix} 1 & 0 & \dots & 0 \\ 0 & 1 & \dots & 0 \\ \vdots & \vdots & \ddots & \vdots \\ 0 & 0 & \dots & 1 \end{pmatrix} $$

- **Transpusa unei matrici ($A^T$):** Se obține scriind liniile matricei $A$ sub formă de coloane (liniile devin coloane și coloanele devin linii). Elementele respectă proprietatea $a^T_{ij} = a_{ji}$.
  $$ A = \begin{pmatrix} a & b \\ c & d \end{pmatrix} \implies A^T = \begin{pmatrix} a & c \\ b & d \end{pmatrix} $$

- **Inversa unei matrici ($A^{-1}$):** O matrice pătratică $A$ se numește inversabilă dacă determinantul ei este nenul ($\det(A) \neq 0$). Inversa satisface relația $A \cdot A^{-1} = A^{-1} \cdot A = I$.
  **Formula generală:**
  $$ A^{-1} = \frac{1}{\det(A)} \cdot A^{\ast} $$
  (unde $A^{\ast}$ este matricea adjunctă, adică transpusa matricei cofactorilor)

  **Exemplu rapid pentru o matrice 2x2:**
  $$ A = \begin{pmatrix} a & b \\ c & d \end{pmatrix} \implies A^{-1} = \frac{1}{ad - bc} \begin{pmatrix} d & -b \\ -c & a \end{pmatrix} $$

- **Matricea adjunctă ($A^{\ast}$):** Este transpusa matricei cofactorilor. Pașii pentru a o construi:
  1. Se calculează cofactorii $C_{ij}$ pentru fiecare element al matricei:
     $$ C_{ij} = (-1)^{i+j} \det(M_{ij}) $$
     (unde $M*{ij}$ se numește minor și reprezintă determinantul matricei rămase după tăierea liniei $i$ și coloanei $j$ din matricea $A$)
  2. Matricea adjunctă este transpusa matricei formate din acești cofactori $C$:
     $$ A^{\ast} = C^T $$

### Norme

- **Norma 1 (Manhattan):** Suma modulelor elementelor.
  $$\|x\|_1 = |x_1| + \dots + |x_m|$$
- **Norma 2 (Euclidiană):** Radical din suma pătratelor.
  $$\|x\|_2 = \sqrt{x_1^2 + \dots + x_m^2}$$
- **Norma $\infty$ (Supremum):** Cel mai mare modul.
  $$\|x\|_\infty = \max\{|x_1|, \dots, |x_m|\}$$

#### Norme matriceale

- **Norma 1 (Norma coloană):** $\|A\|_1$
  Reprezintă **maximul sumelor de pe coloane** (luând elementele în modul).
  - **Cum faci practic:** Aduni elementele de pe fiecare coloană în parte (ignorând semnele de minus). Norma 1 va fi cel mai mare rezultat obținut.
  - **Formula matematică:**
    $$\|A\|_1 = \max_{1 \le j \le n} \sum_{i=1}^m |a_{ij}|$$

- **Norma 2:** $\|A\|_2$
  - **Formula matematică:**
    $$\|A\|_2 = \sqrt{\lambda_{max}(A^T \cdot A)}$$
  - **Cum faci practic (calcul de mână):**
    1. **Afli transpusa:** Iei matricea $A$ și scrii transpusa ei, $A^T$ (liniile se transformă în coloane).
    2. **Înmulțești matricile:** Faci înmulțirea $A^T \cdot A$. Vei obține o nouă matrice, care va fi întotdeauna pătratică și simetrică. Să o numim $B$.
    3. **Calculezi valorile proprii ($\lambda$):** Trebuie să găsești valorile proprii ale matricei $B$. Asta înseamnă să rezolvi ecuația caracteristică: $\det(B - \lambda \cdot I) = 0$, unde $I$ este matricea identitate. Vei obține un polinom în funcție de $\lambda$ căruia trebuie să-i găsești rădăcinile.
    4. **Alegi maximul:** Dintre toate valorile proprii pe care le-ai găsit (care vor fi numere reale și $\geq 0$), o alegi pe cea mai mare. Aceasta este $\lambda_{max}$.
    5. **Aplici radicalul:** Extragi radical din acea valoare maximă, iar rezultatul este $\|A\|_2$.

- **Norma infinit (Norma linie):** $\|A\|_\infty$
  Reprezintă **maximul sumelor de pe linii** (la fel, luate în modul).
  - **Cum faci practic:** Aduni elementele de pe fiecare linie în parte (ignorând semnele minus). Norma infinit va fi cel mai mare rezultat obținut.
  - **Formula matematică:**
    $$\|A\|_\infty = \max_{1 \le i \le m} \sum_{j=1}^n |a_{ij}|$$

### Numărul de condiționare

Formula generală a propagării erorilor:
$$|\delta y| \leq cond \cdot |\delta x|$$

Unde:

- $\delta y$ reprezintă eroarea (sau perturbația) rezultatului / ieșirii.
- $cond$ este numărul de condiționare, care indică factorul de amplificare a erorii.
- $\delta x$ reprezintă eroarea (sau perturbația) datelor de intrare.

#### 1. Funcții de o singură variabilă (1D)

Dacă ai o funcție simplă $f : \mathbb{R} \to \mathbb{R}$ (ex: $f(x) = e^x$ sau $f(x) = x^2 + 2$), folosești derivata de ordinul 1.

- **Formula:**
  $$cond f(x) = \left| \frac{x \cdot f'(x)}{f(x)} \right|$$
- **Cum o folosești:** Derivezi funcția, înmulțești cu $x$, împarți la funcția originală și iei modulul. Dacă rezultatul e $\gg 1$, problema e prost condiționată.

#### 2. Sisteme Liniare ($A \cdot y = b$)

Aici vrei să afli cât de sensibilă este matricea sistemului tău ($A$) la mici erori. Este cea mai des folosită formulă la laboratoare.

- **Formula:**
  $$cond_p(A) = \|A\|_p \cdot \|A^{-1}\|_p$$
- **Cum o folosești:**
  1. Calculezi norma matricei $A$ (folosind norma cerută $p$).
  2. Calculezi inversa matricei, $A^{-1}$.
  3. Calculezi norma lui $A^{-1}$.
  4. Le înmulțești.

#### 3. Funcții Multivariabile

Dacă ai un sistem de funcții $f = (f_1, \dots, f_n)$ cu mai multe variabile $x = (x_1, \dots, x_m)$, ai două definiții în notițe. Pe care o folosești depinde de preferința ta sau de cerință:

- **Definiția 1 (Folosind matricea $\Gamma$):** Construiești matricea $\Gamma(x)$ în care fiecare element de pe linia $i$ și coloana $j$ se calculează așa:
  $$\Gamma_{ij}(x) = \frac{x_j}{f_i(x)} \cdot \frac{\partial f_i}{\partial x_j}(x)$$
  Apoi calculezi norma matricială: $cond_p f(x) = \|\Gamma(x)\|_p$
- **Definiția 2 (Folosind matricea Jacobiană):**
  - **Formula Matricei Jacobiane:** Construiești matricea $J$ formată doar din derivatele parțiale $\frac{\partial f_i}{\partial x_j}$:
    $$ J = \begin{pmatrix} \frac{\partial f_1}{\partial x_1} & \frac{\partial f_1}{\partial x_2} & \dots & \frac{\partial f_1}{\partial x_n} \\ \frac{\partial f_2}{\partial x_1} & \frac{\partial f_2}{\partial x_2} & \dots & \frac{\partial f_2}{\partial x_n} \\ \vdots & \vdots & \ddots & \vdots \\ \frac{\partial f_m}{\partial x_1} & \frac{\partial f_m}{\partial x_2} & \dots & \frac{\partial f_m}{\partial x_n} \end{pmatrix} $$
  - **Formula Condiționării (Definiția 2 tradusă):** Odată ce ai construit această matrice cu derivate, formula din definiția 2 pentru numărul de condiționare devine foarte asemănătoare cu cea de la funcțiile simple (modul din $x \cdot f'(x)/f(x)$), doar că înlocuim derivata simplă cu norma matricei Jacobiane:
    $$cond_p f(x) = \frac{\|x\|_p \cdot \|J(x)\|_p}{\|f(x)\|_p}$$
    _Unde $p$ reprezintă tipul de normă ales (1, 2, infinit)._

#### 4. Rădăcinile Polinoamelor

Dacă ai un polinom $p(x) = x^n + a_1x^{n-1} + \dots + a_n = 0$ și vrei să vezi cât de sensibilă e o rădăcină $\xi$ la modificarea coeficienților $a_j$:

- **Formula:**
  $$cond_1 \xi(a) = \frac{\sum_{j=1}^n |a_j \cdot \xi^{n-j}|}{|\xi \cdot p'(\xi)|}$$
- **Cum o folosești:** Ai nevoie de coeficienții polinomului, de valoarea rădăcinii $\xi$ și de valoarea derivatei polinomului în acea rădăcină, $p'(\xi)$.

## Interpolarea Lagrange

Polinomul de interpolare Lagrange $P(x)$ pentru un set de puncte $(x_0, y_0), (x_1, y_1), \dots, (x_n, y_n)$ este dat de formula:

$$P(x) = y_0 \cdot L_0(x) + y_1 \cdot L_1(x) + \dots + y_n \cdot L_n(x)$$

unde polinoamele fundamentale Lagrange $L_i(x)$ se calculează astfel:

$$L_i(x) = \prod_{j=0, j \neq i}^{n} \frac{x - x_j}{x_i - x_j}$$

### Forma baricentrică

Pentru evaluarea și actualizarea eficientă a polinomului (în $O(n)$ operații), se folosește forma baricentrică.

Notând:
$$\ell(x) = (x - x_0)(x - x_1)\cdots(x - x_n)$$

Se definesc **ponderile baricentrice**:
$$w_j = \frac{1}{\prod_{k \neq j} (x_j - x_k)}, \quad j = 0, \dots, n$$

Astfel, polinomul de interpolare Lagrange se poate scrie:
$$P(x) = \ell(x) \sum_{j=0}^{n} \frac{w_j}{x - x_j} y_j$$

## Interpolarea Newton

Formula generală a polinomului Newton, notat cu $N(x)$, arată așa:

$$N(x) = c_0 + c_1(x - x_0) + c_2(x - x_0)(x - x_1) + \dots + c_n(x - x_0)(x - x_1)\dots(x - x_{n-1})$$

Hermite

$$H(x) = c_0 + c_1(x - z_0) + c_2(x - z_0)(x - z_1) + \dots + c_n(x - z_0)(x - z_1)\dots(x - z_{n-1})$$

### Formula Erorii

Dacă ai un polinom de interpolare construit pe $n$ puncte în total (incluzând dublurile), eroarea $E(x)$ într-un punct $x$ este dată de formula:

$$E(x) = \frac{f^{(n)}(\xi)}{n!} \cdot (x - z_0)(x - z_1)\dots(x - z_{n-1})$$

In cazul Hermite, $\xi$ mereu estre intre punctele respective (nodurile) iar derivata este de ordinul cate z-uri sunt. Daca is 2 noduri derivata e de ordin 4.

## Spline

Formula pasului (lungimea intervalului)

$$h_i = x_{i+1} - x_i$$

Ecuația de continuitate (pentru aflarea momentelor $M_i$)

$$\frac{h_{i-1}}{6}M_{i-1} + \frac{h_{i-1} + h_i}{3}M_i + \frac{h_i}{6}M_{i+1} = \frac{f(x_{i+1}) - f(x_i)}{h_i} - \frac{f(x_i) - f(x_{i-1})}{h_{i-1}}$$

Ecuația pentru capătul stâng (Nouă - folosește derivata $f'(x_0)$)
$$\frac{h_0}{3}M_0 + \frac{h_0}{6}M_1 = \frac{f(x_1) - f(x_0)}{h_0} - f'(x_0)$$

Ecuația pentru capătul drept (Nouă - folosește derivata $f'(x_2)$)
$$\frac{h_1}{6}M_1 + \frac{h_1}{3}M_2 = f'(x_2) - \frac{f(x_2) - f(x_1)}{h_1}$$

Ecuația polinomului Spline pentru intervalul $i$

$$S_i(x) = \frac{M_{i}}{6h_i}(x_{i+1} - x)^3 + \frac{M_{i+1}}{6h_i}(x - x_i)^3 + \left( \frac{f(x_i)}{h_i} - \frac{M_i h_i}{6} \right)(x_{i+1} - x) + \left( \frac{f(x_{i+1})}{h_i} - \frac{M_{i+1} h_i}{6} \right)(x - x_i)$$
