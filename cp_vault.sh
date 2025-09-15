#!/bin/bash

echo 'копирование хранилища'
rm -rf ./content/*
cp -r /home/fenya/obsidian/obsidian/{files,БД,Комбинаторные-алгоритмы,ЛОИ,"Прикладная статистика",Сети,Тервер,Функан,Чисмет,index.md,quartz.md} ./content/
echo 'копирование завершено'