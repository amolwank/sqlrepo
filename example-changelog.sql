--liquibase formatted sql

--changeset your.name:1 labels:example-label context:example-context
--comment: example comment
CREATE TABLE person (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(50) NOT NULL,
    address1 VARCHAR(50),
    address2 VARCHAR(50),
    city VARCHAR(30)
);
--rollback DROP TABLE person;

--changeset your.name:2 labels:example-label context:example-context
--comment: example comment
CREATE TABLE company (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(50) NOT NULL,
    address1 VARCHAR(50),
    address2 VARCHAR(50),
    city VARCHAR(30)
);
--rollback DROP TABLE company;

--changeset other.dev:3 labels:example-label context:example-context
--comment: example comment
ALTER TABLE person
ADD COLUMN country VARCHAR(2);
--rollback ALTER TABLE person DROP COLUMN country;

