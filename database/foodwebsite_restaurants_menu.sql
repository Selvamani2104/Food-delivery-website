-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: foodwebsite
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `restaurants_menu`
--

DROP TABLE IF EXISTS `restaurants_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurants_menu` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `admin_id` bigint DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurants_menu`
--

LOCK TABLES `restaurants_menu` WRITE;
/*!40000 ALTER TABLE `restaurants_menu` DISABLE KEYS */;
INSERT INTO `restaurants_menu` VALUES (15,4,'Snack','Fresh burst of Thai flavours and sauces in a flaky paratha, chicken strips and vegetables','0a56725d-d021-4719-936b-10d0e1449d9a_Thai Chicken roll.jpg','Thai Spicy Chicken Roll',129,'Non-Veg'),(16,4,'Snack','Double fun with double chicken strip filling, layerful parantha onions and two spicy sauce & Pepsi PET 475ml [1 unit of Double Chicken Roll, Serves 1]','f1260e1a-8f44-4fcd-a7f6-e1c3ebf61402_Double Chicken Roll & Pepsi Combo.webp','Double Chicken Roll & Pepsi Combo',229,'Non-Veg'),(17,4,'Snack','Get 18% off on Korean Chicken Roll, Classic Zinger, med fries & Pepsi','d8879f43-0742-4d0a-a3c9-b3089da3114c_Korean Tangy Roll & Zinger Chicken Meal.jpg','Korean Tangy Roll & Zinger Chicken Meal',389,'Non-Veg'),(18,4,'mainCourse','Crunchy Savings of Rs. 75 & Enjoy 2pc Hot & Crispy Chicken, 4 chicken wings , 2 dips & a chilled Pepsi Black Can.','d3b6d825-a72d-48c8-ab8d-e725ed884706_Cricket Crunch Meal.webp','Cricket Crunch Meal',449,'Non-Veg'),(19,4,'mainCourse','Save 36%. 1Chicken longer, 1Chicken roll, 2 strips, 2HC &Pepsi 475ml 1852 Kcal per serving','a1a062c1-77d5-45b9-9eae-da4be33bc7b8_Chicken Longer Burger & Roll Deluxe Combo.webp','Chicken Longer Burger & Roll Deluxe Combo',399,'Non-Veg'),(20,4,'mainCourse','1 Masala Leg, 1HC, 2Wings, 2Strips, 1 Zinger Fillet, 3Dips & 1 Pepsi. 1966 Kcal','0ea9bb5d-3b22-4e38-bfb0-460f0f9e77fe_All in One Special Bucket.jpg','All in One Special Bucket',599,'Non-Veg'),(21,4,'mainCourse','Signature burger made with a crunchy chicken fillet, veggies & a delicious mayo sauce','4b585905-22e6-44c7-82c4-0061136e1875_Classic Zinger Burger.jpg','Chicken Zinger Burger - Classic',199,'Non-Veg'),(22,4,'mainCourse','3 chicken zingers, med popcorn, med fries & 1 Pepsi 475ml 2702 Kcal per serving','79c0dd1c-15cb-4d5b-bb7a-5466e20008e6_Family Feast.webp','Family Feast',859,'Non-Veg'),(23,4,'dessert','New Soft Chocolate cake with a gooey center- perfect chocolaty end to every meal','9e76ffcc-dd8e-453d-abea-6b8c5c96fd0c_Chocolate Lava Cake.webp','Chocolate Lava Cake',109,'Veg'),(24,4,'dessert','Chocolate lovers unite! Say hello to our delicious, new, creamy chocolate & cake dessert- a must try!','62a5bd99-13fc-4261-8602-c0e3679fa22b_Choco Mud Pie.webp','Choco Mud Pie',129,'Veg'),(25,4,'Snack','Coffee, chocolate, cake?what\'s not to love? Enjoy our delicious, new dessert for those coffee-licious temptations!','27c75a27-51e6-4a97-8d55-1af1a4d2b46a_Mousse Cake (Coffee flavoured).webp','Mousse Cake (Coffee flavoured)',129,'Veg'),(26,4,'appetizer','Jazz up your meal with crispy large fries!','ef6b44b8-a911-4b34-81d8-b8c5239b59ec_FrenchFries-Large.webp','French Fries - Large',119,'Veg'),(27,4,'appetizer','Signature bite-sized boneless chicken, with special spices','5e1086b5-48ad-4b4c-8b97-23b51764d07f_Chicken Popcorn - Regular.webp','Chicken Popcorn - Regular',116,'Non-Veg'),(28,4,'appetizer','Signature Hot & crispy chicken','986dc86d-b321-4afe-89c6-c92448d6982e_Hot & Crispy Chicken-1pc.webp','Hot & Crispy Chicken-1pc',119,'Non-Veg'),(29,4,'appetizer','Spicy, red, grilled chicken','040f9e49-9688-489a-842c-69543a5b4bfb_2 pc Smoky Red Chicken.jpg','Red Hot & crispy chicken',189,'Non-Veg'),(30,4,'beverage','Cheers to fizz that makes you Rise Up Baby! Order Pepsi to make your food rise up to your level of awesome!','e6adb5c9-77f4-467d-8154-07947491069d_Pepsi PET 475ml.webp','Pepsi PET 475ml',59,'Veg'),(31,4,'beverage','Relish Coolberg Peach','8d6a77df-6366-4146-90a6-3ba2b86eb732_Coolberg Peach @ 125.jpg','Coolberg Peach @ 125',119,'Veg'),(32,4,'beverage','Classic coffee just the way you like it','6d2fcf48-be6a-4f05-a3c0-135bc1f82f7c_Cold Coffee Resuable Bottle.jpg','Cold Coffee Resuable Bottle',199,'Veg'),(33,5,'mainCourse','Molten Cheese Indulgence with Flavourful trio of juicy panner.','25076870-4d29-465b-9608-08c0128f973b_PeppyPaneer.jpg','Pepper Panner',344,'Veg'),(34,5,'mainCourse','Molten Indulgence with golden corn,black olives,Capsicum & Red Papricas','ec87e294-9750-4a38-bc89-f46e7a923d23_VeggieParadise.jpg','Veggie Paradise',344,'Veg'),(35,5,'mainCourse','Molten Cheese Indulgence with Flavourful trio 100% mozzarella Cheese.\r\n\r\n','bb904828-e4fa-4c99-beae-3c63d783885a_Margarita.jpg','Margarita',185,'Veg'),(36,5,'mainCourse','Molten Indulgence with SauageChicken with 100% Mozarella Cheese','0ea29447-1979-4dbd-b297-b9c4864eed46_FierySausageandPaprika.jpg','FierySausageandPaprika',344,'Non-Veg'),(37,5,'mainCourse','Molten Cheese Indulgence with Flavourful trio of juicy chicken peri-peri chicken.','23943003-84db-4b38-823d-faef2e606818_ChickenFiesta.jpg','ChickenFiesta',414,'Non-Veg'),(38,5,'mainCourse','Molten Cheese Indulgence with Flavourful trio of juicy chicken Paporoni.','ef075666-f710-4bb1-81c8-b8645a0547a1_PepperoniPizza.jpg','Chicken Paporoni',454,'Non-Veg'),(40,5,'Snack','Crispy Boneless thighs seasoned with flavourful chilli for a spicy kick.','7775c0b8-cd8a-4341-b85a-170d8b0b1a5e_SpicyBonelessThighsChickenFeast.jpg','SpicyBoneless Thighs',149,'Non-Veg'),(41,5,'Snack','A Rich and Creamy dip with a delicious blend of onion spices.','0cdb9843-86d4-4a12-9416-795f5e732c03_CreamAndOnionDipChickenFeast.jpg','CreamAndOnionDip',39,'Veg'),(42,5,'Snack','A Spicy and Tangy Dip with bold peri peri flavours','cf0cf9a9-e156-4bf5-9093-bee45dfb4e60_PeriPeriDip.jpg','Peri Peri Dip',39,'Veg'),(43,5,'dessert','Chocolate Lovers Delight! Indulgent,googy Molten lava Inside Chocolate cake','29456753-5707-481f-bd5e-c7d83fbcb325_Choco Lava Cake.webp','Choco Lava Cake',109,'Veg'),(44,5,'dessert','Sweet temptation!Butterscotch_mousse','7ed4d73d-ea0e-459c-890c-58fffe62cb1f_Butterscotch_mousse.webp','Butterscotch_mousse',109,'Veg'),(45,5,'dessert','A truely Indulgent experience with sweet and rich red velvet cake on a creamy cheese flavoured base','2b4165a4-578d-47e2-b083-e8ef684c5bd2_Red Velvet Lava Cake.webp','Red Velvet Lava Cake',139,'Veg'),(46,5,'beverage','Sparkling and Refreshing Beverage','18bc5915-0921-4ca8-84d7-dd8634acf074_Pepsi-475ml.jpg','Pepsi PET 475ml',60,'Veg'),(47,5,'beverage','Maximum Taste Zero Calories','bca4b3a8-79c1-41a0-aa10-6d429d054f70_PEPSIBLACKCAN.jpg','Pepsi Black Can',60,'Veg'),(48,5,'beverage','Strong and Refershing','4c2efb0f-b7a2-4b98-ad77-c36c3692ba73_MountainDew.jpg','MountainDew',60,'Veg'),(49,5,'beverage','Enjoy Oranges from nagpur with the goodness of fiber','72d2d6a8-0bee-4dce-8282-6453c4a5a970_BNNagpurOrange.jpg','BN Nagpur Orange',75,'Veg'),(50,5,'beverage','Packaged Drinking Water','a1f67bce-9dcb-4294-8427-dae5ac7d371e_Aquavess-500ml.jpg','Aquavess-500ml',40,'Veg'),(51,6,'appetizer','Spicy Indian Chicken Dry & Gravy','eb3dcf83-8946-4555-9edb-fca0853c60a8_Indian Chicken Dry & Gravy.jpg','Indian Chicken Dry & Gravy',270,'Non-Veg'),(52,6,'mainCourse','Chicken friedRice','68022d23-4073-4529-bc3a-497b4af3ca25_Chicken FriedRice.jpg','Chicken FriedRice',220,'Non-Veg'),(54,6,'mainCourse','Mixed FriedRice','d62562cb-826a-435c-bac3-d4937eea2835_Chicken FriedRice.jpg','Mixed FriedRice',260,'Non-Veg'),(55,6,'mainCourse','Panner FriedRice','f7d48029-418f-4165-b1fa-a9c4b9f79ad4_Chicken FriedRice.jpg','Panner FriedRice',200,'Veg'),(56,6,'mainCourse','Chicken Biryani (Super Pack)\r\nFor 4 To 5 Persons','960ecf50-ab92-40eb-b1eb-c87253ca1ffa_Chicken Biryani (Super Pack).jpg','Chicken Biryani (Super Pack)',1600,'Non-Veg'),(57,6,'mainCourse','Mutton Biryani(Super Pack)For 4 To 5 Persons','ff860cad-e83f-4792-9832-a1f114f277d1_Mutton Biryani(Super Pack).jpg','Mutton Biryani(Super Pack)',1900,'Non-Veg'),(58,6,'mainCourse','Chicken Schezwan Noodles','bfc627fb-c896-41fe-bb2b-0a6bc7ecbbed_Schezwan Noodles.jpg','Chicken Schezwan Noodles',220,'Non-Veg'),(59,6,'mainCourse','Schezwan Chicken Fried Rice\r\n','8bc627a1-2336-484b-8435-4a22c201bcf1_Schezwan Fried Rice.jpg','Schezwan Fried Rice',230,'Non-Veg'),(60,6,'appetizer','Indian Breads(Naan)','95d61e28-9164-4e40-b2dc-00c22d608110_Indian Breads.jpg','Indian Breads',30,'Veg'),(61,6,'appetizer','Gobi Manchurian(Veg)','a787265d-50ad-4a4e-92e8-ddfa6ca0d47e_GobiManchurian.jpg','Gobi Manchurian',210,'Veg'),(62,6,'beverage','Purified Healthy Water','24b70733-0792-4488-aceb-55c9a911fb49_Aquavess-500ml.jpg','WaterBottle',30,'Veg'),(63,6,'beverage','Tasty Goli soda','119fca42-77ed-4b88-ba34-2208dd453487_Goli Soda.jpg','Goli Soda',60,'Veg'),(64,6,'dessert','Tasty Bread-Halwa','ef61ee2f-9817-4996-9e4e-749bff8cf277_bread-halwa.jpg','Bread-Halwa',80,'Veg'),(65,7,'appetizer','Almond Crossiant filled with a almond paste.','6b3c33dd-883b-4be3-b245-ea55d7a4499d_Almond Crossiant.jpeg','Almond Crossiant',185,'Veg'),(66,7,'appetizer','Overload Brownie with Fudgy Chocolate','7534e243-78b1-4560-8f7d-225db247dbec_Overload Brownie.jpg','Overload Brownie',120,'Veg'),(67,7,'beverage','Choice of Cupcake/Dessert','9ee2d1dc-87c0-4847-8735-81d04eedc9d0_Choice of Beverage.jpeg','Cupcake/Dessert',260,'Veg'),(68,7,'dessert','Chocolate short crust pastry lined with chocolate sponge filled with chocolate truffled','1d82dd38-49c9-4e98-ae31-073101b777b9_Chocolate Rose Tart.jpeg','Chocolate Rose Tart',135,'Veg'),(69,7,'dessert','Traditional Mascarpone cream layored on a coffee flavoured vanilla cake','0079522c-45f5-4bac-a7b0-158ad13128cb_Tiramisu Jar.jpg','Tiramisu Jar',175,'Veg'),(70,7,'dessert','Banana and toffee pie with cream and banana cake croutons.','904f6d66-e843-405c-8418-ca3161bf2022_Banoffee High.jpeg','Banoffee High',150,'Veg'),(71,7,'beverage','Enjoy your Tea or Coffee in this lovely green mug that is easy to hold','7ae9d44f-4ec1-4d35-aeca-41235f85e060_Mug(Green).jpg','Mug(Green)',401,'Veg'),(72,7,'beverage','Classic Cold coffee.Refreshing and ready to drink ','7472df5a-44b0-4aa4-a432-0fab688e0d4c_Classic cold Coffee.jpeg','Classic Cold coffee',161,'Veg'),(73,7,'beverage','100% natural Valencia Orange Juice','9d9bbe9c-078e-425f-bf1a-280651d5190a_Valencia Orange Juice.jpeg','Valencia Orange Juice',161,'Veg'),(74,7,'beverage','100% natural Mango and Pinapple Juice','f48b5493-9148-4e4a-866b-c9a604502756_Mango & Pinapple Juice.jpeg','Mango and Pinapple Juice',161,'Veg'),(75,8,'dessert','A delicious 4 decker cake made with 2 layers of rich vanilla sponge cake intertwined with all-time-favourite cotton candy ice cream. Garnished with dark chocolate cigars and chocolate coated crispies. A treat for your eyes and taste buds!','787e4981-b4c1-42f5-aff8-d2f15aa68321_Cotton Candy Cake.jpg','Cotton Candy Cake',550,'Veg'),(76,8,'dessert','Smooth, creamy Dutch chocolate ice cream with Kit-Kat bits spread generously on top of a luscious chocolate sponge cake, and topped with crunchy Kit-Kat wafer biscuits and chocolate balls.','83dbc6ca-75af-40cd-b180-45786de929cd_Dutch chocolate Ice Cream Cake - made with KitKat.jpg','Dutch chocolate Ice Cream Cake - made with KitKat',660,'Veg'),(77,8,'dessert','Add\r\nThe decadence of Hershey?s Chocolate Overload ice cream meets two layers of delightfully soft?chocolate sponge cake and is beautifully done up with milk chocolate Kisses, a whipped cream swirl,?and golden edible balls. A must try!','15aec273-8d9d-4338-b416-f3f92f891146_Hersheys Kisses Cake.jpg','Hershey\'s Kisses Cake',660,'Veg'),(78,8,'dessert','A beautiful biscuit crumble base layered with delicious cheesecake ice cream. Add to it another layer of fluffy vanilla sponge cake and some more cheesecake ice cream. Adorned with exotic blueberries and whipped cream. ','4f799972-ed94-4cba-b055-2ce3cb9edfc2_Blueberry_Cheesecake.jpg','Blueberry Cheesecake',590,'Veg'),(79,8,'Snack','This ice cream roll cake is a classic combination of vanilla ice cream wrapped in chocolate sponge & covered with chocolate fudge and almonds\r\n','97eac01e-1b22-47f4-b869-a1a00d760525_Classic Fudge Roll Cake.jpg','Classic Fudge Roll Cake',711,'Veg'),(80,8,'Snack','Mississippi Mud ice cream wrapped in brownie chocolate cake & chocolate truffle, drizzled with chocolate confectionery & pecan pralines. A luxurious chocolate delight all swirled into one cake make a sinful chocolate ice cream roll cake.','87282d0d-3db9-455e-84bd-73013fc9b9a6_Mississippi Mud Roll Cake.jpg','Mississippi Mud Roll Cake',719,'Veg'),(81,8,'appetizer','Rich Chocolate sponge cake layered with smooth Belgian Bliss ice cream. Bliss.','b764bb55-03ab-411e-a3b5-bc0d99e30e77_Coco Touch anytime cake.png','Coco Touch anytime cake',339,'Veg'),(82,8,'appetizer','Red Velvet ice cream wrapped in red velvet marble cake & white chocolate truffle, drizzled with red velvet and white chocolate confectionery. This white chocolate and red velvet ice cream roll cake','32ff523d-9e17-4e66-b462-54d3cd22be4c_Red Velvet Roll Cake.jpg','Red Velvet Roll Cake',711,'Veg'),(83,8,'dessert','Crunchy. Creamy. Irresistible. Decadent Dutch Chocolate ice cream wrapped in perfectly golden brown Italian wafer crisps dipped in a rich hot fudge sauce. Sprinkled with coloured sprinkles or chopped almonds- your choice. Divine, indeed.','124374ec-6fce-4ee4-8426-abf3bf98c6fe_Italian Wafer Sandwich.jpg','Italian Wafer Sandwich',105,'Veg'),(85,8,'beverage','A thickshake created with decadent Hershey?s chocolate overload ice cream. Served with smooth whipped cream frosting,','9bf408d7-e96c-4759-84a4-6f9f65366813_Hersheys Thickshake.jpg',' Hershey\'S Chocolate Overload Thickshake',300,'Veg'),(86,8,'beverage','Crunchy Oreo cookies blended to perfection with a rich milk base and topped with more cookie crumble to create a truly Super Duper Thickshake. Yum!','6c7b3fd2-055c-455e-aa32-047843f9d368_Cookies \'N cream thickshake.jpg','Cookies \'N cream thickshake',280,'Veg'),(87,8,'beverage','Slurp away the BR signature Splish Splash ice cream thickshake. Garnished with whipped cream and coloured sprinkles. ','37555b23-795f-4653-a27d-1a2143ceba9f_Splish Splash Super-Duper Thickshake.jpg','Splish Splash Super-Duper Thickshake',250,'Veg'),(88,8,'Snack','A fusion of creamy caramalised milk and crunchy cashews, raisins, black currant and tutti fruitti. Truly a flavour mystery worth exploring any time of the day!','e29b8784-9d5a-487e-90b3-9d57d4f1e9f2_Morning Mystery.jpg','Morning Mystery',345,'Veg'),(89,8,'Snack','Perky pink, purple and childhood coloured cotton candy flavoured ice cream. ','b5baaf1f-dbc4-45ff-9a10-77263816ae88_Cotton Candy Ice cream.jpg','Cotton Candy Ice cream',321,'Veg'),(90,9,'mainCourse','Idiyappam is a healthy dish that contains carbohydrates, fiber, and minerals. It also contains vitamin E, which is good for the skin.','1454aa79-c4b0-4e8e-bd0f-5185f92452c5_Idiyappam.webp','Idiyappam',80,'Veg'),(91,9,'mainCourse','It is Traditional South Indian Breakfast.It is a Savoury cake that is popular throught India','ec9b9ec7-1948-495e-b5c1-0dbd5374bea8_idli.jpg','Idli',60,'Veg'),(92,9,'mainCourse','It is a type of pancake from fermented Batter.Its Served Hot along with Sambar and Chutney','38250e9a-9fbb-4a63-9f42-88788d80e137_dosa.jpg','Plain Dosa',140,'Veg'),(94,9,'appetizer','Parotta, also known as porotta or Kerala paratha, is a beloved layered, flaky flatbread from Southern India, typically made with maida','6d0e28c0-f3c3-43e1-82e0-9d54f2bc5653_parotta.jpg','Parotta',70,'Veg'),(95,9,'Snack','Tea Time Snack','36c4841e-4ca0-404e-bd34-a51aa79cc064_Biscuits.jpg','Biscuits',20,'Veg'),(96,9,'beverage','Evening Refreshment','645b0a7c-e62b-4d7a-81d7-512a8cfbbb91_Tea.jpg','Tea',30,'Veg'),(97,9,'Snack','Tea time tasty snack.','fd64e6fe-3ccf-4165-b0f7-1db6498a3a18_samosa.jpg','Samosa',40,'Veg'),(98,9,'beverage','The magic lies in its unique bottling method. Unlike regular soda bottles, goli soda comes in a Codd-neck bottle with a marble stopper','2e76bbb0-d25a-4b93-9f80-54fdcaf74113_Goli Soda.jpg','Goli Soda',80,'Veg'),(99,4,'mainCourse','Healthy Lunch Feast','99d4a341-4602-4a8c-9423-5f6f0d64ccf3_Rice Bowlz- Smoky Red Chicken.webp','Rice Bowlz - NonVeg',320,'Non-Veg');
/*!40000 ALTER TABLE `restaurants_menu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-10  9:47:29
