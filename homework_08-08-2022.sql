-- 1.Создать таблицу goods (товары) с полями:
	-- id (уникальное значение)
	-- title (cтрока максимум 30 символов)
	-- quantity (число больше 0)
	-- price (максимум 5-значное число)
	-- in_stock (символ (Y/N))

CREATE TABLE goods (
id 			NUMERIC(3) UNIQUE,
title		VARCHAR(30),
quantity 	NUMERIC(4) CHECK (quantity>0),
price		NUMERIC(5),
in_stock	VARCHAR(1) CHECK (in_stock IN ('Y','N'))
);

-- 2. Заполните созданную таблицу данными, минимум 10 строк.

INSERT INTO goods (
			id, 
            title, 
            quantity, 
            price, 
            in_stock) 
VALUES (
			1,
            "Хлеб",
            100,
            45,
            "Y"
		);
INSERT INTO goods (
			id, 
            title, 
            quantity, 
            price, 
            in_stock) 
VALUES (
			2,
            "Молоко",
            50,
            65,
            "Y"
		);
INSERT INTO goods (
			id, 
            title, 
            quantity, 
            price, 
            in_stock) 
VALUES (
			3,
            "Сметана",
            20,
            95,
            "N"
		);
INSERT INTO goods (
			id, 
            title, 
            quantity, 
            price, 
            in_stock) 
VALUES (
			4,
            "Сок",
            15,
            80,
            "Y"
		);
INSERT INTO goods (
			id, 
            title, 
            quantity, 
            price, 
            in_stock) 
VALUES (
			5,
            "Макароны",
            30,
            45,
            "Y"
		);
INSERT INTO goods (
			id, 
            title, 
            quantity, 
            price, 
            in_stock) 
VALUES (
			6,
            "Гречка",
            60,
            85,
            "N"
		);
INSERT INTO goods (
			id, 
            title, 
            quantity, 
            price, 
            in_stock) 
VALUES (
			7,
            "Мука",
            60,
            65.5,
            "Y"
		);
INSERT INTO goods (
			id, 
            title, 
            quantity, 
            price, 
            in_stock) 
VALUES (
			8,
            "Сахар",
            100,
            40,
            "Y"
		);
INSERT INTO goods (
			id, 
            title, 
            quantity, 
            price, 
            in_stock) 
VALUES (
			9,
            "Соль",
            150,
            20,
            "Y"
		);
INSERT INTO goods (
			id, 
            title, 
            quantity, 
            price, 
            in_stock) 
VALUES (
			10,
            "Рис",
            70,
            85,
            "Y"
		);
        
-- 3. Сформируйте выборку из 3-х самых дорогих товаров в таблице
        
SELECT * FROM goods  
ORDER BY price DESC
LIMIT 3;
