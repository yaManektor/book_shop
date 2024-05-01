-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Трв 01 2024 р., 10:26
-- Версія сервера: 8.0.30
-- Версія PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `book_shop`
--

-- --------------------------------------------------------

--
-- Структура таблиці `authors`
--

CREATE TABLE `authors` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(1, 'Артур Конан-Дойл'),
(2, 'Тарас Шевченко'),
(3, 'Леся Українка'),
(4, 'Максим Дупешко'),
(5, 'Марк Геддон'),
(6, 'Ліан Турюн'),
(7, 'Анджела Нанетті'),
(8, 'Ростислав Попський'),
(9, 'Річард Фленеган'),
(10, 'Джон Грін');

-- --------------------------------------------------------

--
-- Структура таблиці `books`
--

CREATE TABLE `books` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `descript` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `author_id` int UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `books`
--

INSERT INTO `books` (`id`, `title`, `descript`, `author_id`, `category_id`, `img`, `price`) VALUES
(1, 'Кобзар', 'Тарас Шевченко, вічний Кобзар, що торкається струн душі кожного українця. Його вірші знайомі нам із дитинства, його творчість досі викликає багато дискусій, щирі захоплення і знаходить безліч шанувальників поза межами нашої країни. Свої переживання митець умів переносити на полотно, але саме малювання словом возвеличило його як генія українського народу.<br><br>\n\nЦя книжка — збірка вічних перлин української поезії зі спадщини Тараса Шевченка. У цих віршах — усе, що хотів сказати світові Кобзар, усе, чим він жив, що любив і до чого прагнув. Простота і мудрість, душевна щирість і глибокий зміст у словах Шевченка не загубилися у плинності часу і зараз поезією промовляють до нас.', 2, 1, 'noimage.png', 600),
(2, 'Лісова пісня', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A adipisci aperiam commodi cumque delectus distinctio dolore error est facere fugiat in iste magnam maiores modi neque nihil, optio quas quibusdam similique sit temporibus ut, veniam, voluptatem. Aut eos eum magni nemo reprehenderit. Architecto at ex inventore quisquam tenetur. Accusantium corporis dolore eaque facilis fugit sed soluta tenetur veritatis! Dolorem dolores fuga itaque optio perferendis quas reiciendis rerum velit? Consequuntur corporis cupiditate enim et minima nobis? A adipisci assumenda cumque dicta dolorem eos facere hic illum maiores nisi, nulla officia quae qui quo quod ratione sed, sit soluta velit, voluptas voluptate?', 3, 3, 'noimage.png', 200),
(3, 'Пригоди Шерлока Холмса', '«Пригоди Шерлока Холмса» — збірка оповідань шотландського письменника Артура Конана Дойла, містить 12 детективних історій, головними героями яких є Шерлок Холмс та його друг і колега Джон Ватсон. Вийшла у 1892 році і є першою збіркою оповідань про Холмса.', 1, 2, 'noimage.png', 1500),
(4, 'На крилах пісень', '«На крилах пісень» — перша збірка поетичних творів Лесі Українки, що вийшла друком у Львові 1892 року\r\n\r\nУ виданні збірки брав безпосередню участь Іван Франко. Леся Українка надсилала йому частинами рукопис збірки, він наглядав за складанням книжки у друкарні Наукового товариства ім. Шевченка. У бібліотеці НТШ збереглася частина набірного примірника рукопису збірки[1].\r\n\r\nНа обкладиниці зазначено 1893 рік. Проте, на титулі сторінки вказано 1892 рік.', 3, 1, 'noimage.png', 140),
(6, 'Гаррі Поттер', 'Пригоди Гаррі Поттера!', 3, 1, 'noimage.png', 266),
(8, 'Лише хмари танцюють з зірками', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid excepturi inventore repudiandae vero. Deserunt et harum inventore iste libero quasi, quos tenetur totam. Adipisci aliquid blanditiis consequatur cupiditate debitis distinctio fuga fugit id illum itaque libero, natus neque pariatur possimus quibusdam quis reprehenderit sequi suscipit tempore voluptatum. Dicta dolor dolorem dolorum earum eum fuga incidunt ipsum iusto, labore magnam non officiis qui quibusdam sed sequi sint sunt totam voluptatum! Accusantium debitis dignissimos exercitationem nihil quos. Alias aut, distinctio doloribus eaque eius eligendi et explicabo impedit in maiores, nostrum repellendus voluptas.', 6, 3, 'noimage.png', 643),
(9, 'Загадковий нічний інцидент із собакою', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur consectetur cupiditate dolore dolorum eaque eos esse facilis illo impedit in iste iusto magni maxime minus quasi quia quibusdam, repellendus similique, suscipit, tempora temporibus ullam unde velit vitae voluptates! Corporis deleniti fugit impedit in maiores nisi quae sed tempora vitae. Aliquam amet earum ratione. Asperiores deleniti dicta dolore esse excepturi ipsum minus nulla obcaecati odit pariatur quis quos ratione repellendus temporibus ullam, vel voluptatum? A at beatae debitis dicta distinctio dolor eaque, error et excepturi expedita facere impedit laudantium minus non numquam odio pariatur, qui quis recusandae, similique soluta velit voluptates!', 9, 2, 'noimage.png', 632),
(10, 'Мене забули на місяці', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur consectetur cupiditate dolore dolorum eaque eos esse facilis illo impedit in iste iusto magni maxime minus quasi quia quibusdam, repellendus similique, suscipit, tempora temporibus ullam unde velit vitae voluptates! Corporis deleniti fugit impedit in maiores nisi quae sed tempora vitae. Aliquam amet earum ratione. Asperiores deleniti dicta dolore esse excepturi ipsum minus nulla obcaecati odit pariatur quis quos ratione repellendus temporibus ullam, vel voluptatum? A at beatae debitis dicta distinctio dolor eaque, error et excepturi expedita facere impedit laudantium minus non numquam odio pariatur, qui quis recusandae, similique soluta velit voluptates!', 1, 4, 'noimage.png', 624),
(11, 'Загадковий нічний інцидент із собакою', 'Назва цієї книжки є алюзією Желязни до одного із творів Едгара Аллана По. І якби на обкладинці не красувався силует чотирилапого, то сама тільки назва книжки ні за що не видала б вам, що оповідачем історії є… пес! Динамічна розповідь, насичена діалогами і відомими літературними персонажами, плюс інтрига «до останнього» – ось рецепт захопливої містичної книги від одного з кращих американських фантастів.', 6, 2, 'noimage.png', 328),
(12, 'Вузька стежка на далеку північ', 'Від самої лише назви цього фантастичного роману так і віє кіберпанком. Книга, за мотивами якої знятий культовий фільм Рідлі Скотта «Той, що біжить по лезу», відкриває авторське бачення на проблему штучного інтелекту в майбутньому. Будьте готовими до того, що Філіп Дік перенесе вас до похмурого постапокаліптичного світу, де цілком розмиє межі між людським та машинним. Про яких овець мріють насправді андроїди – електричних чи все ж живих? Відповідь не така вже й очевидна.', 4, 2, 'noimage.png', 353),
(13, 'Лише хмари танцюють з зірками', 'Чудернацька назва і не менш чудернацькі розповіді. Автор книжки був практикуючим лікарем у галузі неврології і поділився реальними випадками з історій своїх пацієнтів. Найбільш незвичайні з них, на думку Сакса, важливо не тільки досліджувати, а й ретельно описувати й переповідати. Меседж автора дуже сильний: пацієнтів – героїв цієї книжки – ми маємо сприймати не лише як хворих. Спробуймо поглянути на них як на своєрідних мандрівників, що заблукали у власних дивних світах.', 9, 5, 'noimage.png', 220),
(14, 'Мій дідусь був черешнею', 'Від самої лише назви цього фантастичного роману так і віє кіберпанком. Книга, за мотивами якої знятий культовий фільм Рідлі Скотта «Той, що біжить по лезу», відкриває авторське бачення на проблему штучного інтелекту в майбутньому. Будьте готовими до того, що Філіп Дік перенесе вас до похмурого постапокаліптичного світу, де цілком розмиє межі між людським та машинним. Про яких овець мріють насправді андроїди – електричних чи все ж живих? Відповідь не така вже й очевидна.', 3, 3, 'noimage.png', 549),
(15, 'Загадковий нічний інцидент із собакою', 'Історія з надзвичайно поетичною назвою від сучасної норвезької авторки. Втім, за милозвучною метафорою про небесні світила ховається дуже непроста книга. Тема смерті – це майже завжди складно, тим більше – якщо йдеться про дитячу чи підліткову книжку. Однак Ліан Турюн проявила себе не лише як майстриня слова. Вона – ще й тонка психологиня, що вміло переконує: життя мусить тривати навіть після трагедій. Важливо тільки не зламатися і дозволити новим надіям увійти до вашого серця.', 8, 3, 'noimage.png', 264),
(16, 'Лише хмари танцюють з зірками', 'Від самої лише назви цього фантастичного роману так і віє кіберпанком. Книга, за мотивами якої знятий культовий фільм Рідлі Скотта «Той, що біжить по лезу», відкриває авторське бачення на проблему штучного інтелекту в майбутньому. Будьте готовими до того, що Філіп Дік перенесе вас до похмурого постапокаліптичного світу, де цілком розмиє межі між людським та машинним. Про яких овець мріють насправді андроїди – електричних чи все ж живих? Відповідь не така вже й очевидна.', 1, 4, 'noimage.png', 666),
(17, 'Вузька стежка на далеку північ', '…а може, навіть і кількох садів! Адже мова йде про одне з найкрасивіших міст України – серце Буковини – Чернівці. Саме вони стають історичним тлом для історії кохання пари молодих людей, розлучених війною. Однак книга – не лише про любов та війну. Суміш місцевого колориту, ностальгії, особистих драм і помилок автор заколотив, щоб переосмислити вплив історичної пам’яті на сьогоднішнє українське суспільство.', 2, 5, 'noimage.png', 584),
(18, 'Загадковий нічний інцидент із собакою', 'Назва цієї книжки є алюзією Желязни до одного із творів Едгара Аллана По. І якби на обкладинці не красувався силует чотирилапого, то сама тільки назва книжки ні за що не видала б вам, що оповідачем історії є… пес! Динамічна розповідь, насичена діалогами і відомими літературними персонажами, плюс інтрига «до останнього» – ось рецепт захопливої містичної книги від одного з кращих американських фантастів.', 8, 2, 'noimage.png', 254),
(19, 'Загадковий нічний інцидент із собакою', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur consectetur cupiditate dolore dolorum eaque eos esse facilis illo impedit in iste iusto magni maxime minus quasi quia quibusdam, repellendus similique, suscipit, tempora temporibus ullam unde velit vitae voluptates! Corporis deleniti fugit impedit in maiores nisi quae sed tempora vitae. Aliquam amet earum ratione. Asperiores deleniti dicta dolore esse excepturi ipsum minus nulla obcaecati odit pariatur quis quos ratione repellendus temporibus ullam, vel voluptatum? A at beatae debitis dicta distinctio dolor eaque, error et excepturi expedita facere impedit laudantium minus non numquam odio pariatur, qui quis recusandae, similique soluta velit voluptates!', 3, 1, 'noimage.png', 231),
(20, 'Ніч у самотньому жовтні', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam asperiores assumenda atque cumque delectus dolorum ducimus enim esse, est eum ex exercitationem explicabo facere fuga laudantium molestias mollitia neque nihil nostrum obcaecati odit officiis possimus praesentium provident quaerat quam quas quidem repellendus sapiente tempora ullam unde vitae voluptatibus! Aperiam asperiores cum cumque ducimus est eum eveniet exercitationem facilis itaque iure laboriosam nam nihil nisi nostrum omnis pariatur perferendis provident qui quia quis quos, ratione repellendus sit vel vero vitae voluptatem.', 8, 5, 'noimage.png', 250),
(21, 'Ніч у самотньому жовтні', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid excepturi inventore repudiandae vero. Deserunt et harum inventore iste libero quasi, quos tenetur totam. Adipisci aliquid blanditiis consequatur cupiditate debitis distinctio fuga fugit id illum itaque libero, natus neque pariatur possimus quibusdam quis reprehenderit sequi suscipit tempore voluptatum. Dicta dolor dolorem dolorum earum eum fuga incidunt ipsum iusto, labore magnam non officiis qui quibusdam sed sequi sint sunt totam voluptatum! Accusantium debitis dignissimos exercitationem nihil quos. Alias aut, distinctio doloribus eaque eius eligendi et explicabo impedit in maiores, nostrum repellendus voluptas.', 1, 5, 'noimage.png', 509),
(22, 'Мій дідусь був черешнею', 'Від самої лише назви цього фантастичного роману так і віє кіберпанком. Книга, за мотивами якої знятий культовий фільм Рідлі Скотта «Той, що біжить по лезу», відкриває авторське бачення на проблему штучного інтелекту в майбутньому. Будьте готовими до того, що Філіп Дік перенесе вас до похмурого постапокаліптичного світу, де цілком розмиє межі між людським та машинним. Про яких овець мріють насправді андроїди – електричних чи все ж живих? Відповідь не така вже й очевидна.', 5, 1, 'noimage.png', 652),
(23, 'Мене забули на місяці', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid excepturi inventore repudiandae vero. Deserunt et harum inventore iste libero quasi, quos tenetur totam. Adipisci aliquid blanditiis consequatur cupiditate debitis distinctio fuga fugit id illum itaque libero, natus neque pariatur possimus quibusdam quis reprehenderit sequi suscipit tempore voluptatum. Dicta dolor dolorem dolorum earum eum fuga incidunt ipsum iusto, labore magnam non officiis qui quibusdam sed sequi sint sunt totam voluptatum! Accusantium debitis dignissimos exercitationem nihil quos. Alias aut, distinctio doloribus eaque eius eligendi et explicabo impedit in maiores, nostrum repellendus voluptas.', 4, 5, 'noimage.png', 324),
(24, 'Чоловік, який сплутав дружину з капелюхом', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur consectetur cupiditate dolore dolorum eaque eos esse facilis illo impedit in iste iusto magni maxime minus quasi quia quibusdam, repellendus similique, suscipit, tempora temporibus ullam unde velit vitae voluptates! Corporis deleniti fugit impedit in maiores nisi quae sed tempora vitae. Aliquam amet earum ratione. Asperiores deleniti dicta dolore esse excepturi ipsum minus nulla obcaecati odit pariatur quis quos ratione repellendus temporibus ullam, vel voluptatum? A at beatae debitis dicta distinctio dolor eaque, error et excepturi expedita facere impedit laudantium minus non numquam odio pariatur, qui quis recusandae, similique soluta velit voluptates!', 2, 4, 'noimage.png', 626),
(25, 'Ніч у самотньому жовтні', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam asperiores assumenda atque cumque delectus dolorum ducimus enim esse, est eum ex exercitationem explicabo facere fuga laudantium molestias mollitia neque nihil nostrum obcaecati odit officiis possimus praesentium provident quaerat quam quas quidem repellendus sapiente tempora ullam unde vitae voluptatibus! Aperiam asperiores cum cumque ducimus est eum eveniet exercitationem facilis itaque iure laboriosam nam nihil nisi nostrum omnis pariatur perferendis provident qui quia quis quos, ratione repellendus sit vel vero vitae voluptatem.', 1, 4, 'noimage.png', 412),
(26, 'Смажені зелені помідори в кафе “Зупинка”', 'Історія з надзвичайно поетичною назвою від сучасної норвезької авторки. Втім, за милозвучною метафорою про небесні світила ховається дуже непроста книга. Тема смерті – це майже завжди складно, тим більше – якщо йдеться про дитячу чи підліткову книжку. Однак Ліан Турюн проявила себе не лише як майстриня слова. Вона – ще й тонка психологиня, що вміло переконує: життя мусить тривати навіть після трагедій. Важливо тільки не зламатися і дозволити новим надіям увійти до вашого серця.', 1, 1, 'noimage.png', 529),
(27, 'Лише хмари танцюють з зірками', 'Чудернацька назва і не менш чудернацькі розповіді. Автор книжки був практикуючим лікарем у галузі неврології і поділився реальними випадками з історій своїх пацієнтів. Найбільш незвичайні з них, на думку Сакса, важливо не тільки досліджувати, а й ретельно описувати й переповідати. Меседж автора дуже сильний: пацієнтів – героїв цієї книжки – ми маємо сприймати не лише як хворих. Спробуймо поглянути на них як на своєрідних мандрівників, що заблукали у власних дивних світах.', 1, 1, 'noimage.png', 474),
(28, 'Чоловік, який сплутав дружину з капелюхом', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam asperiores assumenda atque cumque delectus dolorum ducimus enim esse, est eum ex exercitationem explicabo facere fuga laudantium molestias mollitia neque nihil nostrum obcaecati odit officiis possimus praesentium provident quaerat quam quas quidem repellendus sapiente tempora ullam unde vitae voluptatibus! Aperiam asperiores cum cumque ducimus est eum eveniet exercitationem facilis itaque iure laboriosam nam nihil nisi nostrum omnis pariatur perferendis provident qui quia quis quos, ratione repellendus sit vel vero vitae voluptatem.', 10, 1, 'noimage.png', 496),
(29, 'Мене забули на місяці', 'Від самої лише назви цього фантастичного роману так і віє кіберпанком. Книга, за мотивами якої знятий культовий фільм Рідлі Скотта «Той, що біжить по лезу», відкриває авторське бачення на проблему штучного інтелекту в майбутньому. Будьте готовими до того, що Філіп Дік перенесе вас до похмурого постапокаліптичного світу, де цілком розмиє межі між людським та машинним. Про яких овець мріють насправді андроїди – електричних чи все ж живих? Відповідь не така вже й очевидна.', 8, 3, 'noimage.png', 645),
(30, 'Лише хмари танцюють з зірками', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur consectetur cupiditate dolore dolorum eaque eos esse facilis illo impedit in iste iusto magni maxime minus quasi quia quibusdam, repellendus similique, suscipit, tempora temporibus ullam unde velit vitae voluptates! Corporis deleniti fugit impedit in maiores nisi quae sed tempora vitae. Aliquam amet earum ratione. Asperiores deleniti dicta dolore esse excepturi ipsum minus nulla obcaecati odit pariatur quis quos ratione repellendus temporibus ullam, vel voluptatum? A at beatae debitis dicta distinctio dolor eaque, error et excepturi expedita facere impedit laudantium minus non numquam odio pariatur, qui quis recusandae, similique soluta velit voluptates!', 9, 5, 'noimage.png', 350),
(31, 'Мене забули на місяці', 'Назва цієї книжки є алюзією Желязни до одного із творів Едгара Аллана По. І якби на обкладинці не красувався силует чотирилапого, то сама тільки назва книжки ні за що не видала б вам, що оповідачем історії є… пес! Динамічна розповідь, насичена діалогами і відомими літературними персонажами, плюс інтрига «до останнього» – ось рецепт захопливої містичної книги від одного з кращих американських фантастів.', 6, 5, 'noimage.png', 598),
(32, 'Загадковий нічний інцидент із собакою', 'Історія з надзвичайно поетичною назвою від сучасної норвезької авторки. Втім, за милозвучною метафорою про небесні світила ховається дуже непроста книга. Тема смерті – це майже завжди складно, тим більше – якщо йдеться про дитячу чи підліткову книжку. Однак Ліан Турюн проявила себе не лише як майстриня слова. Вона – ще й тонка психологиня, що вміло переконує: життя мусить тривати навіть після трагедій. Важливо тільки не зламатися і дозволити новим надіям увійти до вашого серця.', 1, 4, 'noimage.png', 355),
(33, 'Моя нова книжка', 'Це моя нова книжка, пробую її додати в БД.', 7, 4, 'noimage.png', 192);

-- --------------------------------------------------------

--
-- Структура таблиці `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Художня література'),
(2, 'Детективи'),
(3, 'Дитяча література'),
(4, 'Психологія'),
(5, 'Історія');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Індекси таблиці `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблиці `books`
--
ALTER TABLE `books`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблиці `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
