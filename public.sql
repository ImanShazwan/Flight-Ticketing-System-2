/*
Navicat PGSQL Data Transfer

Source Server         : Postgres
Source Server Version : 101200
Source Host           : localhost:5432
Source Database       : FlightTicketingSystem
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 101200
File Encoding         : 65001

Date: 2024-04-05 02:03:02
*/


-- ----------------------------
-- Table structure for Admin
-- ----------------------------
DROP TABLE IF EXISTS "public"."Admin";
CREATE TABLE "public"."Admin" (
"adminEmail" varchar(255) COLLATE "default" NOT NULL,
"adminPassword" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of Admin
-- ----------------------------
INSERT INTO "public"."Admin" VALUES ('akmal@yahoo.com', '123');
INSERT INTO "public"."Admin" VALUES ('iman@yahoo.com', '123');

-- ----------------------------
-- Table structure for Aircraft
-- ----------------------------
DROP TABLE IF EXISTS "public"."Aircraft";
CREATE TABLE "public"."Aircraft" (
"departFrom" varchar(255) COLLATE "default",
"departTo" varchar(255) COLLATE "default",
"aircraftID" int4 NOT NULL,
"flightID" varchar COLLATE "default",
"departureDateTime" date,
"arrivalDateTime" date
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of Aircraft
-- ----------------------------

-- ----------------------------
-- Table structure for Airline
-- ----------------------------
DROP TABLE IF EXISTS "public"."Airline";
CREATE TABLE "public"."Airline" (
"airlineID" varchar(255) COLLATE "default" NOT NULL,
"airlineName" varchar(255) COLLATE "default",
"airlineContact" varchar(255) COLLATE "default",
"airportID" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of Airline
-- ----------------------------

-- ----------------------------
-- Table structure for Airport
-- ----------------------------
DROP TABLE IF EXISTS "public"."Airport";
CREATE TABLE "public"."Airport" (
"airportID" varchar(255) COLLATE "default" NOT NULL,
"airportName" varchar(255) COLLATE "default",
"airportLocation" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of Airport
-- ----------------------------

-- ----------------------------
-- Table structure for Booking
-- ----------------------------
DROP TABLE IF EXISTS "public"."Booking";
CREATE TABLE "public"."Booking" (
"bookingID" varchar(255) COLLATE "default" NOT NULL,
"flightID" varchar(255) COLLATE "default",
"passengerID" varchar(255) COLLATE "default",
"paymentStatus" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of Booking
-- ----------------------------

-- ----------------------------
-- Table structure for Flight
-- ----------------------------
DROP TABLE IF EXISTS "public"."Flight";
CREATE TABLE "public"."Flight" (
"flightID" varchar(255) COLLATE "default" NOT NULL,
"flightNo" varchar(255) COLLATE "default" NOT NULL,
"destinationAirportCode" varchar(255) COLLATE "default",
"availableSeat" int4,
"airlineID" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of Flight
-- ----------------------------

-- ----------------------------
-- Table structure for Passenger
-- ----------------------------
DROP TABLE IF EXISTS "public"."Passenger";
CREATE TABLE "public"."Passenger" (
"passengerID" varchar(255) COLLATE "default" NOT NULL,
"passengerName" varchar(255) COLLATE "default",
"passengerEmail" varchar(255) COLLATE "default",
"passportNumber" varchar(200) COLLATE "default",
"passengerPassword" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of Passenger
-- ----------------------------
INSERT INTO "public"."Passenger" VALUES ('100', 'umar', 'umar@yahoo.com', '123', '123');
INSERT INTO "public"."Passenger" VALUES ('1555', 'pyromancer', 'pyro@yahoo.com', '123', '123');
INSERT INTO "public"."Passenger" VALUES ('1999-09-2333', 'qistina artini', 'qistina@yahoo.com', '1231233333', '123');
INSERT INTO "public"."Passenger" VALUES ('222', 'aiman', 'aiman@yahoo.com', '123', '123');
INSERT INTO "public"."Passenger" VALUES ('3', 'ahmad', 'ahmad@yahoo.com', '123', '123');
INSERT INTO "public"."Passenger" VALUES ('30', 'izati', 'izati@yahoo.com', '123', '123');
INSERT INTO "public"."Passenger" VALUES ('4', 'aizatt', 'aizat@yahooo.com', '123', '123');
INSERT INTO "public"."Passenger" VALUES ('40', 'tina', 'tina@yahoo.com', '123', '123');
INSERT INTO "public"."Passenger" VALUES ('400', 'poly', 'poly@yahoo.com', '123', '123');
INSERT INTO "public"."Passenger" VALUES ('5', 'herman', 'herman@yahoo.com', '123', '123');
INSERT INTO "public"."Passenger" VALUES ('6', 'raihan', 'raihan@yahoo.com', '123', '123');
INSERT INTO "public"."Passenger" VALUES ('970505-05-0505', 'gina', 'ginaa@yahoo.com', '123', '123');
INSERT INTO "public"."Passenger" VALUES ('970909-09-0000', 'yes', 'yes@yahoo.com', '123', '123');
INSERT INTO "public"."Passenger" VALUES ('980505-11-1122', 'bob', 'bob@yahoo.com', '123456', '123');
INSERT INTO "public"."Passenger" VALUES ('980703-12-2233', 'mok', 'mok@yahoo.com', '123', '123');
INSERT INTO "public"."Passenger" VALUES ('990101-30-5555', 'gina', 'gina@yahoo.com', '123', '123');

-- ----------------------------
-- Table structure for Payment
-- ----------------------------
DROP TABLE IF EXISTS "public"."Payment";
CREATE TABLE "public"."Payment" (
"paymentID" varchar(255) COLLATE "default" NOT NULL,
"bookingID" varchar(255) COLLATE "default",
"paymentMethod" varchar(255) COLLATE "default",
"amount" numeric(255),
"transactionDateTime" date
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of Payment
-- ----------------------------

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Admin
-- ----------------------------
ALTER TABLE "public"."Admin" ADD PRIMARY KEY ("adminEmail");

-- ----------------------------
-- Primary Key structure for table Aircraft
-- ----------------------------
ALTER TABLE "public"."Aircraft" ADD PRIMARY KEY ("aircraftID");

-- ----------------------------
-- Primary Key structure for table Airline
-- ----------------------------
ALTER TABLE "public"."Airline" ADD PRIMARY KEY ("airlineID");

-- ----------------------------
-- Primary Key structure for table Airport
-- ----------------------------
ALTER TABLE "public"."Airport" ADD PRIMARY KEY ("airportID");

-- ----------------------------
-- Primary Key structure for table Booking
-- ----------------------------
ALTER TABLE "public"."Booking" ADD PRIMARY KEY ("bookingID");

-- ----------------------------
-- Primary Key structure for table Flight
-- ----------------------------
ALTER TABLE "public"."Flight" ADD PRIMARY KEY ("flightID");

-- ----------------------------
-- Primary Key structure for table Passenger
-- ----------------------------
ALTER TABLE "public"."Passenger" ADD PRIMARY KEY ("passengerID");

-- ----------------------------
-- Primary Key structure for table Payment
-- ----------------------------
ALTER TABLE "public"."Payment" ADD PRIMARY KEY ("paymentID");

-- ----------------------------
-- Foreign Key structure for table "public"."Aircraft"
-- ----------------------------
ALTER TABLE "public"."Aircraft" ADD FOREIGN KEY ("flightID") REFERENCES "public"."Flight" ("flightID") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."Airline"
-- ----------------------------
ALTER TABLE "public"."Airline" ADD FOREIGN KEY ("airportID") REFERENCES "public"."Airport" ("airportID") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."Booking"
-- ----------------------------
ALTER TABLE "public"."Booking" ADD FOREIGN KEY ("passengerID") REFERENCES "public"."Passenger" ("passengerID") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."Flight"
-- ----------------------------
ALTER TABLE "public"."Flight" ADD FOREIGN KEY ("airlineID") REFERENCES "public"."Airline" ("airlineID") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Flight" ADD FOREIGN KEY ("flightID") REFERENCES "public"."Booking" ("bookingID") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."Payment"
-- ----------------------------
ALTER TABLE "public"."Payment" ADD FOREIGN KEY ("bookingID") REFERENCES "public"."Booking" ("bookingID") ON DELETE CASCADE ON UPDATE CASCADE;
