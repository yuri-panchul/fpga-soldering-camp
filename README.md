# Пайка, ПЛИС и Линукс

Исходники, презентации, задания и примеры для летнего лагеря по пайке, микросхемам ПЛИС и синтезу цифровых схем из кода на верилоге под Линуксом.

![Красная плата c Altera MAX II (epm240_red)](https://gitflic.ru/project/yuri-panchul/fpga-soldering-camp/blob/raw?file=boards%2Fepm240_red%2Fdoc%2Fepm240_red_board_picture.png&commit=e4e6f41e9bb713ff89ff6bec267b79d8e1d7d4c3)

Image is taken from [http://iemontiel.blogspot.com/2015/07/mi-aventura-para-elaborar-un-componente.html](http://iemontiel.blogspot.com/2015/07/mi-aventura-para-elaborar-un-componente.html).

Картинка из [http://iemontiel.blogspot.com/2015/07/mi-aventura-para-elaborar-un-componente.html](http://iemontiel.blogspot.com/2015/07/mi-aventura-para-elaborar-un-componente.html).

## Ссылки на предыдущие работы, литературу и документацию:

* Ранняя заметка о красной плате c Altera MAX II (epm240_red): [Mi aventura para elaborar un componente nuevo para Fritzing (el CPLD EPM240 de Altera)](http://iemontiel.blogspot.com/2015/07/mi-aventura-para-elaborar-un-componente.html)
* Ранний тьюториал по красной плате: [Verilog 5Hz clock with blinking LED](https://radzaeem.gitbooks.io/altera-max-ii-cpld-tutorial/content/led-blink.html)
* Использование UFM-памяти (User Flash Memory): [Проекты Altera Quartus II для плат Марсоход, Марсоход2 и Марсоход3](https://marsohod.org/projects/6-ourblog/projects/42-pi-gadget)
* Микроконтроллер AVR внутри epm240: [Упрощенное ядро микропроцессора AVR для платы Марсоход](https://marsohod.org/9-sources/65-reducedavr)
* Заметка про микросхемы малой степени интеграции на макетной плате и их эквиваленты на языке описания аппаратуры Verilog: [Уход инженера-электронщика из Apple вызвал волнение среди биржевых спекулянтов. Как стать таким как он?](https://habr.com/ru/post/446798/)
* Заметка о решении одной и той же задачи тремя методами: с помощью микросхем малой степени интеграции, на ПЛИС/FPGA и на фиксированных микросхемах ASIC: [Можно ли тренировать чиподелов на 3 нанометра упражнениями с 130 нм? А упражнениями с 20000 нм?](https://habr.com/ru/post/678736/)

## Какие примеры хорошо было бы сделать

* Чтение UFM-памяти
* Очень урезанный вариант процессорного ядра schoolRISCV (уменьшить количество и ширину регистров, грузить программу из UFM)

## Где купить платы, компоненты и оборудование

* Платы и переходники
  * Красная плата c Altera MAX II (epm240_red) с программатором USB Blaster:
[купить в США](https://aliexpress.us/item/3256804686236727.html)
и [в России](https://aliexpress.ru/item/1005004872551479.html)
  * Источник питания от USB для красной платы, нужно заказывать на 5 вольт (в магазине выбор из 5V, 9V и 12М):
[купить в США](https://aliexpress.us/item/1005004971876668.html)
и [в России](https://aliexpress.ru/item/1005004971876668.html)
  * Синяя плата c Altera MAX II (epm240_blue) с программатором USB Blaster:
[купить в США](https://aliexpress.us/item/3256804686276488.html)
и [в России](https://aliexpress.ru/item/1005004872591240.html)
  * Модуль с кнопками и светодиодами:
[купить в США](https://aliexpress.us/item/3256801386629020.html)
и [в России](https://aliexpress.ru/item/3256801386629020.html)
  * Переходники для плат - выбрать "гнездо-гнездо" 10 сантиметров:
[купить в США](https://aliexpress.us/item/3256804425682359.html)
и [в России](https://aliexpress.ru/item/1005004937144019.html)
* Оборудование для пайки
  * [Паяльная станция Hakko FX888D](https://www.amazon.com/Hakko-FX888D-23BY-Digital-Soldering-Station/dp/B00ANZRT4M)
  * [Очки с увеличительным стеклом для пайка](https://www.amazon.com/dp/B07ZCH3SL4)
  * [Припой 63/37 с пропорцией оптимальной для поддержаний стабильной температуры](https://www.amazon.com/dp/B075WBDYZZ)
  * [Лента для снятия припоя](https://www.amazon.com/dp/B094GZ6CPZ)
* Загружаемые SSD диски, чтобы не устанавливать программное обеспечение во время занятий
  * [SSD на 120GB, на котором можно устанавливать загружаемый Линукс с Intel FPGA Quartus Prime Lite, с настройками для семинаров](https://www.amazon.com/dp/B0B25CQKTB)
  * [Переходник SATA III / USB 3.0 для внешнего SSD](https://www.amazon.com/gp/product/B09G6PTCKW)
  * [Флашки которые можно использовать для формирования SSD с загружаемым Линуксом и Quartus (достаточно одной и на 16GB)](https://www.amazon.com/Lexar-JumpDrive-Flash-3-Pack-LJDV100032G-B3NNU/dp/B087BJS2MF)

## Основные программы

* Скачать среду разработки Intel® Quartus® Prime Lite Edition Design Software Version 22.1:
[для Linux](https://www.intel.com/content/www/us/en/software-kit/757261/intel-quartus-prime-lite-edition-design-software-version-22-1-for-linux.html)
и [для Windows](https://www.intel.com/content/www/us/en/software-kit/757262/intel-quartus-prime-lite-edition-design-software-version-22-1-for-windows.html)
* [Git для Windows](https://git-scm.com/download/win)

## Дополнительные программы

* Симулятор Icarus Verilog:
[исходники на GitHub](https://github.com/steveicarus/iverilog),
[скачать для Windows (версию 11.00)](https://bleyer.org/icarus/).
Для многих дистрибутов Линукса (Lubuntu, ALT Linux, Simply Linux)
Icarus Verilog можно установить
с помощью "sudo apt-get install iverilog" или "sudo yum install iverilog".
* Программа просмотра временных диаграмм для использования с Icarus Verilog:
[исходники на GitHub](https://github.com/gtkwave/gtkwave).
Для Windows GTKWave входит в дистрибутив Icarus Verilog.
Для многих дистрибутов Линукса (Lubuntu, ALT Linux, Simply Linux)
GTKWave можно установить
с помощью "sudo apt-get install gtkwave" или "sudo yum install gtkwave".
* Вебсайт и приложение для рисования временных диаграмм [WaveDrom](https://wavedrom.com)
* Вебсайты для рисования микроархитектурных диаграмм:
[Lucidspark](https://lucidspark.com) и [draw.io](https://draw.io)

## Другие образовательные проекты

* [Digital Design & Verification in Central Asia](https://github.com/ddvca)
* [YRV-Plus](https://github.com/yuri-panchul/yrv-plus)
