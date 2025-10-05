---
tags: [лои]
created: 2025-09-14
modified: 2025-09-28
aliases: [Автомат пунктов]
---

Автоматом [[LR(0)-пункт|LR(0)-пунктов]] [[Расширенная грамматика|расширенной грамматики]] $G = (\Sigma, \Gamma, P, S')$ называется [[Недетерминированный конечный автомат c эпсилон-переходами|эпсилон-НКА]] $(Q, \Sigma \cup \Gamma, \delta, q_0, Q)$, где  

- $Q$ — множество [[LR(0)-пункт|LR(0)-пунктов]] грамматики $G$  
- $q_0 = [S' \to \bullet S]$

Функция переходов $\delta$ задается следующим образом:  

$$
\delta(q, x) = 
\begin{cases}
\{[A \rightarrow \beta_1 x \bullet \beta_2]\} & \text{если } q = [A \rightarrow \beta_1 \bullet x\beta_2] \text{ и } x \in \Sigma \cup \Gamma \\
\{[B \rightarrow \bullet \gamma] \mid B \in \Gamma\} & \text{если } q = [A \rightarrow \beta_1 \bullet B\beta_2] \text{ и } x = \varepsilon \\
\emptyset & \text{иначе}
\end{cases}, \beta_1, \beta_2, \gamma \in (\Sigma \cup \Gamma)^*
$$
