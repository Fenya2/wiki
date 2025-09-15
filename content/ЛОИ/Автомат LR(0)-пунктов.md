---
tags: [лои]
created: 2025-09-14
modified: 2025-09-14
aliases: [Автомат пунктов]
---

Автоматом пунктов [[Расширенная грамматика|расширенной грамматики]] $G = (\Sigma, \Gamma, P, S')$ называется [[Недетерминированный конечный автомат c эпсилон-переходами|эпсилон-НКА]] $(Q, \Sigma \cup \Gamma, \delta, q_0, Q)$, где  

- $Q$ — множество [[LR(0)-пункт|пунктов]] $G$  
- $q_0 = [S' \to \bullet S]$

Функция переходов $\delta$ задается следующим образом:  

$$
\delta(Q, X) = 
\begin{cases}
\{[A \rightarrow \beta_1 X \bullet \beta_2]\} & \text{если } Q = [A \rightarrow \beta_1 \bullet X\beta_2] \text{ и } X \in \Sigma \cup \Gamma \\
\{[B \rightarrow \bullet \gamma] \mid B \in \Gamma\} & \text{если } Q = [A \rightarrow \beta_1 \bullet B\beta_2] \text{ и } X = \epsilon \\
\emptyset & \text{иначе}
\end{cases}, \beta_1, \beta_2, \gamma \in (\Sigma \cup \Gamma)^*
$$
