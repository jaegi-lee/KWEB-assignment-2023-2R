CREATE TABLE `users`(
    `id` INT NOT NULL AUTO_INCREMENT,
    `user_id` VARCHAR(25) NOT NULL,
    `password` VARCHAR(25) NOT NULL,
    `nickname` VARCHAR(25) NOT NULL,
    `profile_image_link` VARCHAR(100) NOT NULL,
    `profile_message` VARCHAR(100) NOT NULL,
    `is_unsubcribed` TINYINT(1) NOT NULL DEFAULT 0,
    `date_joined` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `channels`(
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `created_by` INT NOT NULL,
    `link` VARCHAR(100) NOT NULL,
    `maximum_occupancy` INT NOT NULL,
    `is_unsubcribed` TINYINT(1) NOT NULL DEFAULT 0,
    `date_created` DATETIME NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`created_by`) REFERENCES `users`(`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `chats`(
    `id` INT NOT NULL AUTO_INCREMENT,
    `context` TEXT NOT NULL,
    `created_by` INT NOT NULL,
    `channel` INT NOT NULL,
    `date_created` DATETIME NOT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY (`created_by`) REFERENCES `users`(`id`) ON DELETE CASCADE,
    FOREIGN KEY (`channel`) REFERENCES `channels`(`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `blocks`(
    `id` INT NOT NULL AUTO_INCREMENT,
    `blocking` INT NOT NULL,
    `blocked` INT NOT NULL,
    `date_block` DATETIME NOT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY (`blocking`) REFERENCES `users`(`id`) ON DELETE CASCADE,
    FOREIGN KEY (`blocked`) REFERENCES `users`(`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `follows`(
    `id` INT NOT NULL AUTO_INCREMENT,
    `follower` INT NOT NULL,
    `followee` INT NOT NULL,
    `date_follow` DATETIME NOT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY (`follower`) REFERENCES `users`(`id`) ON DELETE CASCADE,
    FOREIGN KEY (`followee`) REFERENCES `users`(`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;