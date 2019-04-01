CREATE TABLE piggy_bank
(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    coin CHAR(1) CHECK (coint IN ('P', 'N', 'D', 'Q'))
);
