---
aliases: []
created: 2025-04-01
modified: 2025-07-13
tags: [сети]
---
# "джентельменский" набор

![[Pasted image 20250320071342.png]]

привилегированный режим

```cisco
line console 0
logging synchronous
```

# Базовые настройки

![[Pasted image 20250327160153.png]]

---

# Конспект команд для работы с оборудованием Cisco  

## **Базовые настройки маршрутизатора**  

### Настройка имени устройства:  

```markdown
Router(config)# hostname R1  
```  

```  

### Установка секретного пароля (шифруется):  
```  

R1(config)# enable secret class  

```  

### Настройка пароля для консоли:  
```  

R1(config)# line console 0  
R1(config-line)# password disco  
R1(config-line)# login # Активация проверки пароля  
R1(config-line)# exit  

```  

### Настройка пароля для удаленного доступа (VTY):  
```  

R1(config)# line vty 0 4  
R1(config-line)# password disco  
R1(config-line)# login # Активация проверки пароля  
R1(config-line)# exit  

```  

### Шифрование паролей:  
```  

R1(config)# service password-encryption  

```  

---

## **Настройка интерфейсов**  

### Настройка IP-адреса на интерфейсе:  
```  

R1(config)# interface GigabitEthernet0/0/0  
R1(config-if)# ip address 192.168.10.1 255.255.255.0  
R1(config-if)# description Link to LAN 1  
R1(config-if)# no shutdown  
R1(config-if)# exit  

```  

### Настройка IPv6-адреса:  
```  

R1(config-if)# ipv6 address 2001:db8:acad:1::1/64  

```  

### Создание loopback-интерфейса:  
```  

R1(config)# interface loopback 0  
R1(config-if)# ip address 10.0.0.1 255.255.255.0  

```  

---

## **Статическая маршрутизация**  

### Добавление статического маршрута:  
```  

R1(config)# ip route 10.1.1.0 255.255.255.0 209.165.200.226  

```  
- `10.1.1.0` — сеть назначения.  
- `209.165.200.226` — адрес следующего маршрутизатора.  

### Маршрут по умолчанию:  
```  

R1(config)# ip route 0.0.0.0 0.0.0.0 209.165.200.226  

```  

### Плавающий статический маршрут (резервный):  
```  

R1(config)# ip route 0.0.0.0 0.0.0.0 10.10.10.10 5  

```  
- `5` — административная дистанция (AD).  

---

## **Проверка и диагностика**  

### Состояние интерфейсов:  
```  

R1# show ip interface brief  
R1# show ipv6 interface brief  

```  

### Таблица маршрутизации:  
```  

R1# show ip route  
R1# show ipv6 route  

```  

### Конфигурация интерфейса:  
```  

R1# show running-config interface GigabitEthernet0/0/0  

```  

---

## **Фильтрация вывода**  

### Вывод с фильтрацией по ключевым словам:  
```  

R1# show running-config | section line vty # Только раздел VTY  
R1# show ip interface brief | include up # Только активные интерфейсы  
R1# show ip route | begin Gateway # Вывод с начала раздела Gateway  
R1# show ip interface brief | exclude unassigned # Исключить интерфейсы без адреса  

```  

---

## **Дополнительные команды**  

### Административные дистанции (AD):  
- **Connected**: `0`  
- **Static**: `1`  
- **OSPF**: `110`  
- **RIP**: `120`  

### Активация/деактивация интерфейса:  
```  

R1(config-if)# no shutdown # Включить интерфейс  
R1(config-if)# shutdown # Выключить интерфейс  

```  

---

**Примечания**:  
- Для сохранения конфигурации:  
  ```  

  R1# copy running-config startup-config  

  ```  
- Команды `BXO#` заменены на `login` для корректной работы аутентификации.  
```
