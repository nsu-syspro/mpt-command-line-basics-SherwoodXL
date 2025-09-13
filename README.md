[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/Ek0efOl_)
# Знакомство с командной строкой

<img alt="points bar" align="right" height="36" src="../../blob/badges/.github/badges/points-bar.svg" />

[![Напутственная картинка](https://imgs.xkcd.com/comics/tar_2x.png)](https://xkcd.com/1168)

Для решения каждого из заданий необходимо выписать последовательность команд,
выполняющих то, что требуется в условии, в файл `solution/taskX.sh`,
где `X` - номер соответствующего задания.

<details>
  <summary>Отладка</summary>

Для локальной отладки можно запустить ваше решение с помощью следующей команды:
```console
$ bash -xe solution/taskX.sh
```
Параметры `-xe` (`-x` и `-e`) включают логирование выполненных команд и
завершение исполнения при первой ошибке, что бывает очень полезно при отладке скриптов.
Более подробное описание этих и других опций утилиты `bash` можно получить с помощью
```console
$ bash -c "help set"
```
</details>

## Задание №1 (3 балла)

В директории [data](/data) находятся два архива:

1. `data/archive-part1.tar`
1. `data/archive-part2.zip`

Требуется создать третий архив `data/archive-combined.tar.gz`, в котором будет содержимое
обоих архивов, причем в сжатом виде (размер полученного архива должен быть значительно меньше оригинальных).

> Вам понадобится [tar](https://linux.die.net/man/1/tar) и [unzip](https://linux.die.net/man/1/unzip).

<details>
  <summary>Подсказка</summary>

  Можно разархивировать оба архива во временную директорию
  (полученную, например, с помощью [`mktemp -d`](https://www.mktemp.org/docs/mktemp.man/#EXAMPLES)),
  а затем заархивировать содержимое этой директории в итоговый архив.
</details>

## Задание №2 (3 балла)

Требуется найти в текущей директории (включая поддиректории) текстовые файлы `foo.txt`, `bar.txt`, `baz.txt`
и вывести их содержимое (сначала содержимое `foo.txt`, затем `bar.txt` и `baz.txt`).

> Для локального тестирования, можно использовать содержимое архивов из предыдущего задания,
> либо сгенерировать структуру файлов и директорий самостоятельно.

> Вам понадобится [find](https://linux.die.net/man/1/find) и [cat](https://linux.die.net/man/1/cat).

## Задание №3 (4 балла)

Требуется найти в текущей директории (включая поддиректории) все текстовые файлы (имеющие расширение `.txt`),
и вывести их имена *без директории*, отсортированные в алфавитном порядке.

Например, для файлов `abc/b.txt`, `test/a.txt`, `ab.txt` ожидается следующий вывод:
```
a.txt
ab.txt
b.txt
```

> Вам понадобится [find](https://linux.die.net/man/1/find), [basename](https://linux.die.net/man/1/basename)
> и [sort](https://linux.die.net/man/1/sort).
