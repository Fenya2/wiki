---
tags: [лои]
created: 2025-09-28
modified: 2025-09-28
---

>*Определяется по аналогии с [[Автомат LR(0)-пунктов|автоматом LR(0)-пунктов]]*

Автоматом [[LR(1)-пункт|LR(1)-пунктов]] [[Расширенная грамматика|расширенной грамматики]] $G = (\Sigma, \Gamma, P, S')$ называется [[Недетерминированный конечный автомат c эпсилон-переходами|эпсилон-НКА]] $(Q, \Sigma \cup \Gamma, \delta, q_0, Q)$, где  

- $Q$ — множество [[LR(1)-пункт|LR(1)-пунктов]] грамматики $G$  
- $q_0 = [S' \to \bullet S, \dashv]$

Функция переходов $\delta$ задается следующим образом:  

$$
\delta(q, x) = 
\begin{cases}
\{[A \rightarrow \beta_1 x \bullet \beta_2, a]\} & \text{если } q = [A \rightarrow \beta_1 \bullet x \beta_2, a], x \in \Sigma \cup \Gamma, a \in \Sigma \cup \{\dashv \} \\
\{[B \rightarrow \bullet \gamma, b] \mid B \in \Gamma\} & \text{если } q = [A \rightarrow \beta_1 \bullet B\beta_2, a] \text{ и } x = \varepsilon, a \in \Sigma \cup \{\dashv\}, b \in FIRST(\beta_2a) \\
\emptyset & \text{иначе}
\end{cases}, \beta_1, \beta_2, \gamma \in (\Sigma \cup \Gamma)^*
$$

[[Недетерминированный конечный автомат]], множеством состояний $Q$ которого является множество [[LR(1)-пункт|LR(1)-пунктов]] [[Расширенная грамматика|расширенной грамматики]]. Начальным состоянием $q_0$ такого автомата является [[LR(1)-пункт]] $[S' \to \bullet S, \dashv]$. Множество заключительных состояний $F$ совпадает с $Q$

см: *[[Множество FIRST от цепочки]]*
