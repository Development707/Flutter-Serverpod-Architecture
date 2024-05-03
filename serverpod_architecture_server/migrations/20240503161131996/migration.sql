BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "address" (
    "id" serial PRIMARY KEY,
    "street" text NOT NULL
);

--
-- ACTION ALTER TABLE
--
ALTER TABLE "company" DROP COLUMN "foundedDate";
--
-- ACTION CREATE TABLE
--
CREATE TABLE "course" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "employee" (
    "id" serial PRIMARY KEY,
    "companyId" integer NOT NULL,
    "name" text NOT NULL,
    "email" text,
    "phone" text,
    "address" text,
    "isActive" boolean
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "enrollment" (
    "id" serial PRIMARY KEY,
    "studentId" integer NOT NULL,
    "courseId" integer NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "enrollment_index_idx" ON "enrollment" USING btree ("studentId", "courseId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "student" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "user" (
    "id" serial PRIMARY KEY,
    "addressId" integer NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "user_address_unique_idx" ON "user" USING btree ("addressId");

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "employee"
    ADD CONSTRAINT "employee_fk_0"
    FOREIGN KEY("companyId")
    REFERENCES "company"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "enrollment"
    ADD CONSTRAINT "enrollment_fk_0"
    FOREIGN KEY("studentId")
    REFERENCES "student"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "enrollment"
    ADD CONSTRAINT "enrollment_fk_1"
    FOREIGN KEY("courseId")
    REFERENCES "course"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "user"
    ADD CONSTRAINT "user_fk_0"
    FOREIGN KEY("addressId")
    REFERENCES "address"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR serverpod_architecture
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_architecture', '20240503161131996', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240503161131996', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
