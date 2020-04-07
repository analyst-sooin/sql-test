create database ecommerce;
USE ecommerce;
show databases;
create table product(
	PRODUCT_CODE VARCHAR(20) NOT NULL,
    TITLE VARCHAR(200) NOT NULL,
    ORI_PRICE INT,
    DISCOUNT_PRICE INT,
    DISCOUNT_PERCENT INT,
    DELIVERY VARCHAR(2),
    PRIMARY KEY(PRODUCT_CODE)
);
DESC PRODUCT;

CREATE TABLE ranking(
	ID INT UNSIGNED NOT NULL AUTO_INCREMENT,
    CATEGORY VARCHAR(50),
    SUBCATEGORY VARCHAR(50),
    RANKING INT NOT NULL,
    PRODUCT_CODE VARCHAR(20) NOT NULL,
    PRIMARY KEY(ID)
);
DESC ranking;

insert into product values(637217746543376096,'[지오다노] 지오다노 빅세일 티셔츠/맨투맨/셔츠/팬츠 최대할인전',
50000,15000,70,'F');
select * from product;