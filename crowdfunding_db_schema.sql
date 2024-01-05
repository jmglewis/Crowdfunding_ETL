-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/XlGPgZ
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE `campaign` (
    `cf_id` int  NOT NULL ,
    `contact_id` int  NOT NULL ,
    `company_name` varchar  NOT NULL ,
    `description` varchar  NOT NULL ,
    `goal` float  NOT NULL ,
    `pledged` float  NOT NULL ,
    `outcome` varchar  NOT NULL ,
    `backers_cont` int  NOT NULL ,
    `country` varchar  NOT NULL ,
    `currency` varchar  NOT NULL ,
    `launched_date` date  NOT NULL ,
    `end_date` date  NOT NULL ,
    `category_id` varchar  NOT NULL ,
    `subcategory_id` varchar  NOT NULL ,
    PRIMARY KEY (
        `cf_id`
    )
);

CREATE TABLE `category` (
    `category_id` varchar  NOT NULL ,
    `category` varchar  NOT NULL ,
    PRIMARY KEY (
        `category_id`
    )
);

CREATE TABLE `subcategory` (
    `subcategory_id` varchar  NOT NULL ,
    `subcategory` varchar  NOT NULL ,
    PRIMARY KEY (
        `subcategory_id`
    )
);

CREATE TABLE `contacts` (
    `contact_id` int  NOT NULL ,
    `first_name` varchar  NOT NULL ,
    `last_name` varchar  NOT NULL ,
    `email` varchar  NOT NULL ,
    PRIMARY KEY (
        `contact_id`
    )
);

ALTER TABLE `category` ADD CONSTRAINT `fk_category_category_id` FOREIGN KEY(`category_id`)
REFERENCES `campaign` (`category_id`);

ALTER TABLE `subcategory` ADD CONSTRAINT `fk_subcategory_subcategory_id` FOREIGN KEY(`subcategory_id`)
REFERENCES `campaign` (`subcategory_id`);

ALTER TABLE `contacts` ADD CONSTRAINT `fk_contacts_contact_id` FOREIGN KEY(`contact_id`)
REFERENCES `campaign` (`contact_id`);

