# Final work 
## Информация о проекте
Необходимо организовать систему учета для питомника в котором живут
домашние и вьючные животные.
### 1 part: 
1. Создать
два файла Домашние животные и Вьючные животные:
```
cat DomesticAnimals
dogs
cats
hamsters 
```
(ctrl+d)
```
cat >PackAnimals
horses
camels
donkies 
```
(ctrl+d)

Объединить их, посмотреть:
```cat DomesticAnimals PackAnimals > HumanFriends
cat HumanFriends
```
Поменять имя можно командой mv file1 file2 

2. Создать директорию, переместить файл туда
```
mkdir Final
mv HumanFriends Final/
```
3. Подключить дополнительный репозиторий MySQL. Установить любой пакет
из этого репозитория.

Добавляем репозиторий MySQL в список источников пакетов системы:
```
wget -c https://dev.mysql.com/get/mysql-apt-config_0.8.16-1_all.deb
```
Установливаем пакет репозитория MySQL, используя команду dpkg:
```
sudo dpkg -i mysql-apt-config_0.8.16-1_all.deb
```
```
sudo apt update
```
Установка пакетов для сервера сообщества, клиента и общих файлов базы данных:
```
sudo apt-get install mysql-server
```

4. Установить и удалить deb-пакет с помощью dpkg.
```
wget https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-j_8.0.32-1ubuntu22.04_all.deb

sudo dpkg - i mysql-connector-j_8.0.32-1ubuntu22.04_all.deb

sudo dpkg -r mysql-connector-j

sudo apt-get autoremove
```

5. Выложить историю команд в терминале ubuntu

```
history
```
![Команда 'history' дает возможность посмотреть использованные команды в течение работы](images/history.jpg)

6. Нарисовать диаграмму, в которой есть класс родительский класс, домашние
животные и вьючные животные, в составы которых в случае домашних
животных войдут классы: собаки, кошки, хомяки, а в класс вьючные животные
войдут: Лошади, верблюды и ослы).

![Диаграмма показывает наглядно extends и implements](images/diagram.jpg)