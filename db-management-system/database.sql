CREATE TABLE `company` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `shop_id` foreign,
  `mobile_id` foreign,
  `factor_id` foreign
);

CREATE TABLE `shops` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `registered_date` datetime,
  `membership_type` boolean,
  `address` text,
  `phone_number` int(11)
);

CREATE TABLE `mobiles` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `register_id` foreign,
  `mobile_name` varchar(255),
  `product_information_id` foreign,
  `price` int,
  `color` varchar(255),
  `status` ENUM ('out_of_stock', 'in_stock', 'running_low')
);

CREATE TABLE `register` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `mobile_id` foreign,
  `buyer_informations_id` foreign,
  `shop_id` foreign
);

CREATE TABLE `factor_details` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `final_factors_id` foreign,
  `price` int,
  `discount` int,
  `mobile_id` foreign,
  `count` int
);

CREATE TABLE `final_factors` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `total_price` int,
  `total_discount` int,
  `referral_number` int,
  `shop_id` foreign,
  `date_sold` datetime
);

CREATE TABLE `buyer_informations` (
  `national_number` int PRIMARY KEY,
  `name` varchar(255),
  `phone_number` int(11)
);

CREATE TABLE `product_informations` (
  `id` int PRIMARY KEY,
  `dimensions` varchar(255),
  `weight` float,
  `special` varchar(255),
  `features` varchar(255),
  `number_of_SIM_cards` int,
  `model` varchar(255),
  `chip` varchar(255),
  `cpu` varchar(255),
  `processor_type` varchar(255),
  `cpu_frequency` varchar(255),
  `gpu` varchar(255),
  `internal_memory` int,
  `ram` int,
  `memory_card_support` boolean,
  `resolution_display` varchar(255),
  `technology` varchar(255),
  `size` varchar(255),
  `communication_networks` varchar(255),
  `photo_resolution` float,
  `camera_capabilities` text,
  `operating_system` varchar(255),
  `sensors` text,
  `battery_specifications` text
);

ALTER TABLE `shops` ADD FOREIGN KEY (`id`) REFERENCES `company` (`shop_id`);

ALTER TABLE `mobiles` ADD FOREIGN KEY (`id`) REFERENCES `company` (`mobile_id`);

ALTER TABLE `final_factors` ADD FOREIGN KEY (`id`) REFERENCES `company` (`factor_id`);

ALTER TABLE `register` ADD FOREIGN KEY (`id`) REFERENCES `mobiles` (`register_id`);

ALTER TABLE `product_informations` ADD FOREIGN KEY (`id`) REFERENCES `mobiles` (`product_information_id`);

ALTER TABLE `mobiles` ADD FOREIGN KEY (`id`) REFERENCES `register` (`mobile_id`);

ALTER TABLE `buyer_informations` ADD FOREIGN KEY (`national_number`) REFERENCES `register` (`buyer_informations_id`);

ALTER TABLE `shops` ADD FOREIGN KEY (`id`) REFERENCES `register` (`shop_id`);

ALTER TABLE `final_factors` ADD FOREIGN KEY (`id`) REFERENCES `factor_details` (`final_factors_id`);

ALTER TABLE `mobiles` ADD FOREIGN KEY (`id`) REFERENCES `factor_details` (`mobile_id`);

ALTER TABLE `shops` ADD FOREIGN KEY (`id`) REFERENCES `final_factors` (`shop_id`);
