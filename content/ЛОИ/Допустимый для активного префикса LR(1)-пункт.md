---
tags: [лои]
created: 2025-09-23
modified: 2025-10-26
---

В [[Расширенная грамматика|расширенной грамматике]] $G = (\Sigma, \Gamma, \_, S')$ её [[LR(1)-пункт]] $[A \to \beta_1 \bullet \beta_2, a]$ *допустим для [[Активный префикс r-формы|активного префикса]] $\gamma = \gamma'\beta_1$ некоторой [[r-форма|r-формы]] $\gamma' \beta_1 \beta_2 v$*, если существует [[Правосторонний вывод|правосторонний вывод]]

$$
S' \Rightarrow^* \gamma'Av \Rightarrow \gamma' \beta_1 \beta_2 v \Rightarrow^* uv
$$

и цепочка $v$ начинается с символа $a$

- $\gamma', \beta_1, \beta_2 \in ( \Sigma \cup \Gamma )^*$
- $u,v \in \Sigma$
