CREATE TABLE `comment`(
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `studentid` BIGINT NULL DEFAULT 'DEFAULT NULL',
    `comment` VARCHAR(256) NULL DEFAULT 'DEFAULT NULL'
);
ALTER TABLE
    `comment` ADD INDEX `comment_studentid_index`(`studentid`);
CREATE TABLE `student`(
    `id` BIGINT NOT NULL,
    `firstname` VARCHAR(256) NULL DEFAULT 'DEFAULT NULL',
    `lastname` VARCHAR(256) NULL DEFAULT 'DEFAULT NULL',
    `birthdate` DATE NULL DEFAULT 'DEFAULT NULL',
    `groupcode` VARCHAR(8) NULL DEFAULT 'DEFAULT NULL',
    PRIMARY KEY(`id`)
);
ALTER TABLE
    `student` ADD INDEX `student_groupcode_index`(`groupcode`);
CREATE TABLE `course`(
    `code` VARCHAR(8) NOT NULL,
    `description` VARCHAR(256) NULL DEFAULT 'DEFAULT NULL',
    PRIMARY KEY(`code`)
);
CREATE TABLE `stgroup`(
    `code` VARCHAR(8) NOT NULL,
    `description` VARCHAR(256) NULL DEFAULT 'DEFAULT NULL',
    PRIMARY KEY(`code`)
);
ALTER TABLE
    `comment` ADD CONSTRAINT `comment_studentid_foreign` FOREIGN KEY(`studentid`) REFERENCES `student`(`id`);
ALTER TABLE
    `student` ADD CONSTRAINT `student_groupcode_foreign` FOREIGN KEY(`groupcode`) REFERENCES `stgroup`(`code`);