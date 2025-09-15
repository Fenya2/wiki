---
aliases: []
created: 2025-04-01
modified: 2025-07-13
tags: [бд]
---

Важно разделять [[Базы данных. Определения#Класс сущности|классы сущности]] и [[Базы данных. Определения#Объект сущности|объекты сущности]]

У сущностей есть [[Базы данных. Определения#Атрибут|атрибуты]]

# Типы атрибутов

[types of attributes](https://www.geeksforgeeks.org/types-of-attributes-in-er-model/)

1. **Простые** An attribute that cannot be further subdivided into components - не может быть разделен на компоненты - Имя студента
2. **Ключевые** (Key) - Атрибут, который ** однозначно идентифицирует каждую сущность** в наборе сущностей (множество всех объектов в совокупности), называется ключевым атрибутом
3. **Составные** (Composite) - attribute **composed of many other attributes** is called a composite attribute. - Пример - адрес
4. **Однозначные** Атрибут, который принимает только одно значение для каждого экземпляра сущности- Номер студенческого билета
5. **Многозначные** (Multivalued) - Атрибут, состоящий из более чем одного значения для данного объекта. For example, Phone_Nomber
6. **Производные** An attribute that can be derived from other attributes of the entity type - Атрибут "Возраст" может быть получен из атрибута "Дата рождения"

![[Pasted image 20241230184517.png]]

>tangible - ощутимый, реальный, осязаемый

Сущности могут взаимодействовать такое взаимодействие описывается [[Базы данных. Определения#Связь|связями]]. Связи характеризуются [[Базы данных. Определения#Степень связи|степенью связи]]

[Степень связи](https://www.geeksforgeeks.org/degree-of-relations-in-dbms/)

Типы степеней связей

1. Unary (унарная) сущность человек. Связь человек 1 является отцом человека 2 * (похоже на рекурсивную связь), for example, one person is married to only one person
2. Binary (бинарная)
3. Ternary (тернарная)
4. N-ary (N-арная)

# Типы связей

1. Один к одному - студент и номер его студенческого билета
2. Один ко многим - отец и его дочери
3. Многие ко многим - авторы и книги (у книги может быть много авторов, автор может написать много книг)

>На er-диаграммах сущности обозначаются **прямоугольниками**, атрибуты **эллипсами**, связи - **ромбами**

The number of times an entity of an entity set participates in a relationship set is known as [cardinality](https://www.geeksforgeeks.org/cardinality-in-dbms/) . Cardinality can be of different types:

![[Pasted image 20241230191230.png]]

[Слабая сущность](https://www.geeksforgeeks.org/weak-entity-set-in-er-diagrams/) - entity that depend on some other entity (known as owner entity) and cannot exists individually (тип-значение)

![[Pasted image 20241230191622.png]]

>Многозначные атрибуты представляются путем создания новой слабой сущности и по-
строения связи вида ”один ко многим”.

К особому типу слабых сущностей относятся [[Базы данных. Определения#Идентификационно-зависимая сущность|идентификационно-зависимые сущности]].
